VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form7 
   Caption         =   "��ѯ"
   ClientHeight    =   1590
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3090
   LinkTopic       =   "Form7"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1590
   ScaleWidth      =   3090
   StartUpPosition =   3  '����ȱʡ
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   270
      OleObjectBlob   =   "searchfrm.frx":0000
      Top             =   90
   End
   Begin VB.CommandButton Command2 
      Caption         =   "ȡ��"
      Height          =   375
      Left            =   1800
      TabIndex        =   3
      Top             =   1080
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ȷ��"
      Height          =   375
      Left            =   600
      TabIndex        =   2
      Top             =   1080
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   720
      TabIndex        =   1
      Top             =   600
      Width           =   2175
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   240
      OleObjectBlob   =   "searchfrm.frx":0234
      TabIndex        =   0
      Top             =   240
      Width           =   1935
   End
End
Attribute VB_Name = "Form7"
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

Private Sub Command1_Click()                                                    '��ѯ��ť
    
    Dim r As Integer                                                            'r�ڴ���Ϊ��λ��־λ
    
    Dim m As Integer                                                            'm�ڴ���Ϊ��λ��־λ
    
    If Text1.Text = "" Then
        
        answer = MsgBox("��ʾ��û������������!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      '��������������
            
            Text1.Enabled = True
            
            Exit Sub
            
        End If
        
    End If
    
    r = 0                                                                       '��ʼ���벡�˸�����Ϣ
    
    Dim bNewRevision As Boolean
    
    Open App.Path & "\sys\sys.txt" For Input As #2                              '���ļ��ж�ȡ
    
    Line Input #2, textline
    
    If textline = "Revision 2017" Then
        
        bNewRevision = True
        
    Else
        
        bNewRevision = False
        
    End If
    
    Do While Not EOF(2)
        
        If r <> 0 Or bNewRevision Then
            Line Input #2, textline                                             '�������1�д浽����TextLine��
        End If
        Form2.SkinLabel2(r).Caption = textline                                  '��������
        
        Line Input #2, textline                                                 '������������
        
        If bNewRevision Then
            Line Input #2, textline
        End If
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        
        r = r + 1                                                               'ѭ��
        
    Loop
    
    Close #2
    
    For m = 0 To 59
        
        If Form2.SkinLabel2(m) = Text1.Text Then                                '�鵽��Ҫ������������
            
            n = m
            
            Form3.Show
            
            Unload Form7
            
            Exit Sub
            
        End If
        
    Next m
    
    answer = MsgBox("��ʾ����ǰ������������д���������Ѳ���", 48, "��Ϣ��ʾ")
    
    If answer = 1 Then                                                          '��������������
        
        Text1.Text = ""
        
        Exit Sub
        
    End If
    
End Sub

Private Sub Command2_Click()                                                    'ȡ����ť
    
    Form2.Enabled = True                                                        '������������
    
    Unload Form7                                                                'ж�ر�����
    
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)                                 '������ֻ���������ֺ�ʹ�ÿո�
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub

