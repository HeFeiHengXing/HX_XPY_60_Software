VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form4 
   Caption         =   "��Ϣ�������"
   ClientHeight    =   4125
   ClientLeft      =   11910
   ClientTop       =   2280
   ClientWidth     =   5475
   LinkTopic       =   "Form4"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4125
   ScaleWidth      =   5475
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1800
      TabIndex        =   19
      Top             =   375
      Width           =   3180
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   975
      TabIndex        =   17
      Top             =   975
      Width           =   1230
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   870
      TabIndex        =   14
      Top             =   1530
      Width           =   375
   End
   Begin VB.ComboBox Combo2 
      Height          =   300
      ItemData        =   "mesinputfrm.frx":0000
      Left            =   1410
      List            =   "mesinputfrm.frx":0016
      Style           =   2  'Dropdown List
      TabIndex        =   11
      Top             =   2175
      Width           =   3570
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��һ��"
      Height          =   375
      Left            =   1590
      TabIndex        =   10
      Top             =   3375
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "ȡ��"
      Height          =   375
      Left            =   3150
      TabIndex        =   9
      Top             =   3375
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "��"
      Height          =   255
      Left            =   2640
      TabIndex        =   6
      Top             =   2655
      Width           =   255
   End
   Begin VB.CommandButton Command4 
      Caption         =   "��"
      Height          =   255
      Left            =   2640
      TabIndex        =   5
      Top             =   2895
      Width           =   255
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   1920
      TabIndex        =   3
      Top             =   1530
      Width           =   405
   End
   Begin VB.ComboBox Combo1 
      Height          =   300
      ItemData        =   "mesinputfrm.frx":0080
      Left            =   3000
      List            =   "mesinputfrm.frx":0082
      TabIndex        =   2
      Top             =   1530
      Width           =   1980
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   2715
      TabIndex        =   0
      Top             =   975
      Width           =   2235
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
      Height          =   240
      Left            =   2400
      OleObjectBlob   =   "mesinputfrm.frx":0084
      TabIndex        =   1
      Top             =   990
      Width           =   360
   End
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   510
      OleObjectBlob   =   "mesinputfrm.frx":00E8
      Top             =   180
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
      Height          =   255
      Left            =   3120
      OleObjectBlob   =   "mesinputfrm.frx":031C
      TabIndex        =   4
      Top             =   2775
      Width           =   255
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
      Height          =   255
      Left            =   2040
      OleObjectBlob   =   "mesinputfrm.frx":037C
      TabIndex        =   7
      Top             =   2775
      Width           =   255
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "mesinputfrm.frx":03DA
      TabIndex        =   8
      Top             =   2775
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "mesinputfrm.frx":0446
      TabIndex        =   12
      Top             =   2175
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
      Height          =   255
      Left            =   2520
      OleObjectBlob   =   "mesinputfrm.frx":04B0
      TabIndex        =   13
      Top             =   1575
      Width           =   735
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "mesinputfrm.frx":0514
      TabIndex        =   15
      Top             =   1575
      Width           =   735
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
      Height          =   255
      Left            =   1440
      OleObjectBlob   =   "mesinputfrm.frx":0578
      TabIndex        =   16
      Top             =   1560
      Width           =   615
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "mesinputfrm.frx":05DC
      TabIndex        =   18
      Top             =   975
      Width           =   735
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "mesinputfrm.frx":0640
      TabIndex        =   20
      Top             =   375
      Width           =   1455
   End
End
Attribute VB_Name = "Form4"
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
Private CheckBarcode As Boolean

