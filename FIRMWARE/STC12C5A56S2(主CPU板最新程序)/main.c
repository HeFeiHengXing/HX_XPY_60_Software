#include "STC12C5A56S2.H"    //��Ƭ��ͷ�ļ�
#include "PCF8563.H"         //ʱ��оƬͷ�ļ�
#include "communications.h"  //ͨѶͷ�ļ�
#include "AT24C512.H"        //�洢оƬͷ�ļ�

unsigned char P_COUNT = 0; //PCF8563�жϵĴ���,���ƹ�������
unsigned char debug = 0;   //ͣ������״̬��־λ

unsigned char request = 0; //Ӧ��ģʽ���жϲɼ����Ƿ��յ��ɼ�ָ��
unsigned char buffer_lock = 0;// 722����ͨ����Դ����

unsigned char media = 0; //�����¶��м����ֵ
float tem = 0.0;         //�����¶��м����ֵ

unsigned char PC_CONNECT = 0;   //PC������λ�����ӱ��
unsigned char CONNECT_Flag = 0; //��λ���򿪱�־λ
unsigned char Send_Enable = 0;  //��CPU���յ���CPU������,����ֱ���ϴ���־λ
unsigned char Memory_Flag = 0;  //�洢оƬ���Ƿ������ݱ�־λ
unsigned char Clear_Flag = 0;   //����洢оƬ���ݱ�־λ
unsigned char Count = 0;        //���ڼ���
unsigned char Open_Flag = 0;    //�Ŵ򿪱�־λ

unsigned char xdata DATA_COM[362] = {0x00}; //���յ������ݻ�����
unsigned int  DATA_COUNT = 0;               //һ�β���������������
//unsigned char xdata DATA_BUF[362] = {0x00}; //��EEPORM�ж�ȡ�����ݴ���ڴ˴�

	   
long new_address1; //�洢����ַ
long new_address2; //�洢����ַ
long old_address1; //�洢����ַ
long old_address2; //�洢����ַ


