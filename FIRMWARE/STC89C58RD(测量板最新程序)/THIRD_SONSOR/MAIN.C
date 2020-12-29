									//***************************************************************************
#include  <STC89C58RD.H>
//#include  <string.h>
#include  <intrins.h>
//#include  <absacc.h>
//#include  <math.h>

#define MSB(x)    (((x) >> 8) & 0xFF)	 // 用于得到字的高位字节
#define LSB(x)    ((x) & 0xFF)	         // 用于得到字的低位字节

//=====================   //对EEPROM进行的几种基本操作
#define  RD_BYTE      0x01
#define  WR_BYTE      0x02
#define  ERASE_SECTOR 0X03
#define  ENABLE_ISP   0x82 

#define  START_ADDRESS 0x80 //STC89C58内部EEPROM起始地址
//====================
#define color_maxvalue 0x7ff //10位精度
#define color_dark  0x10		 //用于白平衡补偿

//===========================================================================
void IO_initial();
void MBI_LED(unsigned char j);
void COM_initial( );
void COM_send_char(unsigned char CH) ;


void SHINE_LED(unsigned char  sensor_index);


void GET_COLOR(unsigned char  sensor_index );
void ALL_GET_COLOR(unsigned char  sensor_index );
void delayms( unsigned int t);

//void findmax();
unsigned int Count(unsigned int BALANCE);
void COM_send_string( unsigned char *str, unsigned int strlen) ;

//void WriteEeprom(unsigned char t_addr, unsigned char num, unsigned char *ptr) ;
//void ReadEeprom(unsigned char s_addr, unsigned char num, unsigned char *ptr) ;

//***************************************************************************
unsigned char COMMAND = 0;//串口接收的全局命令变量
unsigned char Light_COMMAND = 0; //点灯命令变量
unsigned k = 0;
//unsigned char SAVE_COMMAND = 0; //当处于颜色检测状态时，用于保存此时接收到的命令
//unsigned char Light_Flag = 0;
//unsigned char SAVE_COMMAND=0; //当处于颜色检测状态时，用于保存此时接收到的命令
unsigned char BUFF_COMMAND=0; //用于存储灯亮状态时(点灯和校准)，COMMAND的值

//unsigned char W_INDEX=0;

//unsigned char S_INDEX=0;
//unsigned char flag_s=0;//灯亮状态标志。1:灯处于点亮状态，0:灯处于熄灭状态
unsigned char command_flag = 0;//用于点灯
//unsigned char detect_flag = 0;//检测颜色标志，0:非检测状态；1:检测状态
//unsigned char Previous_state=0;//当前状态的前一个状态（0:点灯灯、校准；1:检测）
unsigned char rect_flag=0;//用于校准
unsigned char xdata COLOR_DATA[120];
//unsigned char xdata WHITE_BALANCE[120];
//点亮二极管的数字
unsigned int code LEDTAB[21]={0x0001,0x0002,0x0004,0x0008,0x0010,0x0020,0x0040,0x0080,0x0100,0x0200,0x0001,0x0002,0x0004,0x0008,0x0010,0x0020,0x0040,0x0080,0x0100,0x0200,0xffff};
//unsigned int code LEDTAB[21]={0x0038,0x01c0,0x0007,0x0038,0x01c0,0x0038,0x01c0,0x0038,0x01c0,0x0e00, 0x0007,0x7000,0x0e00,0x7000,0x0e00,0x0007, 0x7000,0x0e00,0x0007,0x7000,0xffff};
//***************************************************************************
void main(void)
{  
  unsigned char i;
  EA=0;
  //SP=0x7F;
  AUXR=0x01;
  DIR_485=0;

  IO_initial();
  COM_initial();

  for(i=1;i<=20;i++)
     GET_COLOR(i);
  EA=1;
  
  while(1)
  {      
    //==================点灯====================================
    if(Light_COMMAND >= 0x29 && Light_COMMAND <= 0x3C)		
    { 
	  Light_COMMAND -= 0x28;
      SHINE_LED(Light_COMMAND); 
//	  Light_COMMAND += 0x28;
      Light_COMMAND = 0xff;
    }

    //-----------------灭灯-------------------------------------
    if(Light_COMMAND == 0x80)
    {     
      LED2_OE=1;
	  LED1_OE=1;
	  Light_COMMAND = 0xff;
    }
    
    if(COMMAND == 0xC3) //201检测颜色,所有板子同时检测
    { 
		COM_send_char(0xC3);
		LED2_OE=1;LED1_OE=1;	   //关闭所有灯,2011-9-22
		MBI_LED(21);             //控制所有白光LED点亮,2011-9-22
		LED2_OE=0;LED1_OE=0;     //片选有效,2011-9-22
		delayms(150); delayms(150); delayms(150);	 //延时稳定,2011-9-22

	  for(i=1;i<=20;i++)
      {
        ALL_GET_COLOR(i);
      }
	  LED2_OE=1;LED1_OE=1;	   //循环检测完,关闭所有灯,2011-9-22

      COMMAND = 0xff;				
	}
    
    if(COMMAND == 0xCC)
    { 
	  COM_send_string(COLOR_DATA,120);
      COMMAND=0xff;  
	}                    
                                             
    //===============校准=======================================
    if((COMMAND>=0x65) && (COMMAND<=0x78))	
    {
	 // BUFF_COMMAND = COMMAND;
      COMMAND = COMMAND - 0x64;
	  rect_flag=1;
      GET_COLOR(COMMAND);
      COMMAND=0xff;
    }                   
  }
}



