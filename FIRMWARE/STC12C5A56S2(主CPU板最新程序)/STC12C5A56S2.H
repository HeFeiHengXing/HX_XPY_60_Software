/*------------------------------------------------------------------------
STC12C5A56S2.H
--------------------------------------------------------------------------*/

#ifndef __STC12C5A56S2_H__
#define __STC12C5A56S2_H__
//=========================================================================
//=========================================================================
/*  BYTE Registers  */
sfr P0    = 0x80;//++
sfr P0M1  = 0x93;//++
sfr P0M0  = 0x94;//++
sfr P1    = 0x90;//++
sfr P1M1  = 0x91;//++
sfr P1M0  = 0x92;//++
sfr P2    = 0xA0;//++
sfr P2M1  = 0x95;//++
sfr P2M0  = 0x96;//++
sfr P3    = 0xB0;//++
sfr P3M1  = 0xB1;//++
sfr P3M0  = 0xB2;//++
//+++++++++++++++++++++++++++
sfr P4    = 0xC0;  //p4口
sfr P4M1  = 0xB3;//++
sfr P4M0  = 0xB4;//++
sfr P4SW  = 0xBB;  //p4口的引脚复用选择;p4.7/RST引脚功能在烧写程序时确定
sfr P5    = 0xC8;  //p4口
sfr P5M1  = 0xC9;//++
sfr P5M0  = 0xCA;//++
//+++++++++++++++++++++++++++

sfr PSW   = 0xD0;//++
sfr ACC   = 0xE0;//++
sfr B     = 0xF0;//++
sfr SP    = 0x81;//++
sfr DPL   = 0x82;//++
sfr DPH   = 0x83;//++

sfr PCON  = 0x87;//++SMOD,SMOD0,LVDF,POF,GF1,GF0,PD,IDL
//-----------------------------------------------------
//T0X12,T1X12,UART_M0X6,BRTR,S2MOD,BRTX12,ERAM,S1BRS
sfr AUXR  = 0x8E;//辅助控制寄存器,主要是串口通讯

sfr WAKE_CLKO = 0x8F;//++
//-----------------------------------------------------
sfr CLK_DIV   = 0x97;//++

sfr TCON      = 0x88;//++
sfr TMOD      = 0x89;//++
sfr TL0       = 0x8A;//++
sfr TL1       = 0x8B;//++
sfr TH0       = 0x8C;//++
sfr TH1       = 0x8D;//++
//++++++++++++++++++++++++++++++++++
sfr SCON      = 0x98;//++
sfr SBUF      = 0x99;//++
sfr SADEN     = 0xB9;//++
sfr SADDR     = 0xA9;//++

sfr IE        = 0xA8;//++
sfr IP        = 0xB8;//++
sfr IPH       = 0xB7;//++
sfr ADC_CONTR = 0xBC;
sfr CCON      = 0xD8;
sfr CMOD      = 0xD9;
sfr CCAPM0    = 0xDA;
sfr CCAPM1    = 0xDB;

sfr CL        = 0xE9;
sfr CH        = 0xF9;

sfr CCAP0L    = 0xEA;
sfr CCAP0H    = 0xFA;
sfr CCAP1L    = 0xEB;
sfr CCAP1H    = 0xFB;
sfr PCA_PWM0  = 0xF2;
sfr PCA_PWM1  = 0xF3;
//======================================================
//======================================================
//EEPROM和WATCHDOG寄存器
sfr WDT_CONTR = 0xC1;//++ 

sfr ISP_DATA  = 0xC2; 
sfr ISP_ADDRH = 0xC3;
sfr ISP_ADDRL = 0xC4;
sfr ISP_CMD   = 0xC5;
sfr ISP_TRIG  = 0xC6;
sfr ISP_CONTR = 0xC7; //EEPROM操作寄存器
//=======================================================
sfr ADC_RESL  = 0xBE;  
sfr SPSTAT    = 0xCD;
sfr SPCTL     = 0xCE;
sfr SPDAT     = 0xCF; //p4口

sfr AUXR1     = 0xA2; //辅助控制寄存器,主要是串口通讯
sfr IE2       = 0xAF; //扩展中断控制寄存器
//++++++++++++++++++++++++++++++++++
sfr  IP2   = 0xB5;//扩展中断优先级寄存器
sfr  IPH2  = 0xB6;//扩展中断优先级寄存器

sfr S2CON  = 0x9A;//串口2控制寄存器
sfr S2BUF  = 0x9B;//串口2数据缓冲寄存器
sfr S2BRT  = 0x9C;//串口2波特率寄存器

//=====================================================
//=====================================================
//注意:STC12C5A56S2没有定时器2,可以用PCA模块来构造
/*  8052 Extensions  */
//sfr T2CON  = 0xC8;
//sfr RCAP2L = 0xCA;
//sfr RCAP2H = 0xCB;
//sfr TL2    = 0xCC;
//sfr TH2    = 0xCD;


//=======================================================
//=======================================================
/*  BIT Registers  */
/*  PSW  */
sbit CY    = PSW^7;
sbit AC    = PSW^6;
sbit F0    = PSW^5;
sbit RS1   = PSW^4;
sbit RS0   = PSW^3;
sbit OV    = PSW^2;
sbit P     = PSW^0; //8052 only

/*  TCON  */
sbit TF1   = TCON^7;
sbit TR1   = TCON^6;
sbit TF0   = TCON^5;
sbit TR0   = TCON^4;
sbit IE1   = TCON^3;
sbit IT1   = TCON^2;
sbit IE0   = TCON^1;
sbit IT0   = TCON^0;

/*  IE  */
sbit EA    = IE^7;
//sbit ET2   = IE^5; //8052 only
sbit ES    = IE^4;
sbit ET1   = IE^3;
sbit EX1   = IE^2;
sbit ET0   = IE^1;
sbit EX0   = IE^0;

/*  IP  */
//sbit PT2   = IP^5;
sbit PS    = IP^4;
sbit PT1   = IP^3;
sbit PX1   = IP^2;
sbit PT0   = IP^1;
sbit PX0   = IP^0;

/*  P3  */
sbit RD    = P3^7;
sbit WR    = P3^6;
sbit T1    = P3^5;
sbit T0    = P3^4;
sbit INT1  = P3^3;
sbit INT0  = P3^2;
sbit TXD   = P3^1;
sbit RXD   = P3^0;

/*  SCON  */
sbit SM0   = SCON^7;
sbit SM1   = SCON^6;
sbit SM2   = SCON^5;
sbit REN   = SCON^4;
sbit TB8   = SCON^3;
sbit RB8   = SCON^2;
sbit TI    = SCON^1;
sbit RI    = SCON^0;

/*  P1  */
//sbit T2EX  = P1^1; // 8052 only
//sbit T2    = P1^0; // 8052 only
             
/*  T2CON  */
//sbit TF2    = T2CON^7;
//sbit EXF2   = T2CON^6;
//sbit RCLK   = T2CON^5;
//sbit TCLK   = T2CON^4;
//sbit EXEN2  = T2CON^3;
//sbit TR2    = T2CON^2;
//sbit C_T2   = T2CON^1;
//sbit CP_RL2 = T2CON^0;

sbit WD_IN  = P1^5;
sbit DIR_485 = P1^0; //==0时接收,==1时发送
sbit DOOR = P3^2;    //门开关信号,==1开,==0闭

sbit WORK_LED = P3^6; //工作指示灯==0时亮
sbit ERR_LED = P3^7;  //故障指示灯==0时亮
sbit SPEAKER = P4^0;  //故障蜂鸣器==0时响

#endif
