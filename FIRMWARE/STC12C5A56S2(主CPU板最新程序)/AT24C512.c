#include "STC12C5A56S2.H" //单片机头文件
#include "at24c512.h"     //存储芯片头文件

sbit SCL_512 = P1^3; //串行时钟线             
sbit SDA_512 = P1^4; //串行数据线

unsigned char code write[4] = {0xa0,0xa2,0xa4,0xa6}; //24C512写地址
unsigned char code read[4] = {0xa1,0xa3,0xa5,0xa7};  //24C512读地址
unsigned char select = 0; //24C512片选


extern long new_address1; //存储器地址
extern long new_address2; //存储器地址 
extern long old_address1; //存储器地址
extern long old_address2; //存储器地址

unsigned char Addr_Save[4]; 


/*********************************************************/
/*函数:delay()                                           */
/*功能:延时,模拟I2C总线专用                              */
/*入口参数:延时参数                                      */
/*返回值:无                                              */
/*********************************************************/
void delay(unsigned int loop)
{
  unsigned int i;
  for(i=0;i<loop;i++)
  {
    WD_IN ^= 1; //喂狗
    { ; }
  }
}


/*********************************************************/
/*函数名:AT512_Start()                                   */
/*函数功能:起始条件                                      */
/*入口参数:无                                            */
/*返回值:无                                              */
/*********************************************************/
void AT512_Start(void)
{
  EA= 0;

  SCL_512 = 0; // 清时钟线
  delay(20);

  SDA_512 = 1; // 数据线置高
  delay(20);

  SCL_512 = 1; // 时钟线置高
  delay(20);

  SDA_512 = 0; // 数据线置低,此时产生起始信号
  delay(20);
  
  SCL_512 = 0; // 清时钟线
  delay(20);
}


/*********************************************************/
/*函数:AT512_Stop()                                      */
/*功能:产生I2C总线的停止状态                             */
/*入口参数:无                                            */
/*返回值:无                                              */
/*说明:
  SCL处于高电平期间,当SDA出现上升沿时停止I2C总线
  不论SDA和SCL处于什么电平状态,本函数总能正确产生停止状态
  本函数执行后,I2C总线处于空闲状态                       */
/*********************************************************/
void AT512_Stop(void)
{
  SDA_512 = 0; // 数据线置低
  delay(20);
  
  SCL_512 = 1; // 时钟线置高
  delay(20);
 
  SDA_512 = 1; // 数据线置高
  delay(20);
  
  SCL_512 = 0; // 清时钟线
  delay(20);

  EA= 1;
} 


/*********************************************************/
/*函数:AT512_Ack()                                       */
/*功能:主机发送应答信号:
       a=0:主机产生应答位 
       a=1:主机产生非应答位                              */
/*入口参数:见上                                          */
/*返回值:无                                              */
/*********************************************************/
/*void AT512_Ack(unsigned char a)
{
  if(a == 0) //在此发出应答或非应答信号
    SDA_512 = 0;
  else 
    SDA_512 = 1;
  delay(40);

  SCL_512 = 1; //时钟线置高        
  delay(40);

  SCL_512=0; //SCL_512为低电平,SDA_512才允许改变
}*/


/*********************************************************/
/*函数:GetAck()                                          */
/*功能:主机产生应答位                                    */
/*入口参数:无                                            */
/*返回值:无                                              */
/*********************************************************/
void GetAck(void)
{
  SDA_512 = 1;
  delay(20);

  SCL_512 = 1; //时钟线置高        
  delay(20);

  SCL_512=0; //SCL_512为低电平,SDA_512才允许改变
}


/*********************************************************/
/*函数:SendAck()                                         */
/*功能:主机产生非应答位                                  */
/*入口参数:无                                            */
/*返回值:无                                              */
/*********************************************************/
void SendAck(void)
{
  SDA_512 = 0;
  delay(20);

  SCL_512 = 1; //时钟线置高        
  delay(20);

  //SDA_512 = 0;
  //delay(20);

  SCL_512=0; //SCL_512为低电平,SDA_512才允许改变
}


/*********************************************************/ 
/*函数名:AT512_Send_Byte()                               */
/*函数功能:发送数据                                      */
/*入口参数:Data                                          */    
/*返回值:无                                              */
/*********************************************************/
void AT512_Send_Byte(unsigned char Data)
{
  unsigned char BitCounter = 8; //位数控制
  unsigned char temp = Data; //中间变量,接收Data
  do
  {
    WD_IN ^= 1; //喂狗
	if((temp & 0x80) == 0x80) //如果最高位是1,发送高电平
      SDA_512 = 1;
    else
      SDA_512 = 0;      
    delay(20);  
 
    SCL_512 = 1;
    delay(20); 

    SCL_512 = 0;

    temp = temp<<1; //RLC数据移位发送下一位
    BitCounter--;
  }while(BitCounter);
  delay(20);
}