Private Sub Form_Load()                                                         '��ʼ��������Ϣ
    
    CheckBarcode = True
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '�������
    
    Skin1.LoadSkin App.Path + "\Skins\3.skn"
    
    Skin1.ApplySkin Me.hWnd                                                     '����Ƥ��
    
    Dim lStyle As Long                                                          ''''''''''''''''''''''''''''''���������ϵ�X��ť
    lStyle = GetWindowLong(hWnd, GWL_STYLE)
    lStyle = lStyle And Not WS_SYSMENU
    SetWindowLong Me.hWnd, GWL_STYLE, lStyle
    SetWindowPos Me.hWnd, 0, 0, 0, 0, 0, SWP_NOZORDER Or SWP_DRAWFRAME Or SWP_NOMOVE Or SWP_NOSIZE
    
    Open App.Path & "\sys\settime.txt" For Input As #11                         '���ļ��ж�ȡ����ʱ��
    
    Line Input #11, textline                                                    '���������ݴ浽����TextLine��
    
    SkinLabel8.Caption = Val(textline)                                          '��ʾ����ʱ��
    
    Close #11
    
    Open App.Path & "\sys\section.txt" For Input As #12                         '���ļ��ж�ȡ�������
    
    Do While Not EOF(12)                                                        'EOFΪ��β���list
        
        Line Input #12, textline
        
        If (Trim(textline)) <> "" Then
            
            Combo1.AddItem (Trim(textline))                                     '��ӿ�������
            
        End If
        
    Loop
    
    Close #12
    
End Sub