//**************************************************************************
//------------------串口中断-----------------//
void com_interrupt(void) interrupt 4 using 0  //串口中断,接收命令处理相关操作
{
  EA  =  0;
  TI  =  0;
  RI  =  0;

  k = SBUF;
  
  if((k == 0xc3) || ((k>=0x65) && (k<=0x78)) || (k == 0xCC) )
  {
    COMMAND = k;
  }

  if((k >= 0x29 && k <= 0x3C) || k == 0x80)
  {
    Light_COMMAND = k;
  }
//  if((k>=0x3D) && (k<=0x50))
//	COMMAND = k;

 //  if(k == 0xCA)
//	 	COMMAND = k;

  EA=1;
}


//*************************************************************************/
/*-------------串口初始化程序----------------*/
/*************************************************************************/
void COM_initial( )
{ES=0;//关中断
 TR2=0;
 PCON=0x00;//串口拨特率不倍增
 SCON=0x50;//串口工作方式设置：0101，0000
 T2CON=0x34;//选择T2计数器作为拨特率发生器
 T2MOD=0x00;

 TH2=0xfe;//1200;0xff;//9600//
 TL2=0xe0;//1200;0xdc;//9600//
 RCAP2H=0xfe;//1200;0xff;//9600//
 RCAP2L=0xe0;//1200;0xdc;//9600//
 TR2=1;
 
ES=1;//开中断	*/ 

/* SCON = 0x50;       //  晶振11.0592M                
    				  //串口工作方式一
 PCON = 0x00; 	  //SMOD=0;波特率不加倍
 
 TMOD = 0x20;
 TH1 = 0xe8;        //  设置定时器1，自动重装数
 TL1 = 0xe8;

 TR1 = 1;           //   开定时器1
  
   					  
 ES = 1;            //   允许串口中断 
 EA = 1;            //   开总中断		 */  

  
}
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
void COM_send_char(unsigned char CH) 
   {ES = 0;
    DIR_485=1;
    TI = 0; //发送之前先清除TI
    SBUF=CH;
    while(TI==0);
         TI=0;
    DIR_485=0;
    ES=1;
    }
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
void COM_send_string( unsigned char *str, unsigned int strlen) 
{ unsigned int k= 0; 
  do 
  { COM_send_char(*(str + k)); 
    k++; }
   while (k < strlen); 
   
   ES=1;
 } 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
void delayms( unsigned int t)     //约延时n（ms）
{
 unsigned int i;
    while(t--)
       {
        for(i=0;i<100;i++);
       }        
}

