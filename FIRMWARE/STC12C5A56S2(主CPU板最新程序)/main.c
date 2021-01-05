#include "STC12C5A56S2.H"    //单片机头文件
#include "PCF8563.H"         //时钟芯片头文件
#include "communications.h"  //通讯头文件
#include "AT24C512.H"        //存储芯片头文件

unsigned char P_COUNT = 0; //PCF8563中断的次数,控制工作流程
unsigned char debug = 0;   //停机命令状态标志位

unsigned char request = 0; //应答模式：判断采集板是否收到采集指令
unsigned char buffer_lock = 0;// 722数据通道资源空闲

unsigned char media = 0; //计算温度中间变量值
float tem = 0.0;         //计算温度中间变量值

unsigned char PC_CONNECT = 0;   //PC机与上位机连接标记
unsigned char CONNECT_Flag = 0; //上位机打开标志位
unsigned char Send_Enable = 0;  //主CPU接收到从CPU的数据,允许直接上传标志位
unsigned char Memory_Flag = 0;  //存储芯片中是否有数据标志位
unsigned char Clear_Flag = 0;   //清除存储芯片数据标志位
unsigned char Count = 0;        //用于计数
unsigned char Open_Flag = 0;    //门打开标志位

unsigned char xdata DATA_COM[362] = {0x00}; //接收到的数据缓冲区
unsigned int  DATA_COUNT = 0;               //一次采样的总数据数字
//unsigned char xdata DATA_BUF[362] = {0x00}; //从EEPORM中读取的数据存放在此处

unsigned int connect_delay = 0;

long new_address1; //存储器地址
long new_address2; //存储器地址
long old_address1; //存储器地址
long old_address2; //存储器地址


/*********************************************************/
/*函数名:Set_None()                                      */
/*函数功能:数组清空                                      */
/*入口参数:数组名                                        */
/*返回值:无                                              */
/*********************************************************/
/*void Set_None(unsigned char *p)
{
  unsigned int i = 0;
  while(p[i] != 0x00)
  {
    p[i] = 0x00;
    i++;
  }
}*/