Private Sub Command1_Click()                                                    '���и�������
    
    If Dir(App.Path & "\statistics\" & Format(Now, "yyyy-mm"), vbDirectory) = "" Then '��ǰ�����ļ���Ϊ��
        
        sum = 0: sum1 = 0: sum2 = 0
        
        keshi_nk1 = 0: keshi_nk2 = 0: keshi_wk1 = 0: keshi_wk2 = 0: keshi_xk1 = 0: keshi_xk2 = 0: keshi_fk1 = 0: keshi_fk2 = 0
        
        pyp_bs1 = 0: pyp_bs2 = 0: pyp_yy1 = 0: pyp_yy2 = 0: pyp_zx1 = 0: pyp_zx2 = 0: pyp_zs1 = 0: pyp_zs2 = 0: pyp_zy1 = 0: pyp_zy2 = 0: pyp_fg1 = 0: pyp_fg2 = 0
        
        MkDir App.Path & "\statistics\" & Format(Now, "yyyy-mm")                '�������ڸ����µ�ͳ���ļ���
        
    End If
    
    If Dir(App.Path & "\data\" & Text1.Text & ".txt") <> "" Then                '���������Ѵ���
        
        answer = MsgBox("�������ظ���", 48, "��Ϣ��ʾ")
        
        If answer = vbOK Then
            
            Exit Sub
            
        End If
        
    End If
    
    If Text1.Text = "" Then                                                     '������Ϊ��
        
        answer = MsgBox("��ʾ��û������������!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      '��������������
            
            Text1.Enabled = True
            
            Exit Sub
            
        End If
        
        'ElseIf Combo1.Text = "" Then  '����Ϊ��,2012-3-5,ȥ������������ѡ����
        
        'answer = MsgBox("��ʾ��û���������!", 48, "��Ϣ��ʾ")
        
        'If answer = 1 Then  '������������ƿ����
        
        ' Combo1.Enabled = True
        
        ' Exit Sub
        
        ' End If
        
    ElseIf Combo2.Text = "" Then                                                '����ƿ����Ϊ��
        
        answer = MsgBox("��ʾ��û����������ƿ����!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      '������������ƿ����
            
            Combo2.Enabled = True
            
            Exit Sub
            
        End If
        
    Else
        
        If Combo1.Text = "" Then                                                '����Ϊ��
            
            Combo1.Text = "��������"
            
        End If
        
        Dim nn As Integer
        
        If Combo1.ListIndex = -1 Then
            
            Dim isNew As Boolean
            
            isNew = True
            
            For nn = 0 To Combo1.ListCount
                
                If Combo1.List(nn) = Trim(Combo1.Text) Then
                    
                    isNew = False
                    
                End If
                
            Next nn
            
            If isNew Then
                
                Open App.Path & "\sys\section.txt" For Output As #14            '���ļ�����ӿ������
                
                Print #14, Trim(Combo1.Text)
                
                For nn = 0 To Combo1.ListCount
                    
                    Print #14, Combo1.List(nn)
                    
                Next nn
                
                Close #14
                
            End If
            
        End If
        
        If Text2.Text = "" Then                                                 '����Ϊ��
            
            Text2.Text = "��"
            
        End If
        
        If Text5.Text = "" Then                                                 '�Ա�Ϊ��
            
            Text5.Text = "��"
            
        End If
        
        If Text3.Text = "" Then                                                 '����Ϊ��
            
            Text3.Text = "��"
            
        End If
        
        Form3.SkinLabel2.Caption = Text1.Text                                   '������
        Form3.SkinLabel4.Caption = Text2.Text                                   ''����
        Form3.SkinLabel23.Caption = Text4.Text                                  ' ID
        Form3.SkinLabel6.Caption = Text5.Text                                   '�Ա�
        Form3.SkinLabel8.Caption = Text3.Text                                   '����
        Form3.SkinLabel10.Caption = Combo1.Text                                 '����
        Form3.SkinLabel12.Caption = Combo2.Text                                 '����ƿ����
        Form3.SkinLabel14.Caption = SkinLabel8.Caption                          '����ʱ��
        Form3.SkinLabel16.Caption = Format(Now, "mm-dd hh:mm")                  'ʱ��:����+ʱ��
        
    End If
    
    Select Case n
        
    Case 0
        
        command(0) = &H1
        
        Form2.MSComm1.Output = command                                          '�Ե�1���Ʒ����������(1)
        
        command(0) = &HFF                                                       '�������
        
    Case 1
        
        command(0) = &H2
        
        Form2.MSComm1.Output = command                                          '�Ե�2���Ʒ����������(2)
        
        command(0) = &HFF                                                       '�������
        
    Case 2
        
        command(0) = &H3
        
        Form2.MSComm1.Output = command                                          '�Ե�3���Ʒ����������(3)
        
        command(0) = &HFF                                                       '�������
        
    Case 3
        
        command(0) = &H4
        
        Form2.MSComm1.Output = command                                          '�Ե�4���Ʒ����������(4)
        
        command(0) = &HFF                                                       '�������
        
    Case 4
        
        command(0) = &H5
        
        Form2.MSComm1.Output = command                                          '�Ե�5���Ʒ����������(5)
        
        command(0) = &HFF                                                       '�������
        
    Case 5
        
        command(0) = &H6
        
        Form2.MSComm1.Output = command                                          '�Ե�6���Ʒ����������(6)
        
        command(0) = &HFF                                                       '�������
        
    Case 6
        
        command(0) = &H7
        
        Form2.MSComm1.Output = command                                          '�Ե�7���Ʒ����������(7)
        
        command(0) = &HFF                                                       '�������
        
    Case 7
        
        command(0) = &H8
        
        Form2.MSComm1.Output = command                                          '�Ե�8���Ʒ����������(8)
        
        command(0) = &HFF                                                       '�������
        
    Case 8
        
        command(0) = &H9
        
        Form2.MSComm1.Output = command                                          '�Ե�9���Ʒ����������(9)
        
        command(0) = &HFF                                                       '�������
        
    Case 9
        
        command(0) = &HA
        
        Form2.MSComm1.Output = command                                          '�Ե�10���Ʒ����������(10)
        
        command(0) = &HFF                                                       '�������
        
    Case 10
        
        command(0) = &HB
        
        Form2.MSComm1.Output = command                                          '�Ե�11���Ʒ����������(11)
        
        command(0) = &HFF                                                       '�������
        
    Case 11
        
        command(0) = &HC
        
        Form2.MSComm1.Output = command                                          '�Ե�12���Ʒ����������(12)
        
        command(0) = &HFF                                                       '�������
        
    Case 12
        
        command(0) = &HD
        
        Form2.MSComm1.Output = command                                          '�Ե�13���Ʒ����������(13)
        
        command(0) = &HFF                                                       '�������
        
    Case 13
        
        command(0) = &HE
        
        Form2.MSComm1.Output = command                                          '�Ե�14���Ʒ����������(14)
        
        command(0) = &HFF                                                       '�������
        
    Case 14
        
        command(0) = &HF
        
        Form2.MSComm1.Output = command                                          '�Ե�15���Ʒ����������(15)
        
        command(0) = &HFF                                                       '�������
        
    Case 15
        
        command(0) = &H10
        
        Form2.MSComm1.Output = command                                          '�Ե�16���Ʒ����������(16)
        
        command(0) = &HFF                                                       '�������
        
    Case 16
        
        command(0) = &H11
        
        Form2.MSComm1.Output = command                                          '�Ե�17���Ʒ����������(17)
        
        command(0) = &HFF                                                       '�������
        
    Case 17
        
        command(0) = &H12
        
        Form2.MSComm1.Output = command                                          '�Ե�18���Ʒ����������(18)
        
        command(0) = &HFF                                                       '�������
        
    Case 18
        
        command(0) = &H13
        
        Form2.MSComm1.Output = command                                          '�Ե�19���Ʒ����������(19)
        
        command(0) = &HFF                                                       '�������
        
    Case 19
        
        command(0) = &H14
        
        Form2.MSComm1.Output = command                                          '�Ե�20���Ʒ����������(20)
        
        command(0) = &HFF                                                       '�������
        
    Case 20
        
        command(0) = &H15
        
        Form2.MSComm1.Output = command                                          '�Ե�21���Ʒ����������(21)
        
        command(0) = &HFF                                                       '�������
        
    Case 21
        
        command(0) = &H16
        
        Form2.MSComm1.Output = command                                          '�Ե�22���Ʒ����������(22)
        
        command(0) = &HFF                                                       '�������
        
    Case 22
        
        command(0) = &H17
        
        Form2.MSComm1.Output = command                                          '�Ե�23���Ʒ����������(23)
        
        command(0) = &HFF                                                       '�������
        
    Case 23
        
        command(0) = &H18
        
        Form2.MSComm1.Output = command                                          '�Ե�24���Ʒ����������(24)
        
        command(0) = &HFF                                                       '�������
        
    Case 24
        
        command(0) = &H19
        
        Form2.MSComm1.Output = command                                          '�Ե�25���Ʒ����������(25)
        
        command(0) = &HFF                                                       '�������
        
    Case 25
        
        command(0) = &H1A
        
        Form2.MSComm1.Output = command                                          '�Ե�26���Ʒ����������(26)
        
        command(0) = &HFF                                                       '�������
        
    Case 26
        
        command(0) = &H1B
        
        Form2.MSComm1.Output = command                                          '�Ե�27���Ʒ����������(27)
        
        command(0) = &HFF                                                       '�������
        
    Case 27
        
        command(0) = &H1C
        
        Form2.MSComm1.Output = command                                          '�Ե�28���Ʒ����������(28)
        
        command(0) = &HFF                                                       '�������
        
    Case 28
        
        command(0) = &H1D
        
        Form2.MSComm1.Output = command                                          '�Ե�29���Ʒ����������(29)
        
        command(0) = &HFF                                                       '�������
        
    Case 29
        
        command(0) = &H1E
        
        Form2.MSComm1.Output = command                                          '�Ե�30���Ʒ����������(30)
        
        command(0) = &HFF                                                       '�������
        
    Case 30
        
        command(0) = &H1F
        
        Form2.MSComm1.Output = command                                          '�Ե�31���Ʒ����������(31)
        
        command(0) = &HFF                                                       '�������
        
    Case 31
        
        command(0) = &H20
        
        Form2.MSComm1.Output = command                                          '�Ե�32���Ʒ����������(32)
        
        command(0) = &HFF                                                       '�������
        
    Case 32
        
        command(0) = &H21
        
        Form2.MSComm1.Output = command                                          '�Ե�33���Ʒ����������(33)
        
        command(0) = &HFF                                                       '�������
        
    Case 33
        
        command(0) = &H22
        
        Form2.MSComm1.Output = command                                          '�Ե�34���Ʒ����������(33)
        
        command(0) = &HFF                                                       '�������
        
    Case 34
        
        command(0) = &H23
        
        Form2.MSComm1.Output = command                                          '�Ե�35���Ʒ����������(35)
        
        command(0) = &HFF                                                       '�������
        
    Case 35
        
        command(0) = &H24
        
        Form2.MSComm1.Output = command                                          '�Ե�36���Ʒ����������(36)
        
        command(0) = &HFF                                                       '�������
        
    Case 36
        
        command(0) = &H25
        
        Form2.MSComm1.Output = command                                          '�Ե�37���Ʒ����������(37)
        
        command(0) = &HFF                                                       '�������
        
    Case 37
        
        command(0) = &H26
        
        Form2.MSComm1.Output = command                                          '�Ե�38���Ʒ����������(38)
        
        command(0) = &HFF                                                       '�������
        
    Case 38
        
        command(0) = &H27
        
        Form2.MSComm1.Output = command                                          '�Ե�39���Ʒ����������(39)
        
        command(0) = &HFF                                                       '�������
        
    Case 39
        
        command(0) = &H28
        
        Form2.MSComm1.Output = command                                          '�Ե�40���Ʒ����������(40)
        
        command(0) = &HFF                                                       '�������
        
    Case 40
        
        command(0) = &H29
        
        Form2.MSComm1.Output = command                                          '�Ե�41���Ʒ����������(41)
        
        command(0) = &HFF                                                       '�������
        
    Case 41
        
        command(0) = &H2A
        
        Form2.MSComm1.Output = command                                          '�Ե�42���Ʒ����������(42)
        
        command(0) = &HFF                                                       '�������
        
    Case 42
        
        command(0) = &H2B
        
        Form2.MSComm1.Output = command                                          '�Ե�43���Ʒ����������(43)
        
        command(0) = &HFF                                                       '�������
        
    Case 43
        
        command(0) = &H2C
        
        Form2.MSComm1.Output = command                                          '�Ե�44���Ʒ����������(44)
        
        command(0) = &HFF                                                       '�������
        
    Case 44
        
        command(0) = &H2D
        
        Form2.MSComm1.Output = command                                          '�Ե�45���Ʒ����������(45)
        
        command(0) = &HFF                                                       '�������
        
    Case 45
        
        command(0) = &H2E
        
        Form2.MSComm1.Output = command                                          '�Ե�46���Ʒ����������(46)
        
        command(0) = &HFF                                                       '�������
        
    Case 46
        
        command(0) = &H2F
        
        Form2.MSComm1.Output = command                                          '�Ե�47���Ʒ����������(47)
        
        command(0) = &HFF                                                       '�������
        
    Case 47
        
        command(0) = &H30
        
        Form2.MSComm1.Output = command                                          '�Ե�48���Ʒ����������(48)
        
        command(0) = &HFF                                                       '�������
        
    Case 48
        
        command(0) = &H31
        
        Form2.MSComm1.Output = command                                          '�Ե�49���Ʒ����������(49)
        
        command(0) = &HFF                                                       '�������
        
    Case 49
        
        command(0) = &H32
        
        Form2.MSComm1.Output = command                                          '�Ե�50���Ʒ����������(50)
        
        command(0) = &HFF                                                       '�������
        
    Case 50
        
        command(0) = &H33
        
        Form2.MSComm1.Output = command                                          '�Ե�51���Ʒ����������(51)
        
        command(0) = &HFF                                                       '�������
        
    Case 51
        
        command(0) = &H34
        
        Form2.MSComm1.Output = command                                          '�Ե�52���Ʒ����������(52)
        
        command(0) = &HFF                                                       '�������
        
    Case 52
        
        command(0) = &H35
        
        Form2.MSComm1.Output = command                                          '�Ե�53���Ʒ����������(53)
        
        command(0) = &HFF                                                       '�������
        
    Case 53
        
        command(0) = &H36
        
        Form2.MSComm1.Output = command                                          '�Ե�54���Ʒ����������(54)
        
        command(0) = &HFF                                                       '�������
        
    Case 54
        
        command(0) = &H37
        
        Form2.MSComm1.Output = command                                          '�Ե�55���Ʒ����������(55)
        
        command(0) = &HFF                                                       '�������
        
    Case 55
        
        command(0) = &H38
        
        Form2.MSComm1.Output = command                                          '�Ե�56���Ʒ����������(56)
        
        command(0) = &HFF                                                       '�������
        
    Case 56
        
        command(0) = &H39
        
        Form2.MSComm1.Output = command                                          '�Ե�57���Ʒ����������(57)
        
        command(0) = &HFF                                                       '�������
        
    Case 57
        
        command(0) = &H3A
        
        Form2.MSComm1.Output = command                                          '�Ե�58���Ʒ����������(58)
        
        command(0) = &HFF                                                       '�������
        
    Case 58
        
        command(0) = &H3B
        
        Form2.MSComm1.Output = command                                          '�Ե�59���Ʒ����������(59)
        
        command(0) = &HFF                                                       '�������
        
    Case 59
        
        command(0) = &H3C
        
        Form2.MSComm1.Output = command                                          '�Ե�60���Ʒ����������(60)
        
        command(0) = &HFF                                                       '�������
        
    End Select
    
    'light_flag = 1  '��������־λ��Ϊ1
    
    Form5.Show                                                                  '����ƿ�����������
    Unload Form4                                                                'ж�ر�����
    
End Sub

Private Sub Command2_Click()                                                    'ȡ��
    
    Form3.Enabled = True                                                        '������������
    Unload Form4                                                                'ж�ر�����
    
End Sub

Private Sub Command3_Click()                                                    '���������������ť
    
    SkinLabel8.Caption = SkinLabel8.Caption + 1
    
    If (Val(SkinLabel8.Caption) > 30) Then
        
        answer = MsgBox("��ʾ�����õ�����ʱ�����!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      '������������
            
            SkinLabel8.Caption = 30
            
            Exit Sub
            
        End If
        
    End If
    
End Sub

Private Sub Command4_Click()                                                    '���������ݼ����ť
    
    SkinLabel8.Caption = SkinLabel8.Caption - 1
    
    If (Val(SkinLabel8.Caption) < 1) Then
        
        answer = MsgBox("��ʾ�����õ�����ʱ�����!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      '������������
            
            SkinLabel8.Caption = 1
            
            Exit Sub
            
        End If
        
    End If
    
End Sub

Private Sub Text1_Change()
    
    If (CheckBarcode And Len(Text1.Text) > 1) Then
        
        CheckBarcode = False
        
        textheader = UCase(Mid(Text1.Text, 1, 2))
        
        If (textheader = "SG") Then
            
            Combo2.Text = "�кͿ�������������ƿ"
            
        ElseIf (textheader = "SP") Then
            
            Combo2.Text = "�кͿ����ض�ͯ����ƿ"
            
        ElseIf (textheader = "SA") Then
            
            Combo2.Text = "��������ƿ"
            
        ElseIf (textheader = "SF") Then
            
            Combo2.Text = "�кͿ�������������ƿ"
            
        ElseIf (textheader = "SN") Then
            
            Combo2.Text = "��������ƿ"
            
        End If
        
    End If
    
    If (Len(Text1.Text) < 2) Then
        
        CheckBarcode = True
        
    End If
    
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)                                 '������ֻ���������ֺͿո�
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        ' KeyAscii = 0
        
    End If
    
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer)                                 '����ֻ���������ֺͿո�
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub
