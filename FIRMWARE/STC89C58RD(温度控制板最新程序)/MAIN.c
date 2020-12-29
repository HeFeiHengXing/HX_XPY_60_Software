
#include  <main.h>
void initial(void);
float set_temperature = 35.0;        //设置的温度值
float temperature = 0;               //实际检测到的温度值
volatile uint time_counter = 0;      //电机运动时间计数器
uchar motor_move = 0, motor_flag = 0;//电机运动标志
uchar error = 0;
uchar delay_counter = 0;             //延时计数器
uchar motor_over = 0;
//*******************************************************//
//* 函 数 名: main()									 //
//* 函数功能: 实时检测环境温度并显示					 //
//* 入口参数: 无										 //
//* 返    回: 无										 //
//*******************************************************//

void main(void)
{	
    uchar data_in = 0x00;//接收的命令参数
    EA = 0;      //关总中断
    SP = 0x70;   //堆栈指针
    AUXR = 0x01; //关闭ALE

    WD_IN ^= 1;  //喂狗
    initial();	 //初始化    

    MOTOR = 1;
    FAN = 1;
    HEATER = 1;  //停止风扇

    temperature = 85.00;
    while(temperature >= 84.00)
      {
        DS18B20_Reset();
        Get_temper();
        temperature = temper_data_int + temper_data_fla;
      }
    
    EA = 1;     //开总中断
    TR0 = 1;    //开启定时器计算时间
	ET0 = 1;    //允许定时器0中断
    WORK = 0;

	while(1)
	{
       WD_IN^=1;  //喂狗
       if(DOOR == 1)
         {
           FAN = 1;//停止风扇
           if(POS == 1)
             {
                MOTOR = 1;//停止电机
                motor_flag = 0;motor_move = 0;//检测电机故障复位
             }
         }
       if(POS == 1)
         { 
           motor_flag = 1; 
           if(error == 1)  error = 0;

           if(time_counter == 0)
             {
               MOTOR = 1;//关闭电机
               motor_flag = 0;motor_move = 0;//检测电机故障复位
             }
         }
       if(time_counter == 0 && motor_flag == 0 && motor_move == 1&&motor_over == 2)
          //error = 1; 

       if(DS18B20_Reset() == 0)  error = 3;      //设备复位出错	          

       if(Get_temper() == 0)     error = 3;      //获取温度值出错           

       temperature = temper_data_int + temper_data_fla;
       //printf("this is temp %f\n",temperature);
       //printf("this is settemp %f\n",set_temperature);
       if(temperature > (set_temperature+15.0))	 error = 2;
       else if(error == 2)	                     error = 0;
          
	   //*********************回送实际温度************************
       if(temperature > 45.0)   temperature = 45.0;

       else if(temperature < 20.0)  temperature = 20.0;

       if(error == 0)
         {
            WORK = 0;
            DB_OUT = (uchar)(temperature*10 - 199.5);
         }
       else//错误处理
         {
          // EA = 0;//关总中断
           WORK = 1;//关闭工作指示灯
           //WD_IN ^= 1;  //喂狗
           //MOTOR = 1;FAN = 1;HEATER = 1;//停止风扇，电机，加热器
           if(error == 1)	     DB_OUT =  251; //电机或位置开关故障
           else if(error == 2)   DB_OUT =  252; //温控故障
           else if(error == 3)	 DB_OUT =  253; //温度传感器故障                
         }
            
	   //*****************接收数据并作出处理**********************
       data_in = DB_IN;  //读取控制端口数据
       if(data_in >= 150 && data_in <= 250)
         {
            set_temperature = data_in/10.0 + 15;
         }
       else if(data_in == 148 && time_counter <= 200)
         {
            MOTOR = 0;      //开启电机
            motor_move = 1;
            motor_over = 1;
            TR0 = 1;        //开启定时器计算时间
	        ET0 = 1;        //允许定时器0中断
            time_counter = 8000;
         }
            
	   /*****************其他的处理**********************/
       //1.温度控制
       if(temperature >= set_temperature)
         {
            HEATER = 1; //停止加热器
            FAN = 1;    //停止风扇
            if(DOOR == 1)
              {
                if(POS == 1)
                  {
                     MOTOR = 1;//停止电机
                     motor_flag = 0;motor_move = 0;//检测电机故障复位
                  }
              }
         }
       else
         {
            if(DOOR == 1)
              {
                FAN = 1; //停止风扇
                if(POS == 1)
                  {
                     MOTOR = 1;//停止电机
                     motor_flag = 0;motor_move = 0;//检测电机故障复位
                  }
              }
            else
               FAN = 0;    //启动风扇
               HEATER = 0; //启动加热器
                
         }          
    }	
}

/******************* 外部中断0服务程序 *******************/
void Ext0_Interrupt() interrupt 0 using 0  
{
  //EA=0;
  // EA=1;//开中断
}

/******************* 定时器0服务程序 *********************/
void Timer0_Interrupt() interrupt 1 using 0  
{   
    TH0 = 0x3c;
    TL0 = 0xb0;  //50mS
    if(motor_over == 1&&time_counter > 0)  
        time_counter--;
    if(motor_over == 2)   delay_counter++; 
        
    if(time_counter == 0) motor_over = 2;

    if(delay_counter == 250)
      {
        motor_over = 0;
        delay_counter = 0;
        MOTOR = 1; //停止电机
        TR0 = 0;   
	    ET0 = 0;   
      }

    if(POS == 1)
      { 
        motor_flag = 1; 
        if(error == 1)	error = 0;
        if(time_counter == 0)
          {
            MOTOR = 1;//关闭电机
            motor_flag = 0;motor_move = 0;
          }
      }  
}
/******************* 外部中断1服务程序 *******************/
void Ext1_Interrupt() interrupt 2 using 0  
{
    //EA=0;
    motor_flag = 1; 
    if(error == 1) error = 0;
    
	if(time_counter == 0)
      {
         MOTOR = 1;//关闭电机
         motor_flag = 0;motor_move = 0;
      }
   
    //EA=1; 
}
 

/********************* 定时器0初始化 *********************/
void initial(void)
{  	
    ET0 = 0;   
    TR0 = 0;
    TF0 = 0;
    TMOD = 0x21;//0010 0001b 
    TH0 = 0x3c;
    TL0 = 0xb0; 
    TR0 = 0;    
    ET0 = 0;    
}
//********************************** 2012-04-06 *****************************//