/*********************************************************/
/*函数:main()                                            */
/*功能:主函数                                            */
/*入口参数:无                                            */
/*返回值:无                                              */
/*********************************************************/
void main(void)
{
    EA = 0; //关闭总中断

    WD_IN ^= 1; //喂狗

    //P4SW = 0x70; //将P4口的引脚设定为I/O口,注意P4=0x0不要写,否则串口2不通

    DIR_485 = 0;  //接收模式

    WORK_LED = 1; //工作指示灯灭
    ERR_LED  = 1; //故障指示灯灭
    SPEAKER  = 1; //蜂鸣器停止工作
    buffer_lock = 0;

    COM1_initial(); //串口1初始化
    COM2_initial(); //串口2初始化

    COM1_send_char(0x88); //通知上位机,下位机已打开

    GET_ADDRESS();  //获取存储芯片地址

    if(old_address1 % 362 == 0 && old_address2 % 362 == 0 && old_address1 - old_address2 != 362) //修正地址
    {
        if(old_address2 >= old_address1)
            old_address2 = old_address1 - 362;
        else
            old_address1 = old_address2 + 362;
    }

    if(new_address1 % 362 == 0 && new_address2 % 362 == 0 && new_address1 - new_address2 != 362) //修正地址
    {
        if(new_address2 >= new_address1)
            new_address2 = new_address1 - 362;
        else
            new_address1 = new_address2 + 362;
    }

    if(old_address1 % 362 != 0 && old_address2 % 362 == 0) //修正地址 || old_address1 < old_address2 || old_address1 < new_address1
        old_address1 = old_address2 + 362;

    if(old_address1 % 362 == 0 && old_address2 % 362 != 0) //修正地址 || old_address1 < old_address2 || old_address2 < new_address2
        old_address2 = old_address1 - 362;

    if(new_address1 % 362 != 0 && new_address2 % 362 == 0) //修正地址 || new_address1 < new_address2 || old_address1 < new_address1
        new_address1 = new_address2 + 362;

    if(new_address1 % 362 == 0 && new_address2 % 362 != 0) //修正地址 || new_address1 < new_address2 || old_address2 < new_address2
        new_address2 = new_address1 - 362;

    if((old_address1 % 362 != 0 && old_address2 % 362 != 0) || (new_address1 % 362 != 0 && new_address2 % 362 != 0)) //修正地址
    {
        ADDRESS_First_Init();  //地址初始化
        ADDRESS_Second_Init(); //地址初始化
    }

    S10_START_8563(30);   //改为以秒单位

    WORK_LED = 0; //工作指示灯亮

    EX1 = 1; //开外部中断1,接了PCF8563
    EA = 1;  //开放所以中断

    while(1) //循环
    {
        WD_IN ^= 1; //喂狗

        if(DOOR == 1 && Open_Flag == 0) //门打开,此时停机状态
        {
            COM1_send_char(0xfa);
            Open_Flag = 1;
            stop_sys();
        }
        //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        if(DOOR == 0 && Open_Flag == 1 && debug == 0 )
        {
            COM1_send_char(0x88); //通知上位机,下位机已打开
            Open_Flag = 0;
            if( buffer_lock > 1 )
                buffer_lock -= 2;
            P_COUNT = 0;
            start_sys();
        }

        if(CONNECT_Flag == 1)   //上位机打开标志位
        {
            CONNECT_Flag = 0;     //标志位复位
            if(DOOR == 0)
                COM1_send_char(0x88); //通知上位机,下位机已打开
            else
                COM1_send_char(0xfa);
        }

        if(Clear_Flag == 1)        //清空数据,改写地址
        {
            Clear_Flag = 0;          //标志位复位
            AT512_Write_Zero(0, 362); //清空数据
            ADDRESS_First_Init();    //地址初始化
            ADDRESS_Second_Init();   //地址初始化
            COM1_send_char(0x85);    //通知上位机,已清空完数据
        }

        if(new_address1 == old_address1) //判断存储芯片中是否有数据
        {
            Memory_Flag = 0;         //标志位复位
            if(old_address1 != 362)
            {
                ADDRESS_First_Init();  //地址初始化
                ADDRESS_Second_Init(); //地址初始化
            }
        }
        else
        {
            Memory_Flag = 1; //存储芯片中有测量数据
        }

        if((buffer_lock == 0) && (PC_CONNECT == 1) && (Memory_Flag == 0) && (Send_Enable == 0)) // 数据传输完之后，清空状态位
        {
            PC_CONNECT = 0;
        }

        if((buffer_lock == 0) && (PC_CONNECT == 1) && (Memory_Flag == 1) && (Send_Enable == 0)) //上位机打开,存储芯片中有数据,而主CPU没有接收到从CPU中数据,这时上传存储芯片数据
        {
            ++buffer_lock;
            PC_CONNECT = 0;  //标志位复位
            Memory_Flag = 0; //标志位复位
            AT512_Read(DATA_COM, new_address1, 362); //读存储芯片中数据
            COM1_send_char(0xf9);
            COM1_send_string(DATA_COM, 362);       //向上位机中上传数据
            AT512_Write_Zero(new_address1, 362);
            new_address1 += 362; //地址计算
            SAVE_ADDRESS(2);     //保存地址
            new_address2 += 362; //地址计算
            SAVE_ADDRESS(4);     //保存地址
            --buffer_lock;//释放锁
        }

        if((buffer_lock == 0) && (PC_CONNECT == 1) && (Memory_Flag == 1) && (Send_Enable == 1) && old_address1 != 262088) //上位机打开,存储芯片中有数据,而主CPU接收到从CPU中数据,这时保存数据
        {
            ++buffer_lock; //锁
            Memory_Flag = 0; //标志位复位
            Send_Enable = 0; //标志位复位
            AT512_Write(DATA_COM, old_address1, 362);
            old_address1 += 362; //地址计算
            SAVE_ADDRESS(1);     //保存地址
            old_address2 += 362; //地址计算
            SAVE_ADDRESS(3);     //保存地址
            --buffer_lock; //释放锁
        }

        if((buffer_lock == 0) && (PC_CONNECT == 1) && (Memory_Flag == 0) && (Send_Enable == 1)) //上位机打开,存储芯片中没有数据,直接上传数据
        {
            ++buffer_lock; //锁
            PC_CONNECT = 0;  //标志位复位
            Send_Enable = 0; //标志位复位
            COM1_send_char(0xf9);
            COM1_send_string(DATA_COM, 362);
            --buffer_lock; //释放锁
        }

        if((buffer_lock == 0) && (PC_CONNECT == 0) && (Send_Enable == 1)) //在上位机没打开,而主CPU接收到数据的时候保存到EEPORM中
        {
            if(connect_delay < 50000)
            {
                ++connect_delay;
            }
            else
            {
                ++buffer_lock; //锁
                Send_Enable = 0; //标志位复位
                AT512_Write(DATA_COM, old_address1, 362);
                old_address1 += 362; //地址计算
                SAVE_ADDRESS(1);     //保存地址
                old_address2 += 362; //地址计算
                SAVE_ADDRESS(3);     //保存地址
                --buffer_lock; //释放锁
            }
        }
    }
}



