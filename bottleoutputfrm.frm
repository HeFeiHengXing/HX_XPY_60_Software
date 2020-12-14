VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form6 
   Caption         =   "取出培养瓶"
   ClientHeight    =   1935
   ClientLeft      =   60
   ClientTop       =   510
   ClientWidth     =   2610
   LinkTopic       =   "Form6"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1935
   ScaleWidth      =   2610
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   630
      OleObjectBlob   =   "bottleoutputfrm.frx":0000
      Top             =   90
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1440
      TabIndex        =   7
      Top             =   960
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1440
      TabIndex        =   6
      Top             =   240
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      Height          =   375
      Left            =   1320
      TabIndex        =   5
      Top             =   1320
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   1320
      Width           =   735
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
      Height          =   255
      Left            =   1200
      OleObjectBlob   =   "bottleoutputfrm.frx":0234
      TabIndex        =   3
      Top             =   720
      Width           =   855
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
      Height          =   255
      Left            =   840
      OleObjectBlob   =   "bottleoutputfrm.frx":029A
      TabIndex        =   2
      Top             =   720
      Width           =   375
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   240
      OleObjectBlob   =   "bottleoutputfrm.frx":02F8
      TabIndex        =   1
      Top             =   720
      Width           =   615
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   240
      OleObjectBlob   =   "bottleoutputfrm.frx":035C
      TabIndex        =   0
      Top             =   240
      Width           =   615
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Declare Function SetWindowPos _
                Lib "user32" (ByVal hWnd As Long, _
                              ByVal hWndInsertAfter As Long, _
                              ByVal x As Long, _
                              ByVal y As Long, _
                              ByVal cx As Long, _
                              ByVal cy As Long, _
                              ByVal wFlags As Long) As Long

Private Declare Function SetWindowLong _
                Lib "user32" _
                Alias "SetWindowLongA" (ByVal hWnd As Long, _
                                        ByVal nIndex As Long, _
                                        ByVal dwNewLong As Long) As Long

Private Declare Function GetWindowLong _
                Lib "user32" _
                Alias "GetWindowLongA" (ByVal hWnd As Long, _
                                        ByVal nIndex As Long) As Long

Const WS_SYSMENU = &H80000                                                      ''''''''''''''''''''''''''''''消除界面上的X按钮

Const GWL_STYLE = (-16)

Const SWP_NOMOVE = &H2

Const SWP_NOSIZE = &H1

Const SWP_NOZORDER = &H4

Const SWP_DRAWFRAME = &H20

Private Sub Form_Load()
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '窗体居中
    
    Skin1.LoadSkin App.Path + "\Skins\3.skn"
    
    Skin1.ApplySkin Me.hWnd                                                     ''
    
    Dim lStyle As Long                                                          ''

    lStyle = GetWindowLong(hWnd, GWL_STYLE)
    lStyle = lStyle And Not WS_SYSMENU
    SetWindowLong Me.hWnd, GWL_STYLE, lStyle
    SetWindowPos Me.hWnd, 0, 0, 0, 0, 0, SWP_NOZORDER Or SWP_DRAWFRAME Or SWP_NOMOVE Or SWP_NOSIZE
    
    SkinLabel3.Caption = (n + 1) & "#"                                          '孔位号
    
    Select Case n
        
        Case 0
        
            command(0) = &H1
        
            Form2.MSComm1.Output = command                                          '对第1个灯发出点灯命令(1)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 1
        
            command(0) = &H2
        
            Form2.MSComm1.Output = command                                          '对第2个灯发出点灯命令(2)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 2
        
            command(0) = &H3
        
            Form2.MSComm1.Output = command                                          '对第3个灯发出点灯命令(3)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 3
        
            command(0) = &H4
        
            Form2.MSComm1.Output = command                                          '对第4个灯发出点灯命令(4)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 4
        
            command(0) = &H5
        
            Form2.MSComm1.Output = command                                          '对第5个灯发出点灯命令(5)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 5
        
            command(0) = &H6
        
            Form2.MSComm1.Output = command                                          '对第6个灯发出点灯命令(6)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 6
        
            command(0) = &H7
        
            Form2.MSComm1.Output = command                                          '对第7个灯发出点灯命令(7)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 7
        
            command(0) = &H8
        
            Form2.MSComm1.Output = command                                          '对第8个灯发出点灯命令(8)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 8
        
            command(0) = &H9
        
            Form2.MSComm1.Output = command                                          '对第9个灯发出点灯命令(9)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 9
        
            command(0) = &HA
        
            Form2.MSComm1.Output = command                                          '对第10个灯发出点灯命令(10)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 10
        
            command(0) = &HB
        
            Form2.MSComm1.Output = command                                          '对第11个灯发出点灯命令(11)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 11
        
            command(0) = &HC
        
            Form2.MSComm1.Output = command                                          '对第12个灯发出点灯命令(12)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 12
        
            command(0) = &HD
        
            Form2.MSComm1.Output = command                                          '对第13个灯发出点灯命令(13)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 13
        
            command(0) = &HE
        
            Form2.MSComm1.Output = command                                          '对第14个灯发出点灯命令(14)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 14
        
            command(0) = &HF
        
            Form2.MSComm1.Output = command                                          '对第15个灯发出点灯命令(15)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 15
        
            command(0) = &H10
        
            Form2.MSComm1.Output = command                                          '对第16个灯发出点灯命令(16)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 16
        
            command(0) = &H11
        
            Form2.MSComm1.Output = command                                          '对第17个灯发出点灯命令(17)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 17
        
            command(0) = &H12
        
            Form2.MSComm1.Output = command                                          '对第18个灯发出点灯命令(18)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 18
        
            command(0) = &H13
        
            Form2.MSComm1.Output = command                                          '对第19个灯发出点灯命令(19)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 19
        
            command(0) = &H14
        
            Form2.MSComm1.Output = command                                          '对第20个灯发出点灯命令(20)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 20
        
            command(0) = &H15
        
            Form2.MSComm1.Output = command                                          '对第21个灯发出点灯命令(21)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 21
        
            command(0) = &H16
        
            Form2.MSComm1.Output = command                                          '对第22个灯发出点灯命令(22)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 22
        
            command(0) = &H17
        
            Form2.MSComm1.Output = command                                          '对第23个灯发出点灯命令(23)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 23
        
            command(0) = &H18
        
            Form2.MSComm1.Output = command                                          '对第24个灯发出点灯命令(24)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 24
        
            command(0) = &H19
        
            Form2.MSComm1.Output = command                                          '对第25个灯发出点灯命令(25)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 25
        
            command(0) = &H1A
        
            Form2.MSComm1.Output = command                                          '对第26个灯发出点灯命令(26)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 26
        
            command(0) = &H1B
        
            Form2.MSComm1.Output = command                                          '对第27个灯发出点灯命令(27)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 27
        
            command(0) = &H1C
        
            Form2.MSComm1.Output = command                                          '对第28个灯发出点灯命令(28)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 28
        
            command(0) = &H1D
        
            Form2.MSComm1.Output = command                                          '对第29个灯发出点灯命令(29)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 29
        
            command(0) = &H1E
        
            Form2.MSComm1.Output = command                                          '对第30个灯发出点灯命令(30)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 30
        
            command(0) = &H1F
        
            Form2.MSComm1.Output = command                                          '对第31个灯发出点灯命令(31)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 31
        
            command(0) = &H20
        
            Form2.MSComm1.Output = command                                          '对第32个灯发出点灯命令(32)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 32
        
            command(0) = &H21
        
            Form2.MSComm1.Output = command                                          '对第33个灯发出点灯命令(33)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 33
        
            command(0) = &H22
        
            Form2.MSComm1.Output = command                                          '对第34个灯发出点灯命令(33)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 34
        
            command(0) = &H23
        
            Form2.MSComm1.Output = command                                          '对第35个灯发出点灯命令(35)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 35
        
            command(0) = &H24
        
            Form2.MSComm1.Output = command                                          '对第36个灯发出点灯命令(36)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 36
        
            command(0) = &H25
        
            Form2.MSComm1.Output = command                                          '对第37个灯发出点灯命令(37)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 37
        
            command(0) = &H26
        
            Form2.MSComm1.Output = command                                          '对第38个灯发出点灯命令(38)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 38
        
            command(0) = &H27
        
            Form2.MSComm1.Output = command                                          '对第39个灯发出点灯命令(39)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 39
        
            command(0) = &H28
        
            Form2.MSComm1.Output = command                                          '对第40个灯发出点灯命令(40)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 40
        
            command(0) = &H29
        
            Form2.MSComm1.Output = command                                          '对第41个灯发出点灯命令(41)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 41
        
            command(0) = &H2A
        
            Form2.MSComm1.Output = command                                          '对第42个灯发出点灯命令(42)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 42
        
            command(0) = &H2B
        
            Form2.MSComm1.Output = command                                          '对第43个灯发出点灯命令(43)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 43
        
            command(0) = &H2C
        
            Form2.MSComm1.Output = command                                          '对第44个灯发出点灯命令(44)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 44
        
            command(0) = &H2D
        
            Form2.MSComm1.Output = command                                          '对第45个灯发出点灯命令(45)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 45
        
            command(0) = &H2E
        
            Form2.MSComm1.Output = command                                          '对第46个灯发出点灯命令(46)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 46
        
            command(0) = &H2F
        
            Form2.MSComm1.Output = command                                          '对第47个灯发出点灯命令(47)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 47
        
            command(0) = &H30
        
            Form2.MSComm1.Output = command                                          '对第48个灯发出点灯命令(48)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 48
        
            command(0) = &H31
        
            Form2.MSComm1.Output = command                                          '对第49个灯发出点灯命令(49)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 49
        
            command(0) = &H32
        
            Form2.MSComm1.Output = command                                          '对第50个灯发出点灯命令(50)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 50
        
            command(0) = &H33
        
            Form2.MSComm1.Output = command                                          '对第51个灯发出点灯命令(51)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 51
        
            command(0) = &H34
        
            Form2.MSComm1.Output = command                                          '对第52个灯发出点灯命令(52)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 52
        
            command(0) = &H35
        
            Form2.MSComm1.Output = command                                          '对第53个灯发出点灯命令(53)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 53
        
            command(0) = &H36
        
            Form2.MSComm1.Output = command                                          '对第54个灯发出点灯命令(54)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 54
        
            command(0) = &H37
        
            Form2.MSComm1.Output = command                                          '对第55个灯发出点灯命令(55)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 55
        
            command(0) = &H38
        
            Form2.MSComm1.Output = command                                          '对第56个灯发出点灯命令(56)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 56
        
            command(0) = &H39
        
            Form2.MSComm1.Output = command                                          '对第57个灯发出点灯命令(57)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 57
        
            command(0) = &H3A
        
            Form2.MSComm1.Output = command                                          '对第58个灯发出点灯命令(58)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 58
        
            command(0) = &H3B
        
            Form2.MSComm1.Output = command                                          '对第59个灯发出点灯命令(59)
        
            command(0) = &HFF                                                       '清空命令
        
        Case 59
        
            command(0) = &H3C
        
            Form2.MSComm1.Output = command                                          '对第60个灯发出点灯命令(60)
        
            command(0) = &HFF                                                       '清空命令
        
    End Select
    
    '''''''''''''''''''''''''''''''读取时间统计资料''''''''''''''''''''''''''''''''''''''
    
    Open App.Path & "\count\count.txt" For Input As #5
    
    Line Input #5, textline                                                     '将读入的1行存到变量TextLine中
    
    sum = textline                                                              '读阴阳性总数
    
    Line Input #5, textline                                                     '将读入的1行存到变量TextLine中
    
    sum1 = textline                                                             '读阴性总数
    
    Line Input #5, textline                                                     '将读入的1行存到变量TextLine中
    
    sum2 = textline                                                             '读阳性总数
    
    Close #5
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''读取科室统计资料'''''''''''''''''''''''''''''''''''''''
    
    If Dir(App.Path & "\count\" & Form2.SkinLabel6(n).Caption & ".txt") <> "" Then
        
        Open App.Path & "\count\" & Form2.SkinLabel6(n).Caption & ".txt" For Input As #5
        
        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
        
        keshi_nk1 = textline                                                    '读阴性总数
        
        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
        
        keshi_nk2 = textline                                                    '读阳性总数
        
        Close #5
        
    Else
        
        keshi_nk1 = 0
        
        keshi_nk2 = 0
        
    End If
    
    ''''''当前科室为内科
    
    '    If Form2.SkinLabel6(n).Caption = "内科" Then
    '
    '        Open App.Path & "\count\neike.txt" For Input As #5
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        keshi_nk1 = textline                                                    '读阴性总数
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        keshi_nk2 = textline                                                    '读阳性总数
    '
    '        Close #5
    '
    '        ''''''当前科室为外科
    '
    '    ElseIf Form2.SkinLabel6(n).Caption = "外科" Then
    '
    '        Open App.Path & "\count\waike.txt" For Input As #5
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        keshi_wk1 = textline                                                    '读阴性总数
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        keshi_wk2 = textline                                                    '读阳性总数
    '
    '        Close #5
    '
    '        ''''''当前科室为小儿科
    '
    '    ElseIf Form2.SkinLabel6(n).Caption = "小儿科" Then
    '
    '        Open App.Path & "\count\xiaoerke.txt" For Input As #5
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        keshi_xk1 = textline                                                    '读阴性总数
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        keshi_xk2 = textline                                                    '读阳性总数
    '
    '        Close #5
    '
    '        ''''''当前科室为妇科
    '
    '    ElseIf Form2.SkinLabel6(n).Caption = "妇科" Then
    '
    '        Open App.Path & "\count\fuke.txt" For Input As #5
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        keshi_fk1 = textline                                                    '读阴性总数
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        keshi_fk2 = textline                                                    '读阳性总数
    '
    '        Close #5
    '
    '    End If
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''读取培养瓶种类统计资料'''''''''''''''''''''''''''''''''''''
    
    If Dir(App.Path & "\count\" & Form2.SkinLabel7(n).Caption & ".txt") <> "" Then
        
        Open App.Path & "\count\" & Form2.SkinLabel7(n).Caption & ".txt" For Input As #5
        
        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
        
        pyp_bs1 = textline                                                      '读阴性总数
        
        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
        
        pyp_bs2 = textline                                                      '读阳性总数
        
        Close #5
        
    Else
        
        pyp_bs1 = 0
        
        pyp_bs2 = 0
        
    End If
    
    ''''''当前培养瓶种类为需氧培养瓶
    
    '    If Form2.SkinLabel7(n).Caption = "需氧培养瓶" Then
    '
    '        Open App.Path & "\count\biaozhun.txt" For Input As #5
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_bs1 = textline                                                      '读阴性总数
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_bs2 = textline                                                      '读阳性总数
    '
    '        Close #5
    '
    '        ''''''当前培养瓶种类为厌氧瓶
    '
    '    ElseIf Form2.SkinLabel7(n).Caption = "厌氧培养瓶" Then
    '
    '        Open App.Path & "\count\yanyang.txt" For Input As #5
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_yy1 = textline                                                      '读阴性总数
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_yy2 = textline                                                      '读阳性总数
    '
    '        Close #5
    '
    '        ''''''当前培养瓶种类为厌氧瓶
    '
    '    ElseIf Form2.SkinLabel7(n).Caption = "儿童培养瓶" Then
    '
    '        Open App.Path & "\count\ertong.txt" For Input As #5
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_yy1 = textline                                                      '读阴性总数
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_yy2 = textline                                                      '读阳性总数
    '
    '        Close #5
    '
    '        ''''''当前培养瓶种类为中和抗生素儿童瓶
    '
    '    ElseIf Form2.SkinLabel7(n).Caption = "中和抗生素儿童瓶" Then
    '
    '        Open App.Path & "\count\zhongxiao.txt" For Input As #5
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_zx1 = textline                                                      '读阴性总数
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_zx2 = textline                                                      '读阳性总数
    '
    '        Close #5
    '
    '        ''''''当前培养瓶种类为中和嗜养瓶
    '
    '    ElseIf Form2.SkinLabel7(n).Caption = "中和抗生素需氧瓶" Then
    '
    '        Open App.Path & "\count\zhongshi.txt" For Input As #5
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_zs1 = textline                                                      '读阴性总数
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_zs2 = textline                                                      '读阳性总数
    '
    '        Close #5
    '
    '        ''''''当前培养瓶种类为中和厌氧瓶
    '
    '    ElseIf Form2.SkinLabel7(n).Caption = "中和抗生素厌氧瓶" Then
    '
    '        Open App.Path & "\count\zhongyan.txt" For Input As #5
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_zy1 = textline                                                      '读阴性总数
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_zy2 = textline                                                      '读阳性总数
    '
    '        Close #5
    '
    '        ''''''当前培养瓶种类为分支杆菌培养瓶
    '
    '    ElseIf Form2.SkinLabel7(n).Caption = "中和抗生素厌氧瓶" Then
    '
    '        Open App.Path & "\count\fengan.txt" For Input As #5
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_fg1 = textline                                                      '读阴性总数
    '
    '        Line Input #5, textline                                                 '将读入的1行存到变量TextLine中
    '
    '        pyp_fg2 = textline                                                      '读阳性总数
    '
    '        Close #5
    '
    '    End If
    
    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
End Sub

Private Sub Command1_Click()                                                    '确定按钮
    
    Dim per1           As Variant                                                         '阳性百分比
    
    Dim per2           As Variant                                                         '阴性百分比
    
    Dim time_display1  As String                                                 '按时间统计阳性结果显示
    
    Dim time_display2  As String                                                 '按时间统计阴性结果显示
    
    Dim keshi_count1   As Integer                                                 '按科室统计当前阴性结果
    
    Dim keshi_count2   As Integer                                                 '按科室统计当前阳性结果
    
    Dim keshi_display1 As String                                                '按科室统计阴性结果显示
    
    Dim keshi_display2 As String                                                '按科室统计阳性结果显示
    
    Dim keshi_file     As String                                                    '当前科室文件名
    
    Dim pyp_count1     As Integer                                                   '按培养瓶种类统计当前阴性结果
    
    Dim pyp_count2     As Integer                                                   '按培养瓶种类统计当前阳性结果
    
    Dim pyp_display1   As String                                                  '按培养瓶统计阴性结果显示
    
    Dim pyp_display2   As String                                                  '按培养瓶统计阳性结果显示
    
    Dim pyp_file       As String                                                      ''
    
    getFileWriteLock
    
    Open App.Path & "\result\" & Form2.SkinLabel2(n) & ".dat" For Output As #1  '将测量结果保存到result文件夹里
    
    If Form3.SkinLabel21.Caption = "正在培养中..." Then Form3.SkinLabel21.Caption = "阴性"
    
    Print #1, Form3.SkinLabel21.Caption
    
    Print #1, n
    
    Close #1
    
    releaseFileWriteLock
    
    If Dir(App.Path & "\statistics\" & Format(Now, "yyyy-mm"), vbDirectory) = "" Then
        
        sum = 0: sum1 = 0: sum2 = 0
        
        keshi_nk1 = 0: keshi_nk2 = 0: keshi_wk1 = 0: keshi_wk2 = 0: keshi_xk1 = 0: keshi_xk2 = 0: keshi_fk1 = 0: keshi_fk2 = 0
        
        pyp_bs1 = 0: pyp_bs2 = 0: pyp_yy1 = 0: pyp_yy2 = 0: pyp_zx1 = 0: pyp_zx2 = 0: pyp_zs1 = 0: pyp_zs2 = 0: pyp_zy1 = 0: pyp_zy2 = 0: pyp_fg1 = 0: pyp_fg2 = 0
        
        MkDir App.Path & "\statistics\" & Format(Now, "yyyy-mm")                '建立关于该年月的统计文件夹
        
    End If
    
    ''''''''''''''''''''''''''''''''按时间保存统计资料'''''''''''''''''''''''''''''''''''
    
    If (Form2.SkinLabel10(n) = 1 Or Form2.SkinLabel10(n) = 3) Then              '统计阴性结果
        
        sum1 = sum1 + 1: sum = sum1 + sum2
        
    ElseIf (Form2.SkinLabel10(n) = 2 Or Form2.SkinLabel10(n) = 4) Then          '统计阳性结果
        
        sum2 = sum2 + 1: sum = sum1 + sum2
        
    End If
    
    If sum = 0 Then                                                             ''
        
        per1 = 0: per2 = 0
        
        Text1.Text = Format(per1, "0%")
        
        Text2.Text = Format(per2, "0%")
        
    Else
        
        per1 = sum1 / sum: per2 = sum2 / sum
        
        If (per1 = 0 And per2 <> 0) Then
            
            Text1.Text = Format(per1, "0%")
            
            Text2.Text = Format(per2, "###.00%")
            
        ElseIf (per1 <> 0 And per2 = 0) Then
            
            Text1.Text = Format(per1, "###.00%")
            
            Text2.Text = Format(per2, "0%")
            
        ElseIf per1 <> 0 And per2 <> 0 Then
            
            Text1.Text = Format(per1, "###.00%")
            
            Text2.Text = Format(per2, "###.00%")
            
        End If
        
    End If
    
    getFileWriteLock
    
    Open App.Path & "\statistics\" & Format(Now, "yyyy-mm") & "\" & "统计情况" & ".txt" For Output As #4 '刷新统计情况
    
    Print #4, Format(Now, "yyyy") & "年" & Format(Now, "mm") & "月" & "统计情况:"
    Print #4, "本月测得阴阳性总数为:" & sum
    Print #4, "本月测得阴性总数为:" & sum1
    Print #4, "本月测得阳性总数为:" & sum2
    Print #4, "本月测得阴性比例为:" & Text1.Text
    Print #4, "本月测得阳性比例为:" & Text2.Text
    
    Close #4
    
    Open App.Path & "\count\count.txt" For Output As #5                         '保存阴阳总数
    
    Print #5, sum                                                               '阴阳总数
    
    Print #5, sum1                                                              '阴性总数
    
    Print #5, sum2                                                              '阳性总数
    
    Close #5
    
    releaseFileWriteLock
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''''按科室保存统计资料'''''''''''''''''''''''''''''''''''
    
    If (Form2.SkinLabel10(n) = 1 Or Form2.SkinLabel10(n) = 3) Then              '统计阴性结果
        
        keshi_nk1 = keshi_nk1 + 1
        
    ElseIf (Form2.SkinLabel10(n) = 2 Or Form2.SkinLabel10(n) = 4) Then          '统计阳性结果
        
        keshi_nk2 = keshi_nk2 + 1
        
    End If
    
    If sum = 0 Then                                                             '计算内科阴阳性比例
        
        per1 = 0: per2 = 0: keshi_count1 = 0: keshi_count2 = 0
        
        keshi_display1 = Format(per1, "0%")
        
        keshi_display2 = Format(per2, "0%")
        
    Else
        
        per1 = keshi_nk1 / sum: per2 = keshi_nk2 / sum: keshi_count1 = keshi_nk1: keshi_count2 = keshi_nk2
        
        If (per1 = 0 And per2 <> 0) Then
            
            keshi_display1 = Format(per1, "0%")
            
            keshi_display2 = Format(per2, "###.00%")
            
        ElseIf (per1 <> 0 And per2 = 0) Then
            
            keshi_display1 = Format(per1, "###.00%")
            
            keshi_display2 = Format(per2, "0%")
            
        ElseIf per1 <> 0 And per2 <> 0 Then
            
            keshi_display1 = Format(per1, "###.00%")
            
            keshi_display2 = Format(per2, "###.00%")
            
        End If
        
    End If
    
    ''''''1、内科
    
    '    If Form2.SkinLabel6(n).Caption = "内科" Then
    '
    '        keshi_file = "neike"
    '
    '        If (Form2.SkinLabel10(n) = 1 Or Form2.SkinLabel10(n) = 3) Then          '统计阴性结果
    '
    '            keshi_nk1 = keshi_nk1 + 1
    '
    '        ElseIf (Form2.SkinLabel10(n) = 2 Or Form2.SkinLabel10(n) = 4) Then      '统计阳性结果
    '
    '            keshi_nk2 = keshi_nk2 + 1
    '
    '        End If
    '
    '        If sum = 0 Then                                                         '计算内科阴阳性比例
    '
    '            per1 = 0: per2 = 0: keshi_count1 = 0: keshi_count2 = 0
    '
    '            keshi_display1 = Format(per1, "0%")
    '
    '            keshi_display2 = Format(per2, "0%")
    '
    '        Else
    '
    '            per1 = keshi_nk1 / sum: per2 = keshi_nk2 / sum: keshi_count1 = keshi_nk1: keshi_count2 = keshi_nk2
    '
    '            If (per1 = 0 And per2 <> 0) Then
    '
    '                keshi_display1 = Format(per1, "0%")
    '
    '                keshi_display2 = Format(per2, "###.00%")
    '
    '            ElseIf (per1 <> 0 And per2 = 0) Then
    '
    '                keshi_display1 = Format(per1, "###.00%")
    '
    '                keshi_display2 = Format(per2, "0%")
    '
    '            ElseIf per1 <> 0 And per2 <> 0 Then
    '
    '                keshi_display1 = Format(per1, "###.00%")
    '
    '                keshi_display2 = Format(per2, "###.00%")
    '
    '            End If
    '
    '        End If
    '
    '        ''''''2、外科
    '
    '    ElseIf Form2.SkinLabel6(n).Caption = "外科" Then
    '
    '        keshi_file = "waike"
    '
    '        If (Form2.SkinLabel10(n) = 1 Or Form2.SkinLabel10(n) = 3) Then          '统计阴性结果
    '
    '            keshi_wk1 = keshi_wk1 + 1
    '
    '        ElseIf (Form2.SkinLabel10(n) = 2 Or Form2.SkinLabel10(n) = 4) Then      '统计阳性结果
    '
    '            keshi_wk2 = keshi_wk2 + 1
    '
    '        End If
    '
    '        If sum = 0 Then                                                         '计算外科阴阳性比例
    '
    '            per1 = 0: per2 = 0: keshi_count1 = 0: keshi_count2 = 0
    '
    '            keshi_display1 = Format(per1, "0%")
    '
    '            keshi_display2 = Format(per2, "0%")
    '
    '        Else
    '
    '            per1 = keshi_wk1 / sum: per2 = keshi_wk2 / sum: keshi_count1 = keshi_wk1: keshi_count2 = keshi_wk2
    '
    '            If (per1 = 0 And per2 <> 0) Then
    '
    '                keshi_display1 = Format(per1, "0%")
    '
    '                keshi_display2 = Format(per2, "###.00%")
    '
    '            ElseIf (per1 <> 0 And per2 = 0) Then
    '
    '                keshi_display1 = Format(per1, "###.00%")
    '
    '                keshi_display2 = Format(per2, "0%")
    '
    '            ElseIf per1 <> 0 And per2 <> 0 Then
    '
    '                keshi_display1 = Format(per1, "###.00%")
    '
    '                keshi_display2 = Format(per2, "###.00%")
    '
    '            End If
    '
    '        End If
    '
    '        ''''''3、小儿科
    '
    '    ElseIf Form2.SkinLabel6(n).Caption = "标准儿童需氧瓶" Then
    '
    '        keshi_file = "xiaoerke"
    '
    '        If (Form2.SkinLabel10(n) = 1 Or Form2.SkinLabel10(n) = 3) Then          '统计阴性结果
    '
    '            keshi_xk1 = keshi_xk1 + 1
    '
    '        ElseIf (Form2.SkinLabel10(n) = 2 Or Form2.SkinLabel10(n) = 4) Then      '统计阳性结果
    '
    '            keshi_xk2 = keshi_xk2 + 1
    '
    '        End If
    '
    '        If sum = 0 Then                                                         '计算内科阴阳性比例
    '
    '            per1 = 0: per2 = 0: keshi_count1 = 0: keshi_count2 = 0
    '
    '            keshi_display1 = Format(per1, "0%")
    '
    '            keshi_display2 = Format(per2, "0%")
    '
    '        Else
    '
    '            per1 = keshi_xk1 / sum: per2 = keshi_xk2 / sum: keshi_count1 = keshi_xk1: keshi_count2 = keshi_xk2
    '
    '            If (per1 = 0 And per2 <> 0) Then
    '
    '                keshi_display1 = Format(per1, "0%")
    '
    '                keshi_display2 = Format(per2, "###.00%")
    '
    '            ElseIf (per1 <> 0 And per2 = 0) Then
    '
    '                keshi_display1 = Format(per1, "###.00%")
    '
    '                keshi_display2 = Format(per2, "0%")
    '
    '            ElseIf per1 <> 0 And per2 <> 0 Then
    '
    '                keshi_display1 = Format(per1, "###.00%")
    '
    '                keshi_display2 = Format(per2, "###.00%")
    '
    '            End If
    '
    '        End If
    '
    '        ''''''3、妇科
    '
    '    ElseIf Form2.SkinLabel6(n).Caption = "妇科" Then
    '
    '        keshi_file = "fuke"
    '
    '        If (Form2.SkinLabel10(n) = 1 Or Form2.SkinLabel10(n) = 3) Then          '统计阴性结果
    '
    '            keshi_fk1 = keshi_fk1 + 1
    '
    '        ElseIf (Form2.SkinLabel10(n) = 2 Or Form2.SkinLabel10(n) = 4) Then      '统计阳性结果
    '
    '            keshi_fk2 = keshi_fk2 + 1
    '
    '        End If
    '
    '        If sum = 0 Then                                                         '计算内科阴阳性比例
    '
    '            per1 = 0: per2 = 0: keshi_count1 = 0: keshi_count2 = 0
    '
    '            keshi_display1 = Format(per1, "0%")
    '
    '            keshi_display2 = Format(per2, "0%")
    '
    '        Else
    '
    '            per1 = keshi_fk1 / sum: per2 = keshi_fk2 / sum: keshi_count1 = keshi_fk1: keshi_count2 = keshi_fk2
    '
    '            If (per1 = 0 And per2 <> 0) Then
    '
    '                keshi_display1 = Format(per1, "0%")
    '
    '                keshi_display2 = Format(per2, "###.00%")
    '
    '            ElseIf (per1 <> 0 And per2 = 0) Then
    '
    '                keshi_display1 = Format(per1, "###.00%")
    '
    '                keshi_display2 = Format(per2, "0%")
    '
    '            ElseIf per1 <> 0 And per2 <> 0 Then
    '
    '                keshi_display1 = Format(per1, "###.00%")
    '
    '                keshi_display2 = Format(per2, "###.00%")
    '
    '            End If
    '
    '        End If
    '
    '    End If
    
    getFileWriteLock
    
    Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & Form2.SkinLabel6(n).Caption & ".txt" For Output As #4 '按科室保存统计情况资料
    
    Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & Form2.SkinLabel6(n).Caption & "统计情况:"
    Print #4, "本月测得阴阳性总数为:" & sum
    Print #4, "本月" & Form2.SkinLabel6(n).Caption & "测得阴性总数为:" & keshi_count1
    Print #4, "本月" & Form2.SkinLabel6(n).Caption & "测得阳性总数为:" & keshi_count2
    Print #4, "本月测得阴性比例为:" & keshi_display1
    Print #4, "本月测得阳性比例为:" & keshi_display2
    
    Close #4
    
    Open App.Path & "\count\" & Form2.SkinLabel6(n).Caption & ".txt" For Output As #5 '按时间保存阴阳总数资料
    
    Print #5, keshi_count1                                                      '阴性总数
    Print #5, keshi_count2                                                      '阳性总数
    
    Close #5
    
    releaseFileWriteLock
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''''''''''''''''''按培养瓶种类保存统计资料''''''''''''''''''''''''''''''''
    
    If (Form2.SkinLabel10(n) = 1 Or Form2.SkinLabel10(n) = 3) Then              '统计阴性结果
        
        pyp_bs1 = pyp_bs1 + 1
        
    ElseIf (Form2.SkinLabel10(n) = 2 Or Form2.SkinLabel10(n) = 4) Then          '统计阳性结果
        
        pyp_bs2 = pyp_bs2 + 1
        
    End If
    
    If sum = 0 Then                                                             '计算标准嗜养瓶阴阳性比例
        
        per1 = 0: per2 = 0: pyp_count1 = 0: pyp_count2 = 0
        
        pyp_display1 = Format(per1, "0%")
        
        pyp_display2 = Format(per2, "0%")
        
    Else
        
        per1 = pyp_bs1 / sum: per2 = pyp_bs2 / sum: pyp_count1 = pyp_bs1: pyp_count2 = pyp_bs2
        
        If (per1 = 0 And per2 <> 0) Then
            
            pyp_display1 = Format(per1, "0%")
            
            pyp_display2 = Format(per2, "###.00%")
            
        ElseIf (per1 <> 0 And per2 = 0) Then
            
            pyp_display1 = Format(per1, "###.00%")
            
            pyp_display2 = Format(per2, "0%")
            
        ElseIf per1 <> 0 And per2 <> 0 Then
            
            pyp_display1 = Format(per1, "###.00%")
            
            pyp_display2 = Format(per2, "###.00%")
            
        End If
        
    End If
    
    ''''''1、需氧培养瓶
    
    '    If Form2.SkinLabel7(n).Caption = "需氧培养瓶" Then
    '
    '        pyp_file = "biaozhun"
    '
    '        If (Form2.SkinLabel10(n) = 1 Or Form2.SkinLabel10(n) = 3) Then          '统计阴性结果
    '
    '            pyp_bs1 = pyp_bs1 + 1
    '
    '        ElseIf (Form2.SkinLabel10(n) = 2 Or Form2.SkinLabel10(n) = 4) Then      '统计阳性结果
    '
    '            pyp_bs2 = pyp_bs2 + 1
    '
    '        End If
    '
    '        If sum = 0 Then                                                         '计算标准嗜养瓶阴阳性比例
    '
    '            per1 = 0: per2 = 0: pyp_count1 = 0: pyp_count2 = 0
    '
    '            pyp_display1 = Format(per1, "0%")
    '
    '            pyp_display2 = Format(per2, "0%")
    '
    '        Else
    '
    '            per1 = pyp_bs1 / sum: per2 = pyp_bs2 / sum: pyp_count1 = pyp_bs1: pyp_count2 = pyp_bs2
    '
    '            If (per1 = 0 And per2 <> 0) Then
    '
    '                pyp_display1 = Format(per1, "0%")
    '
    '                pyp_display2 = Format(per2, "###.00%")
    '
    '            ElseIf (per1 <> 0 And per2 = 0) Then
    '
    '                pyp_display1 = Format(per1, "###.00%")
    '
    '                pyp_display2 = Format(per2, "0%")
    '
    '            ElseIf per1 <> 0 And per2 <> 0 Then
    '
    '                pyp_display1 = Format(per1, "###.00%")
    '
    '                pyp_display2 = Format(per2, "###.00%")
    '
    '            End If
    '
    '        End If
    '
    '        ''''''2、厌氧瓶
    '
    '    ElseIf Form2.SkinLabel7(n).Caption = "厌氧培养瓶" Then
    '
    '        pyp_file = "yanyang"
    '
    '        If (Form2.SkinLabel10(n) = 1 Or Form2.SkinLabel10(n) = 3) Then          '统计阴性结果
    '
    '            pyp_yy1 = pyp_yy1 + 1
    '
    '        ElseIf (Form2.SkinLabel10(n) = 2 Or Form2.SkinLabel10(n) = 4) Then      '统计阳性结果
    '
    '            pyp_yy2 = pyp_yy2 + 1
    '
    '        End If
    '
    '        If sum = 0 Then                                                         '计算厌氧瓶阴阳性比例
    '
    '            per1 = 0: per2 = 0: pyp_count1 = 0: pyp_count2 = 0
    '
    '            pyp_display1 = Format(per1, "0%")
    '
    '            pyp_display2 = Format(per2, "0%")
    '
    '        Else
    '
    '            per1 = pyp_yy1 / sum: per2 = pyp_yy2 / sum: pyp_count1 = pyp_yy1: pyp_count2 = pyp_yy2
    '
    '            If (per1 = 0 And per2 <> 0) Then
    '
    '                pyp_display1 = Format(per1, "0%")
    '
    '                pyp_display2 = Format(per2, "###.00%")
    '
    '            ElseIf (per1 <> 0 And per2 = 0) Then
    '
    '                pyp_display1 = Format(per1, "###.00%")
    '
    '                pyp_display2 = Format(per2, "0%")
    '
    '            ElseIf per1 <> 0 And per2 <> 0 Then
    '
    '                pyp_display1 = Format(per1, "###.00%")
    '
    '                pyp_display2 = Format(per2, "###.00%")
    '
    '            End If
    '
    '        End If
    '
    '        ''''''3、中和小儿瓶
    '
    '    ElseIf Form2.SkinLabel7(n).Caption = "中和抗生素儿童需氧瓶" Then
    '
    '        pyp_file = "zhongxiao"
    '
    '        If (Form2.SkinLabel10(n) = 1 Or Form2.SkinLabel10(n) = 3) Then          '统计阴性结果
    '
    '            pyp_zx1 = pyp_zx1 + 1
    '
    '        ElseIf (Form2.SkinLabel10(n) = 2 Or Form2.SkinLabel10(n) = 4) Then      '统计阳性结果
    '
    '            pyp_zx2 = pyp_zx2 + 1
    '
    '        End If
    '
    '        If sum = 0 Then                                                         '计算中和小儿瓶阴阳性比例
    '
    '            per1 = 0: per2 = 0: pyp_count1 = 0: pyp_count2 = 0
    '
    '            pyp_display1 = Format(per1, "0%")
    '
    '            pyp_display2 = Format(per2, "0%")
    '
    '        Else
    '
    '            per1 = pyp_zx1 / sum: per2 = pyp_zx2 / sum: pyp_count1 = pyp_zx1: pyp_count2 = pyp_zx2
    '
    '            If (per1 = 0 And per2 <> 0) Then
    '
    '                pyp_display1 = Format(per1, "0%")
    '
    '                pyp_display2 = Format(per2, "###.00%")
    '
    '            ElseIf (per1 <> 0 And per2 = 0) Then
    '
    '                pyp_display1 = Format(per1, "###.00%")
    '
    '                pyp_display2 = Format(per2, "0%")
    '
    '            ElseIf per1 <> 0 And per2 <> 0 Then
    '
    '                pyp_display1 = Format(per1, "###.00%")
    '
    '                pyp_display2 = Format(per2, "###.00%")
    '
    '            End If
    '
    '        End If
    '
    '        ''''''4、中和嗜养瓶
    '
    '    ElseIf Form2.SkinLabel7(n).Caption = "中和抗生素成人需氧瓶" Then
    '
    '        pyp_file = "zhongshi"
    '
    '        If (Form2.SkinLabel10(n) = 1 Or Form2.SkinLabel10(n) = 3) Then          '统计阴性结果
    '
    '            pyp_zs1 = pyp_zs1 + 1
    '
    '        ElseIf (Form2.SkinLabel10(n) = 2 Or Form2.SkinLabel10(n) = 4) Then      '统计阳性结果
    '
    '            pyp_zs2 = pyp_zs2 + 1
    '
    '        End If
    '
    '        If sum = 0 Then                                                         '计算中和嗜养瓶阴阳性比例
    '
    '            per1 = 0: per2 = 0: pyp_count1 = 0: pyp_count2 = 0
    '
    '            pyp_display1 = Format(per1, "0%")
    '
    '            pyp_display2 = Format(per2, "0%")
    '
    '        Else
    '
    '            per1 = pyp_zs1 / sum: per2 = pyp_zs2 / sum: pyp_count1 = pyp_zs1: pyp_count2 = pyp_zs2
    '
    '            If (per1 = 0 And per2 <> 0) Then
    '
    '                pyp_display1 = Format(per1, "0%")
    '
    '                pyp_display2 = Format(per2, "###.00%")
    '
    '            ElseIf (per1 <> 0 And per2 = 0) Then
    '
    '                pyp_display1 = Format(per1, "###.00%")
    '
    '                pyp_display2 = Format(per2, "0%")
    '
    '            ElseIf per1 <> 0 And per2 <> 0 Then
    '
    '                pyp_display1 = Format(per1, "###.00%")
    '
    '                pyp_display2 = Format(per2, "###.00%")
    '
    '            End If
    '
    '        End If
    '
    '        ''''''5、中和厌氧瓶
    '
    '    ElseIf Form2.SkinLabel7(n).Caption = "中和抗生素成人厌氧瓶" Then
    '
    '        pyp_file = "zhongyan"
    '
    '        If (Form2.SkinLabel10(n) = 1 Or Form2.SkinLabel10(n) = 3) Then          '统计阴性结果
    '
    '            pyp_zy1 = pyp_zy1 + 1
    '
    '        ElseIf (Form2.SkinLabel10(n) = 2 Or Form2.SkinLabel10(n) = 4) Then      '统计阳性结果
    '
    '            pyp_zy2 = pyp_zy2 + 1
    '
    '        End If
    '
    '        If sum = 0 Then                                                         '计算中和厌氧瓶阴阳性比例
    '
    '            per1 = 0: per2 = 0: pyp_count1 = 0: pyp_count2 = 0
    '
    '            pyp_display1 = Format(per1, "0%")
    '
    '            pyp_display2 = Format(per2, "0%")
    '
    '        Else
    '
    '            per1 = pyp_zy1 / sum: per2 = pyp_zy2 / sum: pyp_count1 = pyp_zy1: pyp_count2 = pyp_zy2
    '
    '            If (per1 = 0 And per2 <> 0) Then
    '
    '                pyp_display1 = Format(per1, "0%")
    '
    '                pyp_display2 = Format(per2, "###.00%")
    '
    '            ElseIf (per1 <> 0 And per2 = 0) Then
    '
    '                pyp_display1 = Format(per1, "###.00%")
    '
    '                pyp_display2 = Format(per2, "0%")
    '
    '            ElseIf per1 <> 0 And per2 <> 0 Then
    '
    '                pyp_display1 = Format(per1, "###.00%")
    '
    '                pyp_display2 = Format(per2, "###.00%")
    '
    '            End If
    '
    '        End If
    '
    '        ''''''6、分支杆菌培养瓶
    '
    '    ElseIf Form2.SkinLabel7(n).Caption = "中和抗生素厌氧瓶" Then
    '
    '        pyp_file = "fengan"
    '
    '        If (Form2.SkinLabel10(n) = 1 Or Form2.SkinLabel10(n) = 3) Then          '统计阴性结果
    '
    '            pyp_fg1 = pyp_fg1 + 1
    '
    '        ElseIf (Form2.SkinLabel10(n) = 2 Or Form2.SkinLabel10(n) = 4) Then      '统计阳性结果
    '
    '            pyp_fg2 = pyp_fg2 + 1
    '
    '        End If
    '
    '        If sum = 0 Then                                                         '计算分支杆菌培养瓶阴阳性比例
    '
    '            per1 = 0: per2 = 0: pyp_count1 = 0: pyp_count2 = 0
    '
    '            pyp_display1 = Format(per1, "0%")
    '
    '            pyp_display2 = Format(per2, "0%")
    '
    '        Else
    '
    '            per1 = pyp_fg1 / sum: per2 = pyp_fg2 / sum: pyp_count1 = pyp_fg1: pyp_count2 = pyp_fg2
    '
    '            If (per1 = 0 And per2 <> 0) Then
    '
    '                pyp_display1 = Format(per1, "0%")
    '
    '                pyp_display2 = Format(per2, "###.00%")
    '
    '            ElseIf (per1 <> 0 And per2 = 0) Then
    '
    '                pyp_display1 = Format(per1, "###.00%")
    '
    '                pyp_display2 = Format(per2, "0%")
    '
    '            ElseIf per1 <> 0 And per2 <> 0 Then
    '
    '                pyp_display1 = Format(per1, "###.00%")
    '
    '                pyp_display2 = Format(per2, "###.00%")
    '
    '            End If
    '
    '        End If
    '
    '    End If
    
    getFileWriteLock
    
    Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & Form2.SkinLabel7(n).Caption & ".txt" For Output As #4 '按培养瓶种类保存统计情况资料
    
    Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & Form2.SkinLabel7(n).Caption & "统计情况:"
    Print #4, "本月测得阴阳性总数为:" & sum
    Print #4, "本月" & Form2.SkinLabel7(n).Caption & "测得阴性总数为:" & pyp_count1
    Print #4, "本月" & Form2.SkinLabel7(n).Caption & "测得阳性总数为:" & pyp_count2
    Print #4, "本月测得阴性比例为:" & pyp_display1
    Print #4, "本月测得阳性比例为:" & pyp_display2
    
    Close #4
    
    Open App.Path & "\count\" & Form2.SkinLabel7(n).Caption & ".txt" For Output As #5 '按时间保存阴阳总数资料
    
    Print #5, pyp_count1                                                        '阴性总数
    Print #5, pyp_count2                                                        '阳性总数
    
    Close #5
    
    releaseFileWriteLock
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''统计病人信息统计资料'''''''''''''''''''''''''''''''''''
    
    Open App.Path & "\statistics\" & Format(Now, "yyyy-mm") & "\" & "病人信息" & ".txt" For Append As #8 '保存病人信息
    
    Print #8, Format(Now, "yyyy-mm-dd") & "病人信息:"
    Print #8, "条形码:" & Form2.SkinLabel2(n).Caption & " " & "姓名:" & Form2.SkinLabel3(n).Caption & " " & "ID:" & Form2.SkinLabel78(n).Caption & " " & "性别:" & Form2.SkinLabel4(n).Caption & " " & "年龄:" & Form2.SkinLabel5(n).Caption & " " & "科室:" & Form2.SkinLabel6(n).Caption & " " & "培养结果:" & Form3.SkinLabel21.Caption & " " & "培养起始时间:" & Form3.SkinLabel16.Caption & " " & "取出时间:" & Format(Now, "mm-dd hh:mm")
    
    Close #8
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''''''''''''''''''''''当前信息初始化''''''''''''''''''''''''''''''''''''''
    
    Form3.SkinLabel2.Caption = ""                                               '测量界面条形码清空
    Form3.SkinLabel4.Caption = ""                                               '测量界面姓名清空
    Form3.SkinLabel23.Caption = ""                                              '测量截面ID清空
    Form3.SkinLabel6.Caption = ""                                               '测量界面性别清空
    Form3.SkinLabel8.Caption = ""                                               '测量界面年龄清空
    Form3.SkinLabel10.Caption = ""                                              '测量界面科室清空
    Form3.SkinLabel12.Caption = ""                                              '测量界面培养瓶种类清空
    Form3.SkinLabel14.Caption = ""                                              '测量界面培养时间清空
    Form3.SkinLabel16.Caption = ""                                              '测量界面起始时间清空
    Form3.SkinLabel21.Caption = ""                                              '测量界面测量结果清空
    Form2.SkinLabel2(n).Caption = ""                                            '工作界面条形码清空
    Form2.SkinLabel3(n).Caption = ""                                            '工作界面姓名清空
    Form2.SkinLabel78(n).Caption = ""                                           '工作界面ID清空
    Form2.SkinLabel4(n).Caption = ""                                            '工作界面性别清空
    Form2.SkinLabel5(n).Caption = ""                                            '工作界面年龄清空
    Form2.SkinLabel6(n).Caption = ""                                            '工作界面科室清空
    Form2.SkinLabel7(n).Caption = ""                                            '工作界面培养瓶种类清空
    Form2.SkinLabel8(n).Caption = ""                                            '工作界面时间清空
    Form2.SkinLabel9(n).Caption = ""                                            '工作界面时间清空
    Form2.SkinLabel42(n).Caption = ""                                           '工作界面时间清空
    Form2.SkinLabel43(n).Caption = ""                                           '工作界面时间清空
    Form2.SkinLabel10(n).Caption = ""                                           '工作界面培养状态清空
    Form2.SkinLabel11(n).Caption = ""                                           '工作界面培养时间清空
    Form2.Picture1(n).Picture = LoadPicture(App.Path + "\pic\4.jpg")            '图案默认值为白色
    Form2.Picture1(n).ToolTipText = ""
    Form2.Shape1(n).Visible = False
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''''''''''''''''''''''''刷新sys文件'''''''''''''''''''''''''''''''''''''''
    
    Dim a As Integer
    
    getFileWriteLock
    
    Open App.Path & "\sys\sys.txt" For Output As #2                             '重新初始化sys文件
    
    Print #2, "Revision 2017"                                                   '文件版本
    
    For a = 0 To 59
        
        Print #2, Form2.SkinLabel2(a).Caption                                   '条形码
        Print #2, Form2.SkinLabel3(a).Caption                                   '姓名
        Print #2, Form2.SkinLabel78(a).Caption                                  'ID
        Print #2, Form2.SkinLabel4(a).Caption                                   '性别
        Print #2, Form2.SkinLabel5(a).Caption                                   '年龄
        Print #2, Form2.SkinLabel6(a).Caption                                   '科室
        Print #2, Form2.SkinLabel7(a).Caption                                   '培养瓶种类
        Print #2, Form2.SkinLabel11(a).Caption                                  '培养时间
        Print #2, Form2.SkinLabel8(a).Caption + Form2.SkinLabel9(a).Caption     '时间:月日+时分
        Print #2, Form2.SkinLabel10(a).Caption                                  '培养状态
        
    Next a
    
    Close #2
    
    releaseFileWriteLock
    
    Form2.AllStatesStatistic
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    Form2.Enabled = True                                                        '工作界面启用
    
    Form3.Enabled = True                                                        '工作界面启用
    
    Unload Form6                                                                '卸载本界面
    
    Unload Form3                                                                '卸载测量界面
    
End Sub

Private Sub Command2_Click()                                                    '取消按钮
    
    Unload Form6                                                                '卸载本窗体
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    
    command(0) = &H80
    
    Form2.MSComm1.Output = command                                              ''
    
    command(0) = &H80
    
    Form2.MSComm1.Output = command                                              ''
    
    command(0) = &HFF                                                           '清空命令
    
    Form3.Enabled = True                                                        '测量界面启用
    
End Sub