//*************************************************************************
//TCS230接口操作程序
//*************************************************************************
void IO_initial()
   {//==================
    LED_SDI=0x0;  LED_CLK=0x0;  LED_LE =0x0;

    LED1_OE=0x1; LED2_OE=0x1; 
	//LED3_OE=0x1;  LED4_OE=0x1;//低电平有效
   //===================
    TCS_OE1=0x1;  TCS_OE2=0x1;
    TCS_OE3=0x1;  TCS_OE4=0x1;
    TCS_OE5=0x1;  TCS_OE6=0x1;
    TCS_OE7=0x1;  TCS_OE8=0x1;
    TCS_OE9=0x1;  TCS_OE10=0x1;

    TCS_OE11=0x1; TCS_OE12=0x1;
    TCS_OE13=0x1; TCS_OE14=0x1;
    TCS_OE15=0x1; TCS_OE16=0x1;
    TCS_OE17=0x1; TCS_OE18=0x1;
    TCS_OE19=0x1; TCS_OE20=0x1;

   }
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/*-------------MBI5026输出点亮二极管---------------*/
// 输入：要求点亮的LED序号J           	     //
// 输出：无 点亮特定的LED，每次点3个         //
/*--------------------------------------------------------------------------*/
void MBI_LED(unsigned char j)
   {
    unsigned char k;
    unsigned int x;

    LED_SDI=0x0;
    LED_CLK=0x0;//上升沿移位输入
    LED_LE=0x0;//下降沿锁存
    
    x=LEDTAB[j-1];
     
    for(k=0;k<16;k++)
       { LED_CLK=0;
         if((x&0x8000)==0) 
		    LED_SDI=0;
         else 
		    LED_SDI=1;
        
         x=_irol_(x,1); 
         _nop_();   _nop_();
         LED_CLK=1;
         _nop_();   _nop_();
      } //模拟串行通信       
    LED_CLK=0;
    _nop_();  _nop_();
    LED_LE=1;
    _nop_();  _nop_(); 
    LED_LE=0; 
    _nop_();  _nop_();   
   }
//*******************************************************************************