/*********************************************************/
/*函数:AT512_Rev_Byte()                                  */
/*功能:从I2c总线接收1个字节的数据/命令                   */
/*入口参数:无                                            */
/*返回值:data                                            */
/*********************************************************/
unsigned char AT512_Rev_Byte(void)
{
  unsigned char temp = 0x00; //存放所读字节内容
  unsigned char BitCounter;
  for(BitCounter = 0;BitCounter < 8;BitCounter++)
  {
    WD_IN ^= 1; //喂狗
    SDA_512 = 1; //在读取数据之前要把SDA拉高
    delay(20);

    SCL_512 = 1;
    delay(20);
   
    temp = temp<<1;

    if(SDA_512) //如果SDA=1
      temp = temp + 1; //temp的最低位置1
    delay(20);

    SCL_512 = 0;
    delay(20);
  }
  return(temp);   
}



/*********************************************************/ 
/*函数名:Write()                                         */
/*函数功能:写num个字节的数据                             */
/*入口参数:Data:待写入数据,addr:偏移地址,num:写入数据个数*/    
/*返回值:无                                              */
/*********************************************************/
void Write(unsigned char *Data,unsigned int addr,unsigned char num)
{		
  unsigned char addrl,addrh,i;
  addrl = addr;
  addrh = addr>>8;
	  
  AT512_Start();
  delay(20);
  AT512_Send_Byte(write[select]); //发送从器件地址		   
  GetAck();
  AT512_Send_Byte(addrh); 
  GetAck();
  AT512_Send_Byte(addrl); 
  GetAck();
  for(i=0;i<num;i++)
  {
    WD_IN ^= 1; //喂狗
    AT512_Send_Byte(*(Data+i));
    GetAck(); 
  }
  AT512_Stop();
  delay(20000);	
}


/*********************************************************/ 
/*函数名:Write_Zero()                                    */
/*函数功能:num个字节的数据清空                           */
/*入口参数:addr:偏移地址,num:写入数据个数                */    
/*返回值:无                                              */
/*********************************************************/
void Write_Zero(unsigned int addr,unsigned char num)
{		
  unsigned char addrl,addrh,i;
  addrl = addr;
  addrh = addr>>8;
	  
  AT512_Start();
  delay(20);
  AT512_Send_Byte(write[select]); //发送从器件地址		   
  GetAck();
  AT512_Send_Byte(addrh); 
  GetAck();
  AT512_Send_Byte(addrl); 
  GetAck();
  for(i=0;i<num;i++)
  {
    WD_IN ^= 1; //喂狗
    AT512_Send_Byte(0x00);
    GetAck(); 
  }
  AT512_Stop();
  delay(20000);	
}


/*********************************************************/ 
/*函数名:A12_Write()                                     */
/*函数功能:往存储器指定地址写数据                        */
/*入口参数:Data:待写入数据,addr:偏移地址,num:写入数据个数*/    
/*返回值:无                                              */
/*********************************************************/
void A12_Write(unsigned char *Data,unsigned int addr,unsigned int num)
{    
  unsigned char i,n;
  unsigned int m,den;

  den = addr%128; //地址不是128的倍数时要计算,第一次写多少数据
  den = 128-den;  //den为第一次要写的数据个数
  if(num > den)   //判断一次能否将num个数据写完
  {        
    Write(Data,addr,den); //先写den个数据
    num = num-den;        //写den个数据后还有num个数据要写
    addr = addr+den;      //写den个数据后地址变化
    Data = Data+den;      //写den个数据后数组地址变化
    
    m = num/128;  //m为要写的次数(一次写128个数据)
    n = num%128;  //n为剩下要写的数据个数
    for(i=0;i<m;i++)
    {    
      WD_IN ^= 1; //喂狗     
      Write(Data,addr,128); 
      addr = addr+128;	
      Data = Data+128;
    }
    Write(Data,addr,n);     //写最后n个字节
  }
  else
    Write(Data,addr,num);     
}


