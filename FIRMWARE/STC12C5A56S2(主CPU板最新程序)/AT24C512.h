#ifndef _AT24C512_H_
#define _AT24C512_H_

//延时
void delay(unsigned int loop);

//往存储器指定地址写数据
void AT512_Write(unsigned char *Data,long addr,unsigned int num);

//读取物理页指定地址若干字节
void AT512_Read(unsigned char Data[],long addr,unsigned int num);

//将存储器指定地址清空
void AT512_Write_Zero(long addr,unsigned int num);

//存储器清零
//void Init_C512(void);

//数据指针初始化
void ADDRESS_First_Init(void); 

//数据指针初始化
void ADDRESS_Second_Init(void);

//获取存储芯片地址
void GET_ADDRESS(void); 

//保存存储芯片地址
void SAVE_ADDRESS(unsigned char n);

#endif	//_PCF8563_H_