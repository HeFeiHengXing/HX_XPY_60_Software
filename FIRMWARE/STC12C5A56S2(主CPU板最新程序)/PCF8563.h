#ifndef _PCF8563_H_
#define _PCF8563_H_

//停止定时器
void stop_sys(void);

//启动定时器
void start_sys(void);

//以分钟的方式启动定时器
void START_8563(void);

//将定时器的定时方式改为秒
void S10_START_8563(unsigned char count);

#endif	//_PCF8563_H_