/*********************************************************/ 
/*函数名:A2_Write_Zero()                                 */
/*函数功能:将存储器指定地址清空                          */
/*入口参数:addr:偏移地址,num:清空数据个数                */    
/*返回值:无                                              */
/*********************************************************/
void A12_Write_Zero(unsigned int addr,unsigned int num)
{    
  unsigned char n,den;
  unsigned int m,i;

  den = addr%128; //地址不是128的倍数时要计算,第一次写多少数据
  den = 128-den;  //den为第一次要写的数据个数
  if(num > den)   //判断一次能否将num个数据写完
  {        
    Write_Zero(addr,den); //先写den个数据
    num = num-den;        //写den个数据后还有num个数据要写
    addr = addr+den;      //写den个数据后地址变化
    
    m = num/128; //m为要写的次数(一次写128个数据)
    n = num%128; //n为剩下要写的数据个数
    for(i=0;i<m;i++)
    {    
      WD_IN ^= 1; //喂狗
      Write_Zero(addr,128);
      addr = addr+128;	
    }
    Write_Zero(addr,n);     //写最后n个字节
  }
  else
    Write_Zero(addr,num);       
}


/*********************************************************/ 
/*函数名:A12_Read()                                      */
/*函数功能:读取物理页指定地址若干字节                    */
/*入口参数:Data:读取的字节,addr:偏移地址,num:写入数据个数*/    
/*返回值:无                                              */
/*********************************************************/
void A12_Read(unsigned char Data[],unsigned int addr,unsigned int num)
{
  unsigned char addrl,addrh;
  unsigned int i = 0;	
  unsigned char *PData; //定义指针用PData代替Data
  PData = Data;
  addrl = addr;
  addrh = addr>>8;
			
  AT512_Start(); //下面是伪写操作
  delay(20);
  AT512_Send_Byte(write[select]); 
  GetAck();
  AT512_Send_Byte(addrh);
  GetAck();
  AT512_Send_Byte(addrl); //发送存储单元地址
  GetAck();

  AT512_Start(); 
  AT512_Send_Byte(read[select]); //发送从器件地址
  GetAck();
  for(i=0;i<num-1;i++)
  {
    WD_IN ^= 1; //喂狗
    *(PData+i) = AT512_Rev_Byte(); //读取数据
    SendAck();
	//GetAck();
  }
  i = num - 1;
  *(PData+i) = AT512_Rev_Byte(); //读取数据
  GetAck();
  AT512_Stop(); 
}


/*********************************************************/ 
/*函数名:AT512_Write()                                   */
/*函数功能:往存储器指定地址写数据                        */
/*入口参数:Data:待写入数据,addr:偏移地址,num:写入数据个数*/    
/*返回值:无                                              */
/*********************************************************/
void AT512_Write(unsigned char *Data,long addr,unsigned int num)
{ 
  long Add = addr + num;
  unsigned int temp = 0;

  if(Add <= 65535) 
  {
    select = 0;
    A12_Write(Data,(unsigned int)addr,num);
  }
  else if(Add > 65535 && addr <= 65535) 
  {
    select = 0;
    temp = 65536 - addr;
    A12_Write(Data,(unsigned int)addr,temp);
    Data = Data + temp;
    num = num - temp;
    select = 1;
    addr = 0; 
    A12_Write(Data,(unsigned int)addr,num); 
  }
  else if(Add <= 131071 && addr > 65535) 
  {
    select = 1;  
    addr = addr - 65536; 
    A12_Write(Data,(unsigned int)addr,num);
  }
  else if(Add > 131071 && addr <= 131071) 
  {
    select = 1;
    temp = 131072 - addr;
    addr = addr - 65536; 
    A12_Write(Data,(unsigned int)addr,temp);
    Data = Data + temp;
    num = num - temp;
    select = 2;
    addr = 0;
    A12_Write(Data,(unsigned int)addr,num); 
  }
  else if(Add <= 196607 && addr > 131071) 
  {
    select = 2;
    addr = addr - 131072; 
    A12_Write(Data,(unsigned int)addr,num);
  }
  else if(Add > 196607 && addr <= 196607) 
  {
    select = 2;
    temp = 196608 - addr;
    addr = addr - 131072; 
    A12_Write(Data,(unsigned int)addr,temp);
    Data = Data + temp;
    num = num - temp;
    select = 3;
    addr = 0;
    A12_Write(Data,(unsigned int)addr,num); 
  }
  else if(Add <= 262143 && addr > 196607) 
  {
    select = 3;
    addr = addr - 196608; 
    A12_Write(Data,(unsigned int)addr,num);
  }
}