/*********************************************************/ 
/*������:Set_None()                                      */
/*��������:�������                                      */             
/*��ڲ���:������                                        */
/*����ֵ:��                                              */  
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
/*����:main()                                            */
/*����:������                                            */
/*��ڲ���:��                                            */
/*����ֵ:��                                              */
/*********************************************************/
void main(void)
{
  EA = 0; //�ر����ж�

  WD_IN ^= 1; //ι��

  //P4SW = 0x70; //��P4�ڵ������趨ΪI/O��,ע��P4=0x0��Ҫд,���򴮿�2��ͨ

  DIR_485 = 0;  //����ģʽ

  WORK_LED = 1; //����ָʾ����
  ERR_LED  = 1; //����ָʾ����
  SPEAKER  = 1; //������ֹͣ����
	buffer_lock = 0;

  COM1_initial(); //����1��ʼ��
  COM2_initial(); //����2��ʼ��

  GET_ADDRESS();  //��ȡ�洢оƬ��ַ

  if(old_address1%362 == 0 && old_address2%362 == 0 && old_address1 - old_address2 != 362) //������ַ
  {
    if(old_address2 >= old_address1)
      old_address2 = old_address1 - 362;
    else
      old_address1 = old_address2 + 362;
  }
  
  if(new_address1%362 == 0 && new_address2%362 == 0 && new_address1 - new_address2 != 362) //������ַ
  {
    if(new_address2 >= new_address1)
      new_address2 = new_address1 - 362;
    else
      new_address1 = new_address2 + 362;
  }
  
  if(old_address1%362 != 0 && old_address2%362 == 0) //������ַ || old_address1 < old_address2 || old_address1 < new_address1
    old_address1 = old_address2 + 362;

  if(old_address1%362 == 0 && old_address2%362 != 0) //������ַ || old_address1 < old_address2 || old_address2 < new_address2
    old_address2 = old_address1 - 362;

  if(new_address1%362 != 0 && new_address2%362 == 0) //������ַ || new_address1 < new_address2 || old_address1 < new_address1
    new_address1 = new_address2 + 362;

  if(new_address1%362 == 0 && new_address2%362 != 0) //������ַ || new_address1 < new_address2 || old_address2 < new_address2
    new_address2 = new_address1 - 362;

  if((old_address1%362 != 0 && old_address2%362 != 0) || (new_address1%362 != 0 && new_address2%362 != 0)) //������ַ
  {
    ADDRESS_First_Init();  //��ַ��ʼ��
    ADDRESS_Second_Init(); //��ַ��ʼ��
  }
  
  COM1_send_char(0x88); //֪ͨ��λ��,��λ���Ѵ�	 
  S10_START_8563(30);   //��Ϊ���뵥λ

  WORK_LED = 0; //����ָʾ����

  EX1 = 1; //���ⲿ�ж�1,����PCF8563   
  EA = 1;  //���������ж�

  while(1) //ѭ��
  {
    WD_IN ^= 1; //ι��

    if(DOOR == 1 && Open_Flag == 0) //�Ŵ�,��ʱͣ��״̬
    {
      Open_Flag = 1;
      stop_sys();
    }
  	//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if(DOOR == 0 && Open_Flag == 1 && debug == 0 ) 
    {
      Open_Flag = 0;
			if( buffer_lock > 1 )
				buffer_lock -= 2;
      P_COUNT = 0;
      start_sys();
    }

    if(CONNECT_Flag == 1)   //��λ���򿪱�־λ
    {
      CONNECT_Flag = 0;     //��־λ��λ
      COM1_send_char(0x88); //֪ͨ��λ��,��λ���Ѵ�
    }

	if(Clear_Flag == 1)        //�������,��д��ַ
    {
      Clear_Flag = 0;          //��־λ��λ
      AT512_Write_Zero(0,362); //�������
      ADDRESS_First_Init();    //��ַ��ʼ��
      ADDRESS_Second_Init();   //��ַ��ʼ��
      COM1_send_char(0x85);    //֪ͨ��λ��,����������� 
    }

    if(new_address1 == old_address1) //�жϴ洢оƬ���Ƿ�������
    {
      Memory_Flag = 0;         //��־λ��λ
      if(old_address1 != 362)
      {
        ADDRESS_First_Init();  //��ַ��ʼ��
        ADDRESS_Second_Init(); //��ַ��ʼ��
      }
    }
    else
    {
      Memory_Flag = 1; //�洢оƬ���в�������  
    }   

    if((buffer_lock == 0) && (PC_CONNECT == 1) && (Memory_Flag == 1) && (Send_Enable == 0)) //��λ����,�洢оƬ��������,����CPUû�н��յ���CPU������,��ʱ�ϴ��洢оƬ����
    {
			++buffer_lock;
      PC_CONNECT = 0;  //��־λ��λ
      Memory_Flag = 0; //��־λ��λ
      AT512_Read(DATA_COM,new_address1,362); //���洢оƬ������
      COM1_send_string(DATA_COM,362);        //����λ�����ϴ�����
      AT512_Write_Zero(new_address1,362);    
      new_address1 += 362; //��ַ����
      SAVE_ADDRESS(2);     //�����ַ
      new_address2 += 362; //��ַ����
      SAVE_ADDRESS(4);     //�����ַ
	  --buffer_lock;//�ͷ���
    }

    if((buffer_lock == 0) && (PC_CONNECT == 1) && (Memory_Flag == 1) && (Send_Enable == 1) && old_address1 != 262088) //��λ����,�洢оƬ��������,����CPU���յ���CPU������,��ʱ��������
    {
			++buffer_lock; //��
      Memory_Flag = 0; //��־λ��λ
      Send_Enable = 0; //��־λ��λ
      AT512_Write(DATA_COM,old_address1,362); 
      old_address1 += 362; //��ַ����
      SAVE_ADDRESS(1);     //�����ַ
      old_address2 += 362; //��ַ����
      SAVE_ADDRESS(3);     //�����ַ
			--buffer_lock; //�ͷ���
    }

    if((buffer_lock == 0) && (PC_CONNECT == 1) && (Memory_Flag == 0) && (Send_Enable == 1)) //��λ����,�洢оƬ��û������,ֱ���ϴ�����
    {
			++buffer_lock; //��
      PC_CONNECT = 0;  //��־λ��λ
      Send_Enable = 0; //��־λ��λ
      COM1_send_string(DATA_COM,362); 
	  --buffer_lock; //�ͷ���
    }

    if((buffer_lock == 0) &&(PC_CONNECT == 0) && (Send_Enable == 1)) //����λ��û��,����CPU���յ����ݵ�ʱ�򱣴浽EEPORM��
    {
		++buffer_lock; //��
      Send_Enable = 0; //��־λ��λ
      AT512_Write(DATA_COM,old_address1,362); 
      old_address1 += 362; //��ַ����
      SAVE_ADDRESS(1);     //�����ַ
      old_address2 += 362; //��ַ����
      SAVE_ADDRESS(3);     //�����ַ
	  --buffer_lock; //�ͷ���
    }
  }
}



