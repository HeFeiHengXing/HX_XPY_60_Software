VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form4 
   Caption         =   "信息输入界面"
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
      Caption         =   "下一步"
      Height          =   375
      Left            =   1590
      TabIndex        =   10
      Top             =   3375
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      Height          =   375
      Left            =   3150
      TabIndex        =   9
      Top             =   3375
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "↑"
      Height          =   255
      Left            =   2640
      TabIndex        =   6
      Top             =   2655
      Width           =   255
   End
   Begin VB.CommandButton Command4 
      Caption         =   "↓"
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

Const WS_SYSMENU = &H80000                                                      ''''''''''''''''''''''''''''''消除界面上的X按钮
Const GWL_STYLE = (-16)
Const SWP_NOMOVE = &H2
Const SWP_NOSIZE = &H1
Const SWP_NOZORDER = &H4
Const SWP_DRAWFRAME = &H20
Private CheckBarcode As Boolean

Private Sub Form_Load()                                                         '初始化各项信息
    
    CheckBarcode = True
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '窗体居中
    
    Skin1.LoadSkin App.Path + "\Skins\3.skn"
    
    Skin1.ApplySkin Me.hWnd                                                     '加载皮肤
    
    Dim lStyle As Long                                                          ''''''''''''''''''''''''''''''消除界面上的X按钮
    lStyle = GetWindowLong(hWnd, GWL_STYLE)
    lStyle = lStyle And Not WS_SYSMENU
    SetWindowLong Me.hWnd, GWL_STYLE, lStyle
    SetWindowPos Me.hWnd, 0, 0, 0, 0, 0, SWP_NOZORDER Or SWP_DRAWFRAME Or SWP_NOMOVE Or SWP_NOSIZE
    
    Open App.Path & "\sys\settime.txt" For Input As #11                         '在文件中读取培养时间
    
    Line Input #11, textline                                                    '将读入数据存到变量TextLine中
    
    SkinLabel8.Caption = Val(textline)                                          '显示培养时间
    
    Close #11
    
    Open App.Path & "\sys\section.txt" For Input As #12                         '在文件中读取科室类别
    
    Do While Not EOF(12)                                                        'EOF为文尾添加list
        
        Line Input #12, textline
        
        If (Trim(textline)) <> "" Then
            
            Combo1.AddItem (Trim(textline))                                     '添加科室种类
            
        End If
        
    Loop
    
    Close #12
    
End Sub

