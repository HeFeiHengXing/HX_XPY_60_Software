#ifndef _PCF8563_H_
#define _PCF8563_H_

//ֹͣ��ʱ��
void stop_sys(void);

//������ʱ��
void start_sys(void);

//�Է��ӵķ�ʽ������ʱ��
void START_8563(void);

//����ʱ���Ķ�ʱ��ʽ��Ϊ��
void S10_START_8563(unsigned char count);

#endif	//_PCF8563_H_