/*********************************************************/
/*����:PCF8563_Interrupt_Receive()                       */
/*����:PCF8563��ʱ�ж�                                   */
/*��ڲ���:��                                            */
/*����ֵ:��                                              */
/*********************************************************/
void PCF8563_Interrupt_Receive(void) interrupt 2
{
  EA=0;

  EX1=0;

  WD_IN ^= 1; //ι��

  switch(P_COUNT)
  {    
    case 0:	 //�¶�
		{ 
			if(buffer_lock < 2)
			{
				buffer_lock+=2;
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
			Count = 0;
			
			if(media >= 0 && media <= 250)
			{
				tem = (media + 200.0)/10.0;
				DATA_COM[DATA_COUNT] = (unsigned char)(tem/16);
				media = DATA_COM[DATA_COUNT];
				DATA_COUNT++;
				DATA_COM[DATA_COUNT] = (unsigned char)((tem - media*16)*16);
				DATA_COUNT++;
			}
			else if(media == 251) //�������
			{
				DATA_COM[DATA_COUNT] = DATA_COM[0];		//����һ�ζ����¶�ֵ
				DATA_COUNT++;
				DATA_COM[DATA_COUNT] = DATA_COM[1];
				DATA_COUNT++;
				COM1_send_char(0xfb); 
			}
			else if(media == 252)	//�¶ȿ��ƹ���
			{
				DATA_COM[0] = 0x00;
				DATA_COM[1] = 0x00;
				DATA_COUNT = 2;
				COM1_send_char(0xfc); 
			}
			else if(media == 253) //�¶ȴ���������
			{
				DATA_COM[0] = 0x00;
				DATA_COM[1] = 0x00;
				DATA_COUNT = 2;
				COM1_send_char(0xfd); 
			}
			else //��������							  
			{
				DATA_COM[DATA_COUNT] = DATA_COM[0];		//����һ���¶�ֵ
				DATA_COUNT++;
				DATA_COM[DATA_COUNT] = DATA_COM[1];
				DATA_COUNT++;
			}
			
			request = 1; // request ��ֵΪ1,ΪӦ��
			
			P_COUNT++;
			S10_START_8563(2); //��Ϊ���뵥λ
			break;
		}
    
    case 1:	  //���¶���������
	{ 
      if(DATA_COUNT == 2)
      {
        ERR_LED = 1;
	    //SPEAKER = 1;
        WORK_LED = 0;
								
        //COM2_send_char(0xc1); //���Ϳ�ʼת������,201(0xc9)
				if (request == 0)
				{
					P_COUNT++;
					S10_START_8563(20); //��Ϊ���뵥λ
				}
					
				if(request == 1)
				{
					COM2_send_char(0xc1);
					S10_START_8563(1);
				}
				
				if(request == 2)
				{
					COM2_send_char(0xc2);
					S10_START_8563(1);
				}
				
				if(request == 3)
				{
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
				buffer_lock-=2;
				S10_START_8563(1);
      }
      break;
	}
    
    case 2:
		{  
			ERR_LED = 1;
			//SPEAKER = 1;
			WORK_LED = 0;
			COM2_send_char(0xca); //���Ͳ�ѯ��һ�����ӵ���������,202(0xca)
		 
			P_COUNT++;
			S10_START_8563(4);//��Ϊ���뵥λ
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
        S10_START_8563(4); //��Ϊ���뵥λ
	  }
	  else
	  {
        ERR_LED = 0;
		//SPEAKER = 1;
        WORK_LED = 1;
        DATA_COUNT = 2;
		P_COUNT = 2;
        Count++;
        if(Count == 10) //RS485�������
        {
          COM1_send_char(0xfe);
          stop_sys();
          break;
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
				COM2_send_char(0xcc); //���Ͳ�ѯ���������ӵ���������,0xcc = 204
	
	    P_COUNT++;
        S10_START_8563(4); //��Ϊ���뵥λ
	  }
 	  else
	  {
        ERR_LED = 0;
		//SPEAKER = 1;
        WORK_LED = 1;
        DATA_COUNT = 122;
		P_COUNT = 3;
        Count++;
        if(Count == 10) //RS485�������
        {
          COM1_send_char(0xfe);
          stop_sys();
          break;
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

		buffer_lock-=2;
		P_COUNT = 0;
        Send_Enable = 1;

		P0 = 0x94; //���͵��ת������
				delay(5000);
				P0 = 0xff;
				

		START_8563(); //��Ϊ��5���ӵ�λ
	  }
 	  else
	  { 
        ERR_LED  = 0;
		//SPEAKER  = 1;
        WORK_LED = 1;
        DATA_COUNT = 242;
		P_COUNT = 4;
        Count++;
        if(Count == 10) //RS485�������
        {
          COM1_send_char(0xfe);
          stop_sys();
          break;
        }
		S10_START_8563(2);
      }
      break;
    }
      
    default: break;
  }
  
  EX1=1;	   
  EA=1;
}


/*********************************************************/
/*����:COM1_Interrupt_Receive()                          */
/*����:����1�ж�                                         */
/*��ڲ���:��                                            */
/*����ֵ:��                                              */
/*********************************************************/
void COM1_Interrupt_Receive(void) interrupt 4
{
  unsigned char k = 0xff;

  EA = 0;
 
  //ES = 0;
  
  WD_IN ^= 1; //ι��
  
  if(RI==1)
  {
    RI= 0;

    k = SBUF;

    if(k >= 0x01 && k <= 0x3c) //���͵������
    {
      COM2_send_char(k);
			delay(5);
			COM2_send_char(k);
	  k = 0xff;
	} 

    else if(k >= 0x3d && k <= 0x78 && debug == 1) //��ͣ��״̬�·���У׼����
	{
      COM2_send_char(k);
	  ES = 0;
	  delay(60000);	  //���ӵ���ʱ
	  delay(60000);
	  //k = S2BUF;
	  delay(60000);
	  ES = 1;
	  // COM1_send_char(k);
	  k = 0xff;
	}

    else if(k == 0x80) //�����������
    {
      COM2_send_char(k);
			delay(5);
      COM2_send_char(k);
	  k = 0xff;
	}

    else if(k == 0x82) //ͣ������
    { 
      stop_sys();
      debug = 1;
	  k = 0xff;
    }
 	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	else if(k == 0x83 ) //��λ��ֻҪ������������
	    { 
      if (DOOR == 0) start_sys();
	  
	  if( buffer_lock > 1 )
	  	buffer_lock -= 2;
      debug = 0;
      P_COUNT = 0; 
	  k = 0xff;
    }
	else if(k == 0x8B ) //��λ���������ȱ�������,139(0x8B);��λ����ʱ����,2011-09-22�޸�
    { 
      SPEAKER=0;	//��ʼ����
      //delay(50000); 
	  //delay(50000);		  
	  //SPEAKER=1;	//������ֹͣ����
	  //delay(50000);
	  //SPEAKER=0;    //�����    
	  //delay(50000);
	  //delay(50000);
	  //SPEAKER=1;	//������ֹͣ����
	  //delay(50000);
	  //SPEAKER=0;	//������
      //delay(50000); 
	  //delay(50000);
	  //SPEAKER=1;	//������ֹͣ����

	  k = 0xff;
    }

    else if(k == 0x8A ) //��λ���������ȱ�������
    { 
      SPEAKER=1;	//ֹͣ����
      //delay(50000); 
	  //delay(50000);		  
	  //SPEAKER=1;	//������ֹͣ����
	  //delay(50000);
	  //SPEAKER=0;    //�����    
	  //delay(50000);
	  //delay(50000);
	  //SPEAKER=1;	//������ֹͣ����
	  //delay(50000);
	  //SPEAKER=0;	//������
      //delay(50000); 
	  //delay(50000);
	  //SPEAKER=1;	//������ֹͣ����

	  k = 0xff;
    }

	else if(k == 0x84) //������������
	{ 
      PC_CONNECT = 1;
	  k = 0xff;
    }

    else if(k == 0x85) //��մ洢������,133(0x85)
    { 
      Clear_Flag = 1;  //�������
			k = 0xff;
    } 

    else if(k == 0x88)  //֪ͨ��λ��,��λ���Ѵ�
    { 
      CONNECT_Flag = 1; //��λ���򿪱�־λ
	  k = 0xff;
    }

    else if(k >= 0x96 && k <= 0xfa) //���������¶�����150(0x96)-250(0xfa)
	{	  	  
      P0 = k;
	  k = 0xff;		
	}
  }
  
  else {  TI  =  0;  }

  //ES = 1;	   
  EA = 1;
}


/*********************************************************/
/*����:COM2_Interrupt_Receive()                          */
/*����:����2�ж�                                         */
/*��ڲ���:��                                            */
/*����ֵ:��                                              */
/*********************************************************/
void COM2_Interrupt_Receive(void) interrupt 8
{
  unsigned char k = 0xff;
 

  EA = 0;

  WD_IN ^= 1; //ι��

  if(S2CON & 0x01)
  {
    S2CON = S2CON & 0xFE; //1111,1110���S2RI

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
					k= 0xff;
			}
		}
		else if(request == 1)
		{
			if(k == 0xc1)
			{
				++request;
			}
			k = 0xff;
		}
		else if(request == 2)
		{
			if(k == 0xc2)
			{
				++request;
			}
			k = 0xff;
		}
		else if(request == 3)
		{
			if(k == 0xc3)
			{
				request = 0;
			}
			k = 0xff;
		} 
  }

  else
  {
    //TI = 0;
	S2CON = S2CON & 0xFD; //1111,1101���S2TI
  }
  EA = 1;
}
//***************************************************************************//