/*********************************************************/ 
/*函数名:AT512_Write_Zero()                              */
/*函数功能:将存储器指定地址清空                          */
/*入口参数:addr:偏移地址,num:清空数据个数                */    
/*返回值:无                                              */
/*********************************************************/
void AT512_Write_Zero(long addr,unsigned int num)
{  
  long Add = addr + num;
  unsigned int temp = 0;

  if(Add <= 65535) 
  {
    select = 0;
    A12_Write_Zero((unsigned int)addr,num);
  }
  else if(Add > 65535 && addr <= 65535) 
  {
    select = 0;
    temp = 65536 - addr;
    A12_Write_Zero((unsigned int)addr,temp);
    num = num - temp;
    select = 1;
    addr = 0; 
    A12_Write_Zero((unsigned int)addr,num); 
  }
  else if(Add <= 131071 && addr > 65535) 
  {
    select = 1;  
    addr = addr - 65536; 
    A12_Write_Zero((unsigned int)addr,num);
  }
  else if(Add > 131071 && addr <= 131071) 
  {
    select = 1;
    temp = 131072 - addr;
    addr = addr - 65536; 
    A12_Write_Zero((unsigned int)addr,temp);
    num = num - temp;
    select = 2;
    addr = 0;
    A12_Write_Zero((unsigned int)addr,num); 
  }
  else if(Add <= 196607 && addr > 131071) 
  {
    select = 2;
    addr = addr - 131072; 
    A12_Write_Zero((unsigned int)addr,num);
  }
  else if(Add > 196607 && addr <= 196607) 
  {
    select = 2;
    temp = 196608 - addr;
    addr = addr - 131072; 
    A12_Write_Zero((unsigned int)addr,temp);
    num = num - temp;
    select = 3;
    addr = 0;
    A12_Write_Zero((unsigned int)addr,num); 
  }
  else if(Add <= 262143 && addr > 196607) 
  {
    select = 3;
    addr = addr - 196608; 
    A12_Write_Zero((unsigned int)addr,num);
  }
}


/*********************************************************/ 
/*函数名:AT512_Read()                                    */
/*函数功能:读取物理页指定地址若干字节                    */
/*入口参数:Data:读取的字节,addr:偏移地址,num:写入数据个数*/    
/*返回值:无                                              */
/*********************************************************/
void AT512_Read(unsigned char Data[],long addr,unsigned int num)
{
  long Add = addr + num;
  unsigned int temp = 0;
  
  if(Add <= 65535) 
  {
    select = 0;
    A12_Read(Data,(unsigned int)addr,num);
  }
  else if(Add > 65535 && addr <= 65535) 
  {
    select = 0;
    temp = 65536 - addr;
    A12_Read(Data,(unsigned int)addr,temp);
    Data = Data + temp;
    num = num - temp;
    select = 1;
    addr = 0; 
    A12_Read(Data,(unsigned int)addr,num); 
  }
  else if(Add <= 131071 && addr > 65535) 
  {
    select = 1; 
    addr = addr - 65536; 
    A12_Read(Data,(unsigned int)addr,num);
  }
  else if(Add > 131071 && addr <= 131071) 
  {
    select = 1;
    temp = 131072 - addr;
    addr = addr - 65536; 
    A12_Read(Data,(unsigned int)addr,temp);
    Data = Data + temp;
    num = num - temp;
    select = 2;
    addr = 0;
    A12_Read(Data,(unsigned int)addr,num); 
  }
  else if(Add <= 196607 && addr > 131071) 
  {
    select = 2;
    addr = addr - 131072; //重新计算地址
    A12_Read(Data,(unsigned int)addr,num);
  }
  else if(Add > 196607 && addr <= 196607) 
  {
    select = 2;
    temp = 196608 - addr;
    addr = addr - 131072; 
    A12_Read(Data,(unsigned int)addr,temp);
    Data = Data + temp;
    num = num - temp;
    select = 3;
    addr = 0;
    A12_Read(Data, (unsigned int)addr, num);
  }
  else if(Add <= 262143 && addr > 196607) 
  {
    select = 3;
    addr = addr - 196608; 
    A12_Read(Data, (unsigned int)addr, num);
  }
}


/*********************************************************/ 
/*函数名:Init_C512()                                     */
/*函数功能:存储器清零                                    */
/*入口参数:无                                            */    
/*返回值:无                                              */
/*********************************************************/
/*void Init_C512(void)
{
  unsigned int i;
  unsigned int addr = 0;
  select = 0;
  for(i = 0;i < 64;i++)
  {
    A12_Write_Zero(addr,1024);
    addr += 1024;
  }

  addr = 0;
  select = 1;
  for(i = 0;i < 64;i++)
  {
    A12_Write_Zero(addr,1024);
    addr += 1024;
  }

  addr = 0;
  select = 2;
  for(i = 0;i < 64;i++)
  {
    A12_Write_Zero(addr,1024);
    addr += 1024;
  }

  addr = 0;
  select = 3;
  for(i = 0;i < 64;i++)
  {
    A12_Write_Zero(addr,1024);
    addr += 1024;
  }
}*/


