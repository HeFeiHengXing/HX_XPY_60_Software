VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form8 
   Caption         =   "��ʱ��ͳ�ƽ���"
   ClientHeight    =   2565
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   2400
   LinkTopic       =   "Form8"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2565
   ScaleWidth      =   2400
   StartUpPosition =   3  '����ȱʡ
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   675
      OleObjectBlob   =   "countfrm.frx":0000
      Top             =   180
   End
   Begin VB.CommandButton Command2 
      Caption         =   "ȡ��"
      Height          =   375
      Left            =   1320
      TabIndex        =   6
      Top             =   1920
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ȷ��"
      Height          =   375
      Left            =   240
      TabIndex        =   5
      Top             =   1920
      Width           =   735
   End
   Begin VB.ComboBox Combo2 
      Height          =   300
      ItemData        =   "countfrm.frx":0234
      Left            =   960
      List            =   "countfrm.frx":025C
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   1320
      Width           =   975
   End
   Begin VB.ComboBox Combo1 
      Height          =   300
      ItemData        =   "countfrm.frx":0290
      Left            =   960
      List            =   "countfrm.frx":02B8
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   840
      Width           =   975
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "countfrm.frx":0304
      TabIndex        =   2
      Top             =   1320
      Width           =   375
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "countfrm.frx":0366
      TabIndex        =   1
      Top             =   840
      Width           =   375
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "countfrm.frx":03C8
      TabIndex        =   0
      Top             =   240
      Width           =   1575
   End
End
Attribute VB_Name = "Form8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long) As Long

Const WS_SYSMENU = &H80000                                                      ''''''''''''''''''''''''''''''���������ϵ�X��ť
Const GWL_STYLE = (-16)
Const SWP_NOMOVE = &H2
Const SWP_NOSIZE = &H1
Const SWP_NOZORDER = &H4
Const SWP_DRAWFRAME = &H20

Private Sub Form_Load()
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '�������
    
    Skin1.LoadSkin App.Path + "\Skins\3.skn"
    
    Skin1.ApplySkin Me.hWnd                                                     '����Ƥ��
    
    Dim lStyle As Long                                                          ''''''''''''''''''''''''''''''���������ϵ�X��ť
    lStyle = GetWindowLong(hWnd, GWL_STYLE)
    lStyle = lStyle And Not WS_SYSMENU
    SetWindowLong Me.hWnd, GWL_STYLE, lStyle
    SetWindowPos Me.hWnd, 0, 0, 0, 0, 0, SWP_NOZORDER Or SWP_DRAWFRAME Or SWP_NOMOVE Or SWP_NOSIZE
    
End Sub

Private Sub Command1_Click()                                                    '������������ͳ������
    
    If Combo1.Text = "" Then                                                    '���Ϊ��
        
        answer = MsgBox("��ʾ��û���������!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      '�����������
            
            Combo1.Enabled = True
            
            Exit Sub
            
        End If
        
    ElseIf Combo2.Text = "" Then                                                '�·�Ϊ��
        
        answer = MsgBox("��ʾ��û�������·�!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      '���������·�
            
            Combo2.Enabled = True
            
            Exit Sub
            
        End If
        
    End If
    
    If Dir(App.Path & "\statistics\" & Combo1.Text & "-" & Combo2.Text, vbDirectory) = "" Then
        
        answer = MsgBox("��ʾ�����������д�!", 48, "��Ϣ��ʾ")                  '���ڸ����µ�ͳ������Ϊ��
        
        If answer = 1 Then                                                      '����������ݼ��·�
            
            Exit Sub
            
        End If
        
    End If
    
    Form2.RichTextBox1.LoadFile App.Path & "\statistics\" & Combo1.Text & "-" & Combo2.Text & "\" & "ͳ�����" & ".txt" '����������ͳ������
    
    Form2.Enabled = True                                                        '������������
    
    file1 = Combo1.Text
    
    file2 = Combo2.Text
    
    Form2.Command13.Enabled = True                                              '��ӡ��ť����
    
    Unload Form8                                                                'ж�ر�����
    
End Sub

Private Sub Command2_Click()                                                    'ȡ����ť
    
    Form2.Enabled = True                                                        '������������
    
    Unload Form8                                                                'ж�ر�����
    
End Sub