/*-------------利用白平衡获得颜色值----------------*/
// 输入：传感器序号   							   //
// 输出：传感器测得的颜色、浊度值，利用全局变量传递//
/*-------------------------------------------------*/
void GET_COLOR(unsigned char  sensor_index )
{
	unsigned int F[4];             
    unsigned int M[4];             
    unsigned int T[4];               
	EA=0;

	LED2_OE=1;LED1_OE=1;
	MBI_LED(sensor_index);  

	//F[0]=0;
	//F[1]=0;
	//F[2]=0;
	//F[3]=0;
	/*   选中第i号TCS230光敏传感器  */
	switch(sensor_index)
	{
		case 20: LED2_OE=0; TCS_OE20=0;break;
		case 19: LED2_OE=0; TCS_OE19=0;break;
		case 18: LED2_OE=0; TCS_OE18=0;break;
		case 17: LED2_OE=0; TCS_OE17=0;break;
		case 16: LED2_OE=0; TCS_OE16=0;break;

		case 15: LED2_OE=0; TCS_OE15=0;break;
		case 14: LED2_OE=0; TCS_OE14=0;break;
		case 13: LED2_OE=0; TCS_OE13=0;break;
		case 12: LED2_OE=0; TCS_OE12=0;break;
		case 11: LED2_OE=0; TCS_OE11=0;break;

		case 10: LED1_OE=0; TCS_OE10=0;break;
		case 9:  LED1_OE=0; TCS_OE9=0;break;
		case 8:  LED1_OE=0; TCS_OE8=0;break;
		case 7:  LED1_OE=0; TCS_OE7=0;break;
		case 6:  LED1_OE=0; TCS_OE6=0;break;

		case 5:  LED1_OE=0; TCS_OE5=0;break;
		case 4:  LED1_OE=0; TCS_OE4=0;break;
		case 3:  LED1_OE=0; TCS_OE3=0;break;
		case 2:  LED1_OE=0; TCS_OE2=0;break;
		case 1:  LED1_OE=0; TCS_OE1=0;break;
		default:break;
	}
    delayms(150);
	
   
	TCS_S2=0;
	TCS_S3=0;
	delayms(100);

	//F[0]=Count((WHITE_BALANCE[6*(sensor_index-1)]<<8) + WHITE_BALANCE[6*(sensor_index-1)+1]);
    F[0]=Count(0x0ffff);
	//if (F[0]<color_dark){F[0]=color_dark;}
	//if (F[0]>color_maxvalue){F[0]=color_maxvalue;}

    //M[0]=Count((WHITE_BALANCE[6*(sensor_index-1)]<<8) + WHITE_BALANCE[6*(sensor_index-1)+1]);
    M[0]=Count(0x0ffff);
	//if (M[0]<color_dark){M[0]=color_dark;}
	//if (M[0]>color_maxvalue){M[0]=color_maxvalue;}

    //T[0]=Count((WHITE_BALANCE[6*(sensor_index-1)]<<8) + WHITE_BALANCE[6*(sensor_index-1)+1]);
    T[0]=Count(0x0ffff);
	//if (T[0]<color_dark){T[0]=color_dark;}
	//if (T[0]>color_maxvalue){T[0]=color_maxvalue;}

    //read green
	TCS_S2=1;
	TCS_S3=1;
    delayms(100);

	//F[1]=Count((WHITE_BALANCE[6*(sensor_index-1)+2]<<8) + WHITE_BALANCE[6*(sensor_index-1)+3]);
    F[1]=Count(0x0ffff);
	//if (F[1]<color_dark){F[1]=color_dark;}
	//if (F[1]>color_maxvalue){F[1]=color_maxvalue;}
    
    //M[1]=Count((WHITE_BALANCE[6*(sensor_index-1)+2]<<8) + WHITE_BALANCE[6*(sensor_index-1)+3]);
     M[1]=Count(0x0ffff);
	//if (M[1]<color_dark){M[1]=color_dark;}
	//if (M[1]>color_maxvalue){M[1]=color_maxvalue;}
    
    //T[1]=Count((WHITE_BALANCE[6*(sensor_index-1)+2]<<8) + WHITE_BALANCE[6*(sensor_index-1)+3]);
    T[1]=Count(0x0ffff);
	//if (T[1]<color_dark){T[1]=color_dark;}
	//if (T[1]>color_maxvalue){T[1]=color_maxvalue;}

    //read blue
    TCS_S2=0;
 	TCS_S3=1;
    delayms(100);

	//F[2]=Count((WHITE_BALANCE[6*(sensor_index-1)+4]<<8) + WHITE_BALANCE[6(sensor_index-1)+5]);
    F[2]=Count(0x0ffff);
	//if (F[2]<color_dark){F[2]=color_dark;}
	//if (F[2]>color_maxvalue){F[2]=color_maxvalue;}

    //M[2]=Count((WHITE_BALANCE[6*(sensor_index-1)+4]<<8) + WHITE_BALANCE[6(sensor_index-1)+5]);
    M[2]=Count(0x0ffff);
	//if (M[2]<color_dark){M[2]=color_dark;}
	//if (M[2]>color_maxvalue){M[2]=color_maxvalue;}

    //T[2]=Count((WHITE_BALANCE[6*(sensor_index-1)+4]<<8) + WHITE_BALANCE[6(sensor_index-1)+5]);
    T[2]=Count(0x0ffff);
	//if (T[2]<color_dark){T[2]=color_dark;}
	//if (T[2]>color_maxvalue){T[2]=color_maxvalue;}
   
	
	//测浊度
	/*S2=1;
	S3=0;
	delay(100);
	F[3]=Count(ReadWord(8*0+6));
	if (F[3]<cdarkoffset){F[3]=0;}
	else {F[3]=F[3]-cdarkoffset;}
	if (F[3]>cmaxcolorvalue){F[3]=cmaxcolorvalue;}
	F[3]=F[3];
	WriteWord(8*sensor_index+6,F[3]);*/

	COLOR_DATA[6*(sensor_index-1)+0]=MSB((F[0]+M[0]+T[0])/3);
	COLOR_DATA[6*(sensor_index-1)+1]=LSB((F[0]+M[0]+T[0])/3);
	COLOR_DATA[6*(sensor_index-1)+2]=MSB((F[1]+M[1]+T[1])/3);
	COLOR_DATA[6*(sensor_index-1)+3]=LSB((F[1]+M[1]+T[1])/3);
	COLOR_DATA[6*(sensor_index-1)+4]=MSB((F[2]+M[2]+T[2])/3);
	COLOR_DATA[6*(sensor_index-1)+5]=LSB((F[2]+M[2]+T[2])/3);
	if(rect_flag==1)
	{
		COM_send_char(COLOR_DATA[6*(sensor_index-1)+0]);//////////////////////////////////
		COM_send_char(COLOR_DATA[6*(sensor_index-1)+1]);///////////////////////////////////
		COM_send_char(COLOR_DATA[6*(sensor_index-1)+2]);//////////////////////////////////
		COM_send_char(COLOR_DATA[6*(sensor_index-1)+3]);///////////////////////////////////
		COM_send_char(COLOR_DATA[6*(sensor_index-1)+4]);//////////////////////////////////
		COM_send_char(COLOR_DATA[6*(sensor_index-1)+5]);///////////////////////////////////
		rect_flag=0;
	}
	else
	{
		rect_flag=0;
	}
    //delayms(100);
	switch(sensor_index)
	{
        case 20: LED2_OE=1; TCS_OE20=1;break;
		case 19: LED2_OE=1; TCS_OE19=1;break;
		case 18: LED2_OE=1; TCS_OE18=1;break;
		case 17: LED2_OE=1; TCS_OE17=1;break;
		case 16: LED2_OE=1; TCS_OE16=1;break;

		case 15: LED2_OE=1; TCS_OE15=1;break;
		case 14: LED2_OE=1; TCS_OE14=1;break;
		case 13: LED2_OE=1; TCS_OE13=1;break;
		case 12: LED2_OE=1; TCS_OE12=1;break;
		case 11: LED2_OE=1; TCS_OE11=1;break;

		case 10: LED1_OE=1; TCS_OE10=1;break;
		case 9:  LED1_OE=1; TCS_OE9=1;break;
		case 8:  LED1_OE=1; TCS_OE8=1;break;
		case 7:  LED1_OE=1; TCS_OE7=1;break;
		case 6:  LED1_OE=1; TCS_OE6=1;break;

		case 5:  LED1_OE=1; TCS_OE5=1;break;
		case 4:  LED1_OE=1; TCS_OE4=1;break;
		case 3:  LED1_OE=1; TCS_OE3=1;break;
		case 2:  LED1_OE=1; TCS_OE2=1;break;
		case 1:  LED1_OE=1; TCS_OE1=1;break;
		default:break;

	}
	EA=1;
}