Private Sub Command1_Click()                                                    '进行各项设置
    
    If Dir(App.Path & "\statistics\" & Format(Now, "yyyy-mm"), vbDirectory) = "" Then '当前年月文件夹为空
        
        sum = 0: sum1 = 0: sum2 = 0
        
        keshi_nk1 = 0: keshi_nk2 = 0: keshi_wk1 = 0: keshi_wk2 = 0: keshi_xk1 = 0: keshi_xk2 = 0: keshi_fk1 = 0: keshi_fk2 = 0
        
        pyp_bs1 = 0: pyp_bs2 = 0: pyp_yy1 = 0: pyp_yy2 = 0: pyp_zx1 = 0: pyp_zx2 = 0: pyp_zs1 = 0: pyp_zs2 = 0: pyp_zy1 = 0: pyp_zy2 = 0: pyp_fg1 = 0: pyp_fg2 = 0
        
        MkDir App.Path & "\statistics\" & Format(Now, "yyyy-mm")                '建立关于该年月的统计文件夹
        
    End If
    
    If Dir(App.Path & "\data\" & Text1.Text & ".txt") <> "" Then                '该条形码已存在
        
        answer = MsgBox("条形码重复！", 48, "信息提示")
        
        If answer = vbOK Then
            
            Exit Sub
            
        End If
        
    End If
    
    If Text1.Text = "" Then                                                     '条形码为空
        
        answer = MsgBox("提示：没有输入条形码!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入条形码
            
            Text1.Enabled = True
            
            Exit Sub
            
        End If
        
        'ElseIf Combo1.Text = "" Then  '科室为空,2012-3-5,去掉科室输入与选择功能
        
        'answer = MsgBox("提示：没有输入科室!", 48, "信息提示")
        
        'If answer = 1 Then  '重新输入培养瓶种类
        
        ' Combo1.Enabled = True
        
        ' Exit Sub
        
        ' End If
        
    ElseIf Combo2.Text = "" Then                                                '培养瓶种类为空
        
        answer = MsgBox("提示：没有输入培养瓶种类!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入培养瓶种类
            
            Combo2.Enabled = True
            
            Exit Sub
            
        End If
        
    Else
        
        If Combo1.Text = "" Then                                                '科室为空
            
            Combo1.Text = "其他科室"
            
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
                
                Open App.Path & "\sys\section.txt" For Output As #14            '在文件中添加科室类别
                
                Print #14, Trim(Combo1.Text)
                
                For nn = 0 To Combo1.ListCount
                    
                    Print #14, Combo1.List(nn)
                    
                Next nn
                
                Close #14
                
            End If
            
        End If
        
        If Text2.Text = "" Then                                                 '姓名为空
            
            Text2.Text = "无"
            
        End If
        
        If Text5.Text = "" Then                                                 '性别为空
            
            Text5.Text = "无"
            
        End If
        
        If Text3.Text = "" Then                                                 '年龄为空
            
            Text3.Text = "无"
            
        End If
        
        Form3.SkinLabel2.Caption = Text1.Text                                   '条形码
        Form3.SkinLabel4.Caption = Text2.Text                                   ''姓名
        Form3.SkinLabel23.Caption = Text4.Text                                  ' ID
        Form3.SkinLabel6.Caption = Text5.Text                                   '性别
        Form3.SkinLabel8.Caption = Text3.Text                                   '年龄
        Form3.SkinLabel10.Caption = Combo1.Text                                 '科室
        Form3.SkinLabel12.Caption = Combo2.Text                                 '培养瓶种类
        Form3.SkinLabel14.Caption = SkinLabel8.Caption                          '培养时间
        Form3.SkinLabel16.Caption = Format(Now, "mm-dd hh:mm")                  '时间:月日+时分
        
    End If
    
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
    
    'light_flag = 1  '点灯命令标志位设为1
    
    Form5.Show                                                                  '培养瓶放入界面启用
    Unload Form4                                                                '卸载本窗体
    
End Sub

Private Sub Command2_Click()                                                    '取消
    
    Form3.Enabled = True                                                        '测量界面启用
    Unload Form4                                                                '卸载本窗体
    
End Sub

Private Sub Command3_Click()                                                    '培养天数递增命令按钮
    
    SkinLabel8.Caption = SkinLabel8.Caption + 1
    
    If (Val(SkinLabel8.Caption) > 30) Then
        
        answer = MsgBox("提示：设置的培养时间过长!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入年龄
            
            SkinLabel8.Caption = 30
            
            Exit Sub
            
        End If
        
    End If
    
End Sub

Private Sub Command4_Click()                                                    '培养天数递减命令按钮
    
    SkinLabel8.Caption = SkinLabel8.Caption - 1
    
    If (Val(SkinLabel8.Caption) < 1) Then
        
        answer = MsgBox("提示：设置的培养时间过短!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入年龄
            
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
            
            Combo2.Text = "中和抗生素厌氧培养瓶"
            
        ElseIf (textheader = "SP") Then
            
            Combo2.Text = "中和抗生素儿童培养瓶"
            
        ElseIf (textheader = "SA") Then
            
            Combo2.Text = "需氧培养瓶"
            
        ElseIf (textheader = "SF") Then
            
            Combo2.Text = "中和抗生素需氧培养瓶"
            
        ElseIf (textheader = "SN") Then
            
            Combo2.Text = "厌氧培养瓶"
            
        End If
        
    End If
    
    If (Len(Text1.Text) < 2) Then
        
        CheckBarcode = True
        
    End If
    
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)                                 '条形码只能输入数字和空格
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        ' KeyAscii = 0
        
    End If
    
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer)                                 '年龄只能输入数字和空格
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub
