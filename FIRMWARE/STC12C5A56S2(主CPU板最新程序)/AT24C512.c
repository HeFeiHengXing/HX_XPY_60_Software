#include "STC12C5A56S2.H" //��Ƭ��ͷ�ļ�
#include "at24c512.h"     //�洢оƬͷ�ļ�

sbit SCL_512 = P1^3; //����ʱ����             
sbit SDA_512 = P1^4; //����������

unsigned char code write[4] = {0xa0,0xa2,0xa4,0xa6}; //24C512д��ַ
unsigned char code read[4] = {0xa1,0xa3,0xa5,0xa7};  //24C512����ַ
unsigned char select = 0; //24C512Ƭѡ


extern long new_address1; //�洢����ַ
extern long new_address2; //�洢����ַ 
extern long old_address1; //�洢����ַ
extern long old_address2; //�洢����ַ

unsigned char Addr_Save[4]; 


/*********************************************************/
/*����:delay()                                           */
/*����:��ʱ,ģ��I2C����ר��                              */
/*��ڲ���:��ʱ����                                      */
/*����ֵ:��                                              */
/*********************************************************/
void delay(unsigned int loop)
{
  unsigned int i;
  for(i=0;i<loop;i++)
  {
    WD_IN ^= 1; //ι��
    { ; }
  }
}


/*********************************************************/
/*������:AT512_Start()                                   */
/*��������:��ʼ����                                      */
/*��ڲ���:��                                            */
/*����ֵ:��                                              */
/*********************************************************/
void AT512_Start(void)
{
  EA= 0;

  SCL_512 = 0; // ��ʱ����
  delay(20);

  SDA_512 = 1; // �������ø�
  delay(20);

  SCL_512 = 1; // ʱ�����ø�
  delay(20);

  SDA_512 = 0; // �������õ�,��ʱ������ʼ�ź�
  delay(20);
  
  SCL_512 = 0; // ��ʱ����
  delay(20);
}


/*********************************************************/
/*����:AT512_Stop()                                      */
/*����:����I2C���ߵ�ֹͣ״̬                             */
/*��ڲ���:��                                            */
/*����ֵ:��                                              */
/*˵��:
  SCL���ڸߵ�ƽ�ڼ�,��SDA����������ʱֹͣI2C����
  ����SDA��SCL����ʲô��ƽ״̬,������������ȷ����ֹͣ״̬
  ������ִ�к�,I2C���ߴ��ڿ���״̬                       */
/*********************************************************/
void AT512_Stop(void)
{
  SDA_512 = 0; // �������õ�
  delay(20);
  
  SCL_512 = 1; // ʱ�����ø�
  delay(20);
 
  SDA_512 = 1; // �������ø�
  delay(20);
  
  SCL_512 = 0; // ��ʱ����
  delay(20);

  EA= 1;
} 


/*********************************************************/
/*����:AT512_Ack()                                       */
/*����:��������Ӧ���ź�:
       a=0:��������Ӧ��λ 
       a=1:����������Ӧ��λ                              */
/*��ڲ���:����                                          */
/*����ֵ:��                                              */
/*********************************************************/
/*void AT512_Ack(unsigned char a)
{
  if(a == 0) //�ڴ˷���Ӧ����Ӧ���ź�
    SDA_512 = 0;
  else 
    SDA_512 = 1;
  delay(40);

  SCL_512 = 1; //ʱ�����ø�        
  delay(40);

  SCL_512=0; //SCL_512Ϊ�͵�ƽ,SDA_512������ı�
}*/


/*********************************************************/
/*����:GetAck()                                          */
/*����:��������Ӧ��λ                                    */
/*��ڲ���:��                                            */
/*����ֵ:��                                              */
/*********************************************************/
void GetAck(void)
{
  SDA_512 = 1;
  delay(20);

  SCL_512 = 1; //ʱ�����ø�        
  delay(20);

  SCL_512=0; //SCL_512Ϊ�͵�ƽ,SDA_512������ı�
}


/*********************************************************/
/*����:SendAck()                                         */
/*����:����������Ӧ��λ                                  */
/*��ڲ���:��                                            */
/*����ֵ:��                                              */
/*********************************************************/
void SendAck(void)
{
  SDA_512 = 0;
  delay(20);

  SCL_512 = 1; //ʱ�����ø�        
  delay(20);

  //SDA_512 = 0;
  //delay(20);

  SCL_512=0; //SCL_512Ϊ�͵�ƽ,SDA_512������ı�
}