/*********************************************************/
/*函数:PCF8563_Interrupt_Receive()                       */
/*功能:PCF8563定时中断                                   */
/*入口参数:无                                            */
/*返回值:无                                              */
/*********************************************************/
void PCF8563_Interrupt_Receive(void) interrupt 2
{
    EA = 0;

    EX1 = 0;

    WD_IN ^= 1; //喂狗

    switch(P_COUNT)
    {
    case 0:	 //温度
    {
        if(buffer_lock < 2)
        {
            buffer_lock += 2;
            S10_START_8563(1);
            break;
        }

        if( buffer_lock != 2 )
        {
            S10_START_8563(1);
            break;
        }

        ERR_LED = 1;
        //SPEAKER = 1;
        WORK_LED = 1;

        media = P2;

        DATA_COUNT = 0;

        if(media >= 0 && media <= 250)
        {
            tem = (media + 200.0) / 10.0;
            DATA_COM[DATA_COUNT] = (unsigned char)(tem / 16);
            media = DATA_COM[DATA_COUNT];
            DATA_COUNT++;
            DATA_COM[DATA_COUNT] = (unsigned char)((tem - media * 16) * 16);
            DATA_COUNT++;
        }
        else if(media == 251) //电机故障
        {
            DATA_COM[DATA_COUNT] = DATA_COM[0];		//传上一次读的温度值
            DATA_COUNT++;
            DATA_COM[DATA_COUNT] = DATA_COM[1];
            DATA_COUNT++;
            COM1_send_char(0xfb);
        }
        else if(media == 252)	//温度控制故障
        {
            DATA_COM[0] = 0x00;
            DATA_COM[1] = 0x00;
            DATA_COUNT = 2;
            COM1_send_char(0xfc);
        }
        else if(media == 253) //温度传感器故障
        {
            DATA_COM[0] = 0x00;
            DATA_COM[1] = 0x00;
            DATA_COUNT = 2;
            COM1_send_char(0xfd);
        }
        else //错误数据
        {
            DATA_COM[DATA_COUNT] = DATA_COM[0];		//传上一次温度值
            DATA_COUNT++;
            DATA_COM[DATA_COUNT] = DATA_COM[1];
            DATA_COUNT++;
        }

        request = 1; // request 赋值为1,为应答

        Count = 0;
        P_COUNT++;
        S10_START_8563(2); //改为以秒单位
        break;
    }

    case 1:	  //判温度数据正常
    {
        if(DATA_COUNT == 2)
        {
            ERR_LED = 1;
            //SPEAKER = 1;
            WORK_LED = 0;

            //COM2_send_char(0xc1); //发送开始转换命令,201(0xc9)
            if (request == 0)
            {
                P_COUNT++;
                S10_START_8563(20); //改为以秒单位
            }

            if(request == 1)
            {
                if(Count < 20)
                {
                    Count++;
                }
                else //RS485网络故障
                {
                    COM1_send_char(0xfe);
                }
                COM2_send_char(0xc1);
                S10_START_8563(1);
            }

            if(request == 2)
            {
                if(Count < 20)
                {
                    Count++;
                }
                else //RS485网络故障
                {
                    COM1_send_char(0xfe);
                }
                COM2_send_char(0xc2);
                S10_START_8563(1);
            }

            if(request == 3)
            {
                if(Count < 20)
                {
                    Count++;
                }
                else //RS485网络故障
                {
                    COM1_send_char(0xfe);
                }
                COM2_send_char(0xc3);
                S10_START_8563(1);
            }
        }
        else
        {
            ERR_LED = 0;
            //SPEAKER = 1;
            WORK_LED = 1;
            DATA_COUNT = 0;
            P_COUNT = 0;
            buffer_lock -= 2;
            S10_START_8563(1);
        }
        break;
    }

    case 2:
    {
        ERR_LED = 1;
        //SPEAKER = 1;
        WORK_LED = 0;
        COM2_send_char(0xca); //发送查询第一个板子的数据命令,202(0xca)

        P_COUNT++;
        S10_START_8563(4);//改为以秒单位
        break;
    }

    case 3:
    {
        if(DATA_COUNT == 122)
        {
            ERR_LED = 1;
            //SPEAKER = 1;
            WORK_LED = 0;
            COM2_send_char(0xcb); //

            P_COUNT++;
            S10_START_8563(4); //改为以秒单位
        }
        else
        {
            ERR_LED = 0;
            //SPEAKER = 1;
            WORK_LED = 1;
            DATA_COUNT = 2;
            P_COUNT = 2;
            if(Count < 20)
            {
                Count++;
            }
            else //RS485网络故障
            {
                COM1_send_char(0xfe);
            }
            S10_START_8563(2);
        }
        break;
    }

    case 4:
    {
        if(DATA_COUNT == 242)
        {
            ERR_LED = 1;
            //SPEAKER = 1;
            WORK_LED = 0;
            COM2_send_char(0xcc); //发送查询第三个板子的数据命令,0xcc = 204

            P_COUNT++;
            S10_START_8563(4); //改为以秒单位
        }
        else
        {
            ERR_LED = 0;
            //SPEAKER = 1;
            WORK_LED = 1;
            DATA_COUNT = 122;
            P_COUNT = 3;
            if(Count < 20)
            {
                Count++;
            }
            else //RS485网络故障
            {
                COM1_send_char(0xfe);
            }
            S10_START_8563(2);
        }
        break;
    }

    case 5:
    {
        if(DATA_COUNT == 362)
        {
            ERR_LED = 1;
            //SPEAKER = 1;
            WORK_LED = 1;

            buffer_lock -= 2;
            P_COUNT = 0;
            Send_Enable = 1;

            // 发送88,等待上位机应答信号
            PC_CONNECT = 0;
            COM1_send_char(0x88);
            connect_delay = 0;

            P0 = 0x94; //发送电机转动命令
            delay(5000);
            P0 = 0xff;

            START_8563(); //改为以5分钟单位
        }
        else
        {
            ERR_LED  = 0;
            //SPEAKER  = 1;
            WORK_LED = 1;
            DATA_COUNT = 242;
            P_COUNT = 4;
            if(Count < 20)
            {
                Count++;
            }
            else //RS485网络故障
            {
                COM1_send_char(0xfe);
            }
            S10_START_8563(2);
        }
        break;
    }

    default:
        break;
    }

    EX1 = 1;
    EA = 1;
}