//****************************************************************************************
/*---------------------输入脉冲计数-------------------------*/
// 输入：定时器初值x	                         		    //
// 输出：定时器时间内获得的计数脉冲                         //
/*----------------------------------------------------------*/
//****************************************************************************************
unsigned int Count(unsigned int BALANCE)
{
	unsigned int temp,m;
	TMOD = 0x51;
	TCON=0x00;

		TH0=MSB(65536-BALANCE);
		TL0=LSB(65536-BALANCE);
		TH1=0;
		TL1=0;
		TR0=1;
		TR1=1;
		do{}while(TF0!=1);

		TR1=0;
		TR0=0;
		TF0=0;

		temp=TH1;
		m = (temp<<8) + TL1;
	
	return m;
}


//================================================================================
void SHINE_LED(unsigned char  sensor_index)
{	EA=0;
	MBI_LED(sensor_index);  //点亮第i号白光LED
    
	/*   选中第i号TCS230光敏传感器  */
//	if(command_flag==1)
	  //   {//flag_s=1;
          //command_flag=1;
	  	  switch(sensor_index)
	      	{
	    		case 20: LED2_OE=0; LED1_OE=1; break;
	    		case 19: LED2_OE=0; LED1_OE=1; break;
				case 18: LED2_OE=0; LED1_OE=1; break;
				case 17: LED2_OE=0; LED1_OE=1; break;
				case 16: LED2_OE=0; LED1_OE=1; break;

				case 15: LED2_OE=0; LED1_OE=1; break;
				case 14: LED2_OE=0; LED1_OE=1; break;
				case 13: LED2_OE=0; LED1_OE=1; break;
				case 12: LED2_OE=0; LED1_OE=1; break;
				case 11: LED2_OE=0; LED1_OE=1; break;

				case 10: LED1_OE=0; LED2_OE=1; break;
				case 9:  LED1_OE=0; LED2_OE=1; break;
				case 8:  LED1_OE=0; LED2_OE=1; break;
				case 7:  LED1_OE=0; LED2_OE=1; break;
				case 6:  LED1_OE=0; LED2_OE=1; break;

				case 5:  LED1_OE=0; LED2_OE=1; break;
				case 4:  LED1_OE=0; LED2_OE=1; break;
				case 3:  LED1_OE=0; LED2_OE=1; break;
				case 2:  LED1_OE=0; LED2_OE=1; break;
				case 1:  LED1_OE=0; LED2_OE=1; break;
				default:break;
			}
	  //  }
   //else
       //{
	    // LED2_OE=1;LED1_OE=1;
	  // }
	EA=1;
}