/*********************************************************/ 
/*������:AT512_Send_Byte()                               */
/*��������:��������                                      */
/*��ڲ���:Data                                          */    
/*����ֵ:��                                              */
/*********************************************************/
void AT512_Send_Byte(unsigned char Data)
{
  unsigned char BitCounter = 8; //λ������
  unsigned char temp = Data; //�м����,����Data
  do
  {
    WD_IN ^= 1; //ι��
	if((temp & 0x80) == 0x80) //������λ��1,���͸ߵ�ƽ
      SDA_512 = 1;
    else
      SDA_512 = 0;      
    delay(20);  
 
    SCL_512 = 1;
    delay(20); 

    SCL_512 = 0;

    temp = temp<<1; //RLC������λ������һλ
    BitCounter--;
  }while(BitCounter);
  delay(20);
}


/*********************************************************/
/*����:AT512_Rev_Byte()                                  */
/*����:��I2c���߽���1���ֽڵ�����/����                   */
/*��ڲ���:��                                            */
/*����ֵ:data                                            */
/*********************************************************/
unsigned char AT512_Rev_Byte(void)
{
  unsigned char temp = 0x00; //��������ֽ�����
  unsigned char BitCounter;
  for(BitCounter = 0;BitCounter < 8;BitCounter++)
  {
    WD_IN ^= 1; //ι��
    SDA_512 = 1; //�ڶ�ȡ����֮ǰҪ��SDA����
    delay(20);

    SCL_512 = 1;
    delay(20);
   
    temp = temp<<1;

    if(SDA_512) //���SDA=1
      temp = temp + 1; //temp�����λ��1
    delay(20);

    SCL_512 = 0;
    delay(20);
  }
  return(temp);   
}



/*********************************************************/ 
/*������:Write()                                         */
/*��������:дnum���ֽڵ�����                             */
/*��ڲ���:Data:��д������,addr:ƫ�Ƶ�ַ,num:д�����ݸ���*/    
/*����ֵ:��                                              */
/*********************************************************/
void Write(unsigned char *Data,unsigned int addr,unsigned char num)
{		
  unsigned char addrl,addrh,i;
  addrl = addr;
  addrh = addr>>8;
	  
  AT512_Start();
  delay(20);
  AT512_Send_Byte(write[select]); //���ʹ�������ַ		   
  GetAck();
  AT512_Send_Byte(addrh); 
  GetAck();
  AT512_Send_Byte(addrl); 
  GetAck();
  for(i=0;i<num;i++)
  {
    WD_IN ^= 1; //ι��
    AT512_Send_Byte(*(Data+i));
    GetAck(); 
  }
  AT512_Stop();
  delay(20000);	
}


/*********************************************************/ 
/*������:Write_Zero()                                    */
/*��������:num���ֽڵ��������                           */
/*��ڲ���:addr:ƫ�Ƶ�ַ,num:д�����ݸ���                */    
/*����ֵ:��                                              */
/*********************************************************/
void Write_Zero(unsigned int addr,unsigned char num)
{		
  unsigned char addrl,addrh,i;
  addrl = addr;
  addrh = addr>>8;
	  
  AT512_Start();
  delay(20);
  AT512_Send_Byte(write[select]); //���ʹ�������ַ		   
  GetAck();
  AT512_Send_Byte(addrh); 
  GetAck();
  AT512_Send_Byte(addrl); 
  GetAck();
  for(i=0;i<num;i++)
  {
    WD_IN ^= 1; //ι��
    AT512_Send_Byte(0x00);
    GetAck(); 
  }
  AT512_Stop();
  delay(20000);	
}


/*********************************************************/ 
/*������:A12_Write()                                     */
/*��������:���洢��ָ����ַд����                        */
/*��ڲ���:Data:��д������,addr:ƫ�Ƶ�ַ,num:д�����ݸ���*/    
/*����ֵ:��                                              */
/*********************************************************/
void A12_Write(unsigned char *Data,unsigned int addr,unsigned int num)
{    
  unsigned char i,n;
  unsigned int m,den;

  den = addr%128; //��ַ����128�ı���ʱҪ����,��һ��д��������
  den = 128-den;  //denΪ��һ��Ҫд�����ݸ���
  if(num > den)   //�ж�һ���ܷ�num������д��
  {        
    Write(Data,addr,den); //��дden������
    num = num-den;        //дden�����ݺ���num������Ҫд
    addr = addr+den;      //дden�����ݺ��ַ�仯
    Data = Data+den;      //дden�����ݺ������ַ�仯
    
    m = num/128;  //mΪҪд�Ĵ���(һ��д128������)
    n = num%128;  //nΪʣ��Ҫд�����ݸ���
    for(i=0;i<m;i++)
    {    
      WD_IN ^= 1; //ι��     
      Write(Data,addr,128); 
      addr = addr+128;	
      Data = Data+128;
    }
    Write(Data,addr,n);     //д���n���ֽ�
  }
  else
    Write(Data,addr,num);     
}


/*********************************************************/ 
/*������:A2_Write_Zero()                                 */
/*��������:���洢��ָ����ַ���                          */
/*��ڲ���:addr:ƫ�Ƶ�ַ,num:������ݸ���                */    
/*����ֵ:��                                              */
/*********************************************************/
void A12_Write_Zero(unsigned int addr,unsigned int num)
{    
  unsigned char n,den;
  unsigned int m,i;

  den = addr%128; //��ַ����128�ı���ʱҪ����,��һ��д��������
  den = 128-den;  //denΪ��һ��Ҫд�����ݸ���
  if(num > den)   //�ж�һ���ܷ�num������д��
  {        
    Write_Zero(addr,den); //��дden������
    num = num-den;        //дden�����ݺ���num������Ҫд
    addr = addr+den;      //дden�����ݺ��ַ�仯
    
    m = num/128; //mΪҪд�Ĵ���(һ��д128������)
    n = num%128; //nΪʣ��Ҫд�����ݸ���
    for(i=0;i<m;i++)
    {    
      WD_IN ^= 1; //ι��
      Write_Zero(addr,128);
      addr = addr+128;	
    }
    Write_Zero(addr,n);     //д���n���ֽ�
  }
  else
    Write_Zero(addr,num);       
}


/*********************************************************/ 
/*������:A12_Read()                                      */
/*��������:��ȡ����ҳָ����ַ�����ֽ�                    */
/*��ڲ���:Data:��ȡ���ֽ�,addr:ƫ�Ƶ�ַ,num:д�����ݸ���*/    
/*����ֵ:��                                              */
/*********************************************************/
void A12_Read(unsigned char Data[],unsigned int addr,unsigned int num)
{
  unsigned char addrl,addrh;
  unsigned int i = 0;	
  unsigned char *PData; //����ָ����PData����Data
  PData = Data;
  addrl = addr;
  addrh = addr>>8;
			
  AT512_Start(); //������αд����
  delay(20);
  AT512_Send_Byte(write[select]); 
  GetAck();
  AT512_Send_Byte(addrh);
  GetAck();
  AT512_Send_Byte(addrl); //���ʹ洢��Ԫ��ַ
  GetAck();

  AT512_Start(); 
  AT512_Send_Byte(read[select]); //���ʹ�������ַ
  GetAck();
  for(i=0;i<num-1;i++)
  {
    WD_IN ^= 1; //ι��
    *(PData+i) = AT512_Rev_Byte(); //��ȡ����
    SendAck();
	//GetAck();
  }
  i = num - 1;
  *(PData+i) = AT512_Rev_Byte(); //��ȡ����
  GetAck();
  AT512_Stop(); 
}


/*********************************************************/ 
/*������:AT512_Write()                                   */
/*��������:���洢��ָ����ַд����                        */
/*��ڲ���:Data:��д������,addr:ƫ�Ƶ�ַ,num:д�����ݸ���*/    
/*����ֵ:��                                              */
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
/*������:AT512_Write_Zero()                              */
/*��������:���洢��ָ����ַ���                          */
/*��ڲ���:addr:ƫ�Ƶ�ַ,num:������ݸ���                */    
/*����ֵ:��                                              */
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
/*������:AT512_Read()                                    */
/*��������:��ȡ����ҳָ����ַ�����ֽ�                    */
/*��ڲ���:Data:��ȡ���ֽ�,addr:ƫ�Ƶ�ַ,num:д�����ݸ���*/    
/*����ֵ:��                                              */
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
    addr = addr - 131072; //���¼����ַ
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
/*������:Init_C512()                                     */
/*��������:�洢������                                    */
/*��ڲ���:��                                            */    
/*����ֵ:��                                              */
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
/*������:ADDRESS_Init()                                  */
/*��������:����ָ���ʼ��                                */
/*��ڲ���:��                                            */
/*����ֵ:��                                              */
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
/*������:ADDRESS_Init()                                  */
/*��������:����ָ���ʼ��                                */
/*��ڲ���:��                                            */
/*����ֵ:��                                              */
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
/*������:GET_ADDRESS()                                   */
/*��������:��ȡ�洢оƬ��ַ                              */
/*��ڲ���:��                                            */
/*����ֵ:��                                              */
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
/*������:SAVE_ADDRESS()                                  */
/*��������:����洢оƬ��ַ                              */
/*��ڲ���:��                                            */
/*����ֵ:��                                              */
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