/*********************************************************/
/*函数:COM1_Interrupt_Receive()                          */
/*功能:串口1中断                                         */
/*入口参数:无                                            */
/*返回值:无                                              */
/*********************************************************/
void COM1_Interrupt_Receive(void) interrupt 4
{
    unsigned char k = 0xff;

    EA = 0;

    //ES = 0;

    WD_IN ^= 1; //喂狗

    if(RI == 1)
    {
        RI = 0;

        k = SBUF;

        if(k >= 0x01 && k <= 0x3c) //发送点灯命令
        {
            COM2_send_char(k);
            delay(5);
            COM2_send_char(k);
            k = 0xff;
        }

        else if(k >= 0x3d && k <= 0x78 && debug == 1) //在停机状态下发送校准命令
        {
            COM2_send_char(k);
            COM1_send_char(0xf9);
            ES = 0;
            delay(60000);	  //增加的延时
            delay(60000);
            //k = S2BUF;
            delay(60000);
            ES = 1;
            k = 0xff;
        }

        else if(k == 0x80) //发送灭灯命令
        {
            COM2_send_char(k);
            delay(5);
            COM2_send_char(k);
            k = 0xff;
        }

        else if(k == 0x82) //停机命令
        {
            stop_sys();
            debug = 1;
            k = 0xff;
        }
        //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
        else if(k == 0x83 ) //上位机只要发送运行命令
        {
            if (DOOR == 0) start_sys();

            if( buffer_lock > 1 )
                buffer_lock -= 2;
            debug = 0;
            P_COUNT = 0;
            k = 0xff;
        }
        else if(k == 0x8B ) //上位机发送喇叭报警命令,139(0x8B);下位机延时报警,2011-09-22修改
        {
            SPEAKER = 0;	//开始报警
            //delay(50000);
            //delay(50000);
            //SPEAKER=1;	//蜂鸣器停止工作
            //delay(50000);
            //SPEAKER=0;    //响二声
            //delay(50000);
            //delay(50000);
            //SPEAKER=1;	//蜂鸣器停止工作
            //delay(50000);
            //SPEAKER=0;	//响三声
            //delay(50000);
            //delay(50000);
            //SPEAKER=1;	//蜂鸣器停止工作

            k = 0xff;
        }

        else if(k == 0x8A ) //上位机发送喇叭报警命令
        {
            SPEAKER = 1;	//停止报警
            //delay(50000);
            //delay(50000);
            //SPEAKER=1;	//蜂鸣器停止工作
            //delay(50000);
            //SPEAKER=0;    //响二声
            //delay(50000);
            //delay(50000);
            //SPEAKER=1;	//蜂鸣器停止工作
            //delay(50000);
            //SPEAKER=0;	//响三声
            //delay(50000);
            //delay(50000);
            //SPEAKER=1;	//蜂鸣器停止工作

            k = 0xff;
        }

        else if(k == 0x84) //传送数据命令
        {
            PC_CONNECT = 1;
            k = 0xff;
        }

        else if(k == 0x85) //清空存储器数据,133(0x85)
        {
            Clear_Flag = 1;  //清空数据
            k = 0xff;
        }

        else if(k == 0x88)  //通知下位机,上位机已打开
        {
            CONNECT_Flag = 1; //上位机打开标志位
            k = 0xff;
        }

        else if(k >= 0x96 && k <= 0xfa) //发送设置温度命令150(0x96)-250(0xfa)
        {
            P0 = k;
            k = 0xff;
        }
    }

    else
    {
        TI  =  0;
    }

    //ES = 1;
    EA = 1;
}


