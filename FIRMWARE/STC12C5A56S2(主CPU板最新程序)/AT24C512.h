#ifndef _AT24C512_H_
#define _AT24C512_H_

//��ʱ
void delay(unsigned int loop);

//���洢��ָ����ַд����
void AT512_Write(unsigned char *Data,long addr,unsigned int num);

//��ȡ����ҳָ����ַ�����ֽ�
void AT512_Read(unsigned char Data[],long addr,unsigned int num);

//���洢��ָ����ַ���
void AT512_Write_Zero(long addr,unsigned int num);

//�洢������
//void Init_C512(void);

//����ָ���ʼ��
void ADDRESS_First_Init(void); 

//����ָ���ʼ��
void ADDRESS_Second_Init(void);

//��ȡ�洢оƬ��ַ
void GET_ADDRESS(void); 

//����洢оƬ��ַ
void SAVE_ADDRESS(unsigned char n);

#endif	//_PCF8563_H_