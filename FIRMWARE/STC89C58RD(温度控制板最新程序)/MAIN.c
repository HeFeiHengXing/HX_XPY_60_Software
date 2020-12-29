
#include  <main.h>
void initial(void);
float set_temperature = 35.0;        //���õ��¶�ֵ
float temperature = 0;               //ʵ�ʼ�⵽���¶�ֵ
volatile uint time_counter = 0;      //����˶�ʱ�������
uchar motor_move = 0, motor_flag = 0;//����˶���־
uchar error = 0;
uchar delay_counter = 0;             //��ʱ������
uchar motor_over = 0;
//*******************************************************//
//* �� �� ��: main()									 //
//* ��������: ʵʱ��⻷���¶Ȳ���ʾ					 //
//* ��ڲ���: ��										 //
//* ��    ��: ��										 //
//*******************************************************//

void main(void)
{	
    uchar data_in = 0x00;//���յ��������
    EA = 0;      //�����ж�
    SP = 0x70;   //��ջָ��
    AUXR = 0x01; //�ر�ALE

    WD_IN ^= 1;  //ι��
    initial();	 //��ʼ��    

    MOTOR = 1;
    FAN = 1;
    HEATER = 1;  //ֹͣ����

    temperature = 85.00;
    while(temperature >= 84.00)
      {
        DS18B20_Reset();
        Get_temper();
        temperature = temper_data_int + temper_data_fla;
      }
    
    EA = 1;     //�����ж�
    TR0 = 1;    //������ʱ������ʱ��
	ET0 = 1;    //����ʱ��0�ж�
    WORK = 0;

	while(1)
	{
       WD_IN^=1;  //ι��
       if(DOOR == 1)
         {
           FAN = 1;//ֹͣ����
           if(POS == 1)
             {
                MOTOR = 1;//ֹͣ���
                motor_flag = 0;motor_move = 0;//��������ϸ�λ
             }
         }
       if(POS == 1)
         { 
           motor_flag = 1; 
           if(error == 1)  error = 0;

           if(time_counter == 0)
             {
               MOTOR = 1;//�رյ��
               motor_flag = 0;motor_move = 0;//��������ϸ�λ
             }
         }
       if(time_counter == 0 && motor_flag == 0 && motor_move == 1&&motor_over == 2)
          //error = 1; 

       if(DS18B20_Reset() == 0)  error = 3;      //�豸��λ����	          

       if(Get_temper() == 0)     error = 3;      //��ȡ�¶�ֵ����           

       temperature = temper_data_int + temper_data_fla;
       //printf("this is temp %f\n",temperature);
       //printf("this is settemp %f\n",set_temperature);
       if(temperature > (set_temperature+15.0))	 error = 2;
       else if(error == 2)	                     error = 0;
          
	   //*********************����ʵ���¶�************************
       if(temperature > 45.0)   temperature = 45.0;

       else if(temperature < 20.0)  temperature = 20.0;

       if(error == 0)
         {
            WORK = 0;
            DB_OUT = (uchar)(temperature*10 - 199.5);
         }
       else//������
         {
          // EA = 0;//�����ж�
           WORK = 1;//�رչ���ָʾ��
           //WD_IN ^= 1;  //ι��
           //MOTOR = 1;FAN = 1;HEATER = 1;//ֹͣ���ȣ������������
           if(error == 1)	     DB_OUT =  251; //�����λ�ÿ��ع���
           else if(error == 2)   DB_OUT =  252; //�¿ع���
           else if(error == 3)	 DB_OUT =  253; //�¶ȴ���������                
         }
            
	   //*****************�������ݲ���������**********************
       data_in = DB_IN;  //��ȡ���ƶ˿�����
       if(data_in >= 150 && data_in <= 250)
         {
            set_temperature = data_in/10.0 + 15;
         }
       else if(data_in == 148 && time_counter <= 200)
         {
            MOTOR = 0;      //�������
            motor_move = 1;
            motor_over = 1;
            TR0 = 1;        //������ʱ������ʱ��
	        ET0 = 1;        //����ʱ��0�ж�
            time_counter = 8000;
         }
            
	   /*****************�����Ĵ���**********************/
       //1.�¶ȿ���
       if(temperature >= set_temperature)
         {
            HEATER = 1; //ֹͣ������
            FAN = 1;    //ֹͣ����
            if(DOOR == 1)
              {
                if(POS == 1)
                  {
                     MOTOR = 1;//ֹͣ���
                     motor_flag = 0;motor_move = 0;//��������ϸ�λ
                  }
              }
         }
       else
         {
            if(DOOR == 1)
              {
                FAN = 1; //ֹͣ����
                if(POS == 1)
                  {
                     MOTOR = 1;//ֹͣ���
                     motor_flag = 0;motor_move = 0;//��������ϸ�λ
                  }
              }
            else
               FAN = 0;    //��������
               HEATER = 0; //����������
                
         }          
    }	
}

/******************* �ⲿ�ж�0������� *******************/
void Ext0_Interrupt() interrupt 0 using 0  
{
  //EA=0;
  // EA=1;//���ж�
}

/******************* ��ʱ��0������� *********************/
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
        MOTOR = 1; //ֹͣ���
        TR0 = 0;   
	    ET0 = 0;   
      }

    if(POS == 1)
      { 
        motor_flag = 1; 
        if(error == 1)	error = 0;
        if(time_counter == 0)
          {
            MOTOR = 1;//�رյ��
            motor_flag = 0;motor_move = 0;
          }
      }  
}
/******************* �ⲿ�ж�1������� *******************/
void Ext1_Interrupt() interrupt 2 using 0  
{
    //EA=0;
    motor_flag = 1; 
    if(error == 1) error = 0;
    
	if(time_counter == 0)
      {
         MOTOR = 1;//�رյ��
         motor_flag = 0;motor_move = 0;
      }
   
    //EA=1; 
}
 

/********************* ��ʱ��0��ʼ�� *********************/
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