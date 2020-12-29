#ifndef _COMMUNICATIONS_H_
#define _COMMUNICATIONS_H_

//串口1初始化
void COM1_initial(void);

//串口2初始化
void COM2_initial(void);

void COM1_send_char(unsigned char CH);

void COM1_send_string(unsigned char *str,int strlen);

void COM2_send_char(unsigned char CH);

#endif	//_PCF8563_H_