//=============================================================================
//================================2011-09-22===================================
/*-------------利用白平衡获得颜色值----------------*/
// 输入：传感器序号   							   //
// 输出：传感器测得的颜色、浊度值，利用全局变量传递//
/*-------------------------------------------------*/
void ALL_GET_COLOR(unsigned char  sensor_index )
{
	unsigned int F[4];              
    unsigned int M[4];               
    unsigned int T[4];               
	EA=0;

	//LED2_OE=1;LED1_OE=1;
	//MBI_LED(sensor_index);  

	
	/*   选中第i号TCS230光敏传感器  */
	switch(sensor_index)
	{
		case 20:  TCS_OE20=0;break;
		case 19:  TCS_OE19=0;break;
		case 18:  TCS_OE18=0;break;
		case 17:  TCS_OE17=0;break;
		case 16:  TCS_OE16=0;break;

		case 15:  TCS_OE15=0;break;
		case 14:  TCS_OE14=0;break;
		case 13:  TCS_OE13=0;break;
		case 12:  TCS_OE12=0;break;
		case 11:  TCS_OE11=0;break;

		case 10:  TCS_OE10=0;break;
		case 9:   TCS_OE9=0;break;
		case 8:   TCS_OE8=0;break;
		case 7:   TCS_OE7=0;break;
		case 6:   TCS_OE6=0;break;

		case 5:   TCS_OE5=0;break;
		case 4:   TCS_OE4=0;break;
		case 3:   TCS_OE3=0;break;
		case 2:   TCS_OE2=0;break;
		case 1:   TCS_OE1=0;break;
		default:break;
	}
    delayms(1);
	
    //read red
	TCS_S2=0;
	TCS_S3=0;
	delayms(10);	   

    F[0]=Count(0x0ffff);
    M[0]=Count(0x0ffff);  
    T[0]=Count(0x0ffff);  

    //read green
	TCS_S2=1;
	TCS_S3=1;
    delayms(10);
	
    F[1]=Count(0x0ffff);     
    M[1]=Count(0x0ffff);   
    T[1]=Count(0x0ffff);		

    //read blue
    TCS_S2=0;
 	TCS_S3=1;
    delayms(10);  

    F[2]=Count(0x0ffff);
    M[2]=Count(0x0ffff);  
    T[2]=Count(0x0ffff);		
   
	
	//测浊度
	/*S2=1;
	S3=0;
	delay(100);
	F[3]=Count(ReadWord(8*0+6));
	if (F[3]<cdarkoffset){F[3]=0;}
	else {F[3]=F[3]-cdarkoffset;}
	if (F[3]>cmaxcolorvalue){F[3]=cmaxcolorvalue;}
	F[3]=F[3];
	WriteWord(8*sensor_index+6,F[3]);*/

    COLOR_DATA[6*(sensor_index-1)+0]=MSB((F[0]+M[0]+T[0])/3);
    COLOR_DATA[6*(sensor_index-1)+1]=LSB((F[0]+M[0]+T[0])/3);
    COLOR_DATA[6*(sensor_index-1)+2]=MSB((F[1]+M[1]+T[1])/3);
    COLOR_DATA[6*(sensor_index-1)+3]=LSB((F[1]+M[1]+T[1])/3);
    COLOR_DATA[6*(sensor_index-1)+4]=MSB((F[2]+M[2]+T[2])/3);
    COLOR_DATA[6*(sensor_index-1)+5]=LSB((F[2]+M[2]+T[2])/3);
    
    //delayms(100);
	switch(sensor_index)
	{
        case 20:  TCS_OE20=1;break;
		case 19:  TCS_OE19=1;break;
		case 18:  TCS_OE18=1;break;
		case 17:  TCS_OE17=1;break;
		case 16:  TCS_OE16=1;break;

		case 15:  TCS_OE15=1;break;
		case 14:  TCS_OE14=1;break;
		case 13:  TCS_OE13=1;break;
		case 12:  TCS_OE12=1;break;
		case 11:  TCS_OE11=1;break;

		case 10:  TCS_OE10=1;break;
		case 9:   TCS_OE9=1;break;
		case 8:   TCS_OE8=1;break;
		case 7:   TCS_OE7=1;break;
		case 6:   TCS_OE6=1;break;

		case 5:   TCS_OE5=1;break;
		case 4:   TCS_OE4=1;break;
		case 3:   TCS_OE3=1;break;
		case 2:   TCS_OE2=1;break;
		case 1:   TCS_OE1=1;break;
		default:break;

	} 
	EA=1;
}

//*****************************************************************************
