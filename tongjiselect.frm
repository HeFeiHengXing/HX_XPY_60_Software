VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form12 
   Caption         =   "ͳ�Ʒ�ʽѡ�����"
   ClientHeight    =   2790
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3150
   LinkTopic       =   "Form12"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2790
   ScaleWidth      =   3150
   StartUpPosition =   3  '����ȱʡ
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   2160
      OleObjectBlob   =   "tongjiselect.frx":0000
      Top             =   270
   End
   Begin VB.CommandButton Command3 
      Caption         =   "������ƿ����ͳ�ư�ť"
      Height          =   495
      Left            =   480
      TabIndex        =   3
      Top             =   2160
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
      Caption         =   "������ͳ�ư�ť"
      Height          =   495
      Left            =   480
      TabIndex        =   2
      Top             =   1440
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��ʱ��ͳ�ư�ť"
      Height          =   495
      Left            =   480
      TabIndex        =   1
      Top             =   720
      Width           =   2175
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "tongjiselect.frx":0234
      TabIndex        =   0
      Top             =   240
      Width           =   1935
   End
End
Attribute VB_Name = "Form12"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '�������
    
    Skin1.LoadSkin App.Path + "\Skins\3.skn"
    
    Skin1.ApplySkin Me.hWnd                                                     ''
    
End Sub

Private Sub Command1_Click()                                                    '��ʱ��ͳ�ư�ť
    
    Unload Form12                                                               'ж�ر�����
    
    Form8.Show                                                                  '��ʾ��ʱ��ͳ�ƽ���
    
End Sub

Private Sub Command2_Click()                                                    '������ͳ��
    
    Unload Form12                                                               'ж�ر�����
    
    Form13.Show                                                                 '��ʾ������ͳ�ƽ���
    
End Sub

Private Sub Command3_Click()                                                    '������ƿ����ͳ��
    
    Unload Form12                                                               'ж�ر�����
    
    Form14.Show                                                                 '��ʾ������ƿͳ�ƽ���
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    
    Form2.Enabled = True                                                        '�����������
    
    Unload Form12                                                               'ж�ر�����
    
End Sub
