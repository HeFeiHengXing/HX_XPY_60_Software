//*********************************************************************
//*********************************************************************
#include <ds18b20.h>
#include "INTRINS.H"

volatile uint8 temper_data_int = 0x00;		//温度整数部分
volatile float temper_data_fla = 0x00;		//温度小数部分

/**************************************
延时X*10微秒(STC90C52RC@12M)
不同的工作环境,需要调整此函数
当改用1T的MCU时,请调整此延时函数
**************************************/
void DelayX0us(uchar n)
{
    while (n--)
    {
        _nop_();
        _nop_();
    }
}

/**************************************
复位DS18B20,并检测设备是否存在
**************************************/
uchar DS18B20_Reset(void)
{
    uchar err = 0;
    uchar res = 1;
    while (res)
    {
        DQ = 0;                     //送出低电平复位信号
        DelayX0us(48);              
        DQ = 1;                     //释放数据线
        DelayX0us(6);               
        res = DQ;                    //检测存在脉冲
        DelayX0us(42);             
        err++;
        if(err == 5)
        return 0;
    }
    return 1;
}

/**************************************
从DS18B20读1字节数据
**************************************/
uchar DS18B20_ReadByte()
{
    uchar i;
    uchar dat = 0;

    for (i=0; i<8; i++)             //8位计数器
    {
        dat >>= 1;
        DQ = 0;                     //开始时间片
        _nop_();                    
        _nop_();
        DQ = 1;                     //准备接收
        _nop_();                    
        _nop_();
        if (DQ) dat |= 0x80;       
        DelayX0us(6);               
    }

    return dat;
}

/**************************************
向DS18B20写1字节数据
**************************************/
void DS18B20_WriteByte(uchar dat)
{
    char i;

    for (i=0; i<8; i++)             //8位计数器
    {
        DQ = 0;                     //开始时间片
        _nop_();                   
        _nop_();
        dat >>= 1;                  //送出数据
        DQ = CY;
        DelayX0us(6);              
        DQ = 1;                     //恢复数据线
    }
}
/******************************************************************************
* 函 数 名: Get_temper(void)
* 函数功能: 读温度数据
* 入口参数: 无
* 返    回: 无
*******************************************************************************/

uchar Get_temper(void)
{
	uint8 temp,temp1;

    if(DS18B20_Reset() == 0)        //设备复位
        return 0;
    DS18B20_WriteByte(0xCC);        //跳过ROM命令
    DS18B20_WriteByte(0x44);        //开始转换命令
    while (!DQ);                   

    if(DS18B20_Reset() == 0)        //设备复位
        return 0;
    DS18B20_WriteByte(0xCC);        //跳过ROM命令
    DS18B20_WriteByte(0xBE);        //读暂存存储器命令
    temp = DS18B20_ReadByte();       
    temp1 = DS18B20_ReadByte();      

	temper_data_fla = temp&0x0f;                //取小数部分存temper_data_fla

	temp >>= 4;                                 //取低字节的高半字节
	temp1 <<= 4;                                //取高字节的低半字节
	temper_data_int = temp1|temp;            
	temper_data_fla = temper_data_fla/16;   //*100//取小数部分存temp1
    return 1;
}