/*********************************************************/ 
/*函数名:ADDRESS_Init()                                  */
/*函数功能:数据指针初始化                                */
/*入口参数:无                                            */
/*返回值:无                                              */
/*********************************************************/
void ADDRESS_First_Init(void) 
{
  old_address1 = 362;
  Addr_Save[0] = old_address1;
  Addr_Save[1] = old_address1>>8;
  Addr_Save[2] = old_address1>>16;
  Addr_Save[3] = old_address1>>24;
  AT512_Write(Addr_Save,0,4);

  new_address1 = 362;
  Addr_Save[0] = new_address1;
  Addr_Save[1] = new_address1>>8;
  Addr_Save[2] = new_address1>>16;
  Addr_Save[3] = new_address1>>24;
  AT512_Write(Addr_Save,4,4);
}


/*********************************************************/ 
/*函数名:ADDRESS_Init()                                  */
/*函数功能:数据指针初始化                                */
/*入口参数:无                                            */
/*返回值:无                                              */
/*********************************************************/
void ADDRESS_Second_Init(void) 
{
  old_address2 = 0;
  Addr_Save[0] = old_address2;
  Addr_Save[1] = old_address2>>8;
  Addr_Save[2] = old_address2>>16;
  Addr_Save[3] = old_address2>>24;
  AT512_Write(Addr_Save,8,4);

  new_address2 = 0;
  Addr_Save[0] = new_address2;
  Addr_Save[1] = new_address2>>8;
  Addr_Save[2] = new_address2>>16;
  Addr_Save[3] = new_address2>>24;
  AT512_Write(Addr_Save,12,4);
}


/*********************************************************/ 
/*函数名:GET_ADDRESS()                                   */
/*函数功能:获取存储芯片地址                              */
/*入口参数:无                                            */
/*返回值:无                                              */
/*********************************************************/
void GET_ADDRESS(void) 
{
  AT512_Read(Addr_Save,0,4);
  old_address1 = (long)(Addr_Save[3] * 16777216 + Addr_Save[2] * 65536 + Addr_Save[1] * 256 + Addr_Save[0]);

  AT512_Read(Addr_Save,4,4);
  new_address1 = (long)(Addr_Save[3] * 16777216 + Addr_Save[2] * 65536 + Addr_Save[1] * 256 + Addr_Save[0]);

  AT512_Read(Addr_Save,8,4);
  old_address2 = (long)(Addr_Save[3] * 16777216 + Addr_Save[2] * 65536 + Addr_Save[1] * 256 + Addr_Save[0]);

  AT512_Read(Addr_Save,12,4);
  new_address2 = (long)(Addr_Save[3] * 16777216 + Addr_Save[2] * 65536 + Addr_Save[1] * 256 + Addr_Save[0]);
}


/*********************************************************/ 
/*函数名:SAVE_ADDRESS()                                  */
/*函数功能:保存存储芯片地址                              */
/*入口参数:无                                            */
/*返回值:无                                              */
/*********************************************************/
void SAVE_ADDRESS(unsigned char n)
{
  if(n == 1)
  {
    Addr_Save[0] = old_address1;
    Addr_Save[1] = old_address1>>8;
    Addr_Save[2] = old_address1>>16;
    Addr_Save[3] = old_address1>>24;
    AT512_Write(Addr_Save,0,4);
  }

  else if(n == 2)
  {
    Addr_Save[0] = new_address1;
    Addr_Save[1] = new_address1>>8;
    Addr_Save[2] = new_address1>>16;
    Addr_Save[3] = new_address1>>24;
    AT512_Write(Addr_Save,4,4);
  }

  if(n == 3)
  {
    Addr_Save[0] = old_address2;
    Addr_Save[1] = old_address2>>8;
    Addr_Save[2] = old_address2>>16;
    Addr_Save[3] = old_address2>>24;
    AT512_Write(Addr_Save,8,4);
  }

  else if(n == 4)
  {
    Addr_Save[0] = new_address2;
    Addr_Save[1] = new_address2>>8;
    Addr_Save[2] = new_address2>>16;
    Addr_Save[3] = new_address2>>24;
    AT512_Write(Addr_Save,12,4);
  }
}