/*********************************************************/
/*函数:COM2_Interrupt_Receive()                          */
/*功能:串口2中断                                         */
/*入口参数:无                                            */
/*返回值:无                                              */
/*********************************************************/
void COM2_Interrupt_Receive(void) interrupt 8
{
    unsigned char k = 0xff;


    EA = 0;

    WD_IN ^= 1; //喂狗

    if(S2CON & 0x01)
    {
        S2CON = S2CON & 0xFE; //1111,1110清除S2RI

        k = S2BUF;

        if(request == 0)
        {
            if(debug == 0)
            {
                DATA_COM[DATA_COUNT] = k;
                DATA_COUNT++;
            }
            else
            {
                COM1_send_char(k);
                k = 0xff;
            }
        }
        else if(request == 1)
        {
            if(k == 0xc1)
            {
                Count = 0;
                ++request;
            }
            k = 0xff;
        }
        else if(request == 2)
        {
            if(k == 0xc2)
            {
                Count = 0;
                ++request;
            }
            k = 0xff;
        }
        else if(request == 3)
        {
            if(k == 0xc3)
            {
                Count = 0;
                request = 0;
            }
            k = 0xff;
        }
    }

    else
    {
        //TI = 0;
        S2CON = S2CON & 0xFD; //1111,1101清除S2TI
    }
    EA = 1;
}
//***************************************************************************//