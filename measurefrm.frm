VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form3 
   Caption         =   "测量界面"
   ClientHeight    =   7740
   ClientLeft      =   2385
   ClientTop       =   510
   ClientWidth     =   9270
   LinkTopic       =   "Form3"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7740
   ScaleWidth      =   9270
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   450
      OleObjectBlob   =   "measurefrm.frx":0000
      Top             =   225
   End
   Begin 血液培养仪60瓶.SystemGraph SystemGraph1 
      Height          =   2775
      Left            =   120
      TabIndex        =   28
      Top             =   4800
      Width           =   9015
      _ExtentX        =   15901
      _ExtentY        =   4895
   End
   Begin VB.Frame Frame3 
      Caption         =   "提示"
      Height          =   735
      Left            =   1560
      TabIndex        =   21
      Top             =   120
      Width           =   6255
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel19 
         Height          =   255
         Left            =   2880
         OleObjectBlob   =   "measurefrm.frx":0234
         TabIndex        =   24
         Top             =   360
         Width           =   255
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel18 
         Height          =   255
         Left            =   2520
         OleObjectBlob   =   "measurefrm.frx":0294
         TabIndex        =   23
         Top             =   360
         Width           =   375
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel17 
         Height          =   255
         Left            =   480
         OleObjectBlob   =   "measurefrm.frx":02F2
         TabIndex        =   22
         Top             =   360
         Width           =   2055
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "操作"
      Height          =   3735
      Left            =   6120
      TabIndex        =   17
      Top             =   960
      Width           =   2295
      Begin VB.CommandButton Command4 
         Caption         =   "打印当前报告"
         Height          =   495
         Left            =   480
         TabIndex        =   27
         Top             =   2160
         Width           =   1335
      End
      Begin VB.CommandButton Command3 
         Caption         =   "返回工作界面"
         Height          =   495
         Left            =   480
         TabIndex        =   20
         Top             =   3000
         Width           =   1335
      End
      Begin VB.CommandButton Command2 
         Caption         =   "取出培养瓶"
         Height          =   495
         Left            =   480
         TabIndex        =   19
         Top             =   1320
         Width           =   1335
      End
      Begin VB.CommandButton Command1 
         Caption         =   "培养瓶放入"
         Height          =   495
         Left            =   480
         TabIndex        =   18
         Top             =   480
         Width           =   1335
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "病人信息"
      Height          =   3735
      Left            =   840
      TabIndex        =   0
      Top             =   960
      Width           =   4095
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel23 
         Height          =   255
         Left            =   1200
         OleObjectBlob   =   "measurefrm.frx":0366
         TabIndex        =   30
         Top             =   840
         Width           =   2295
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel22 
         Height          =   255
         Left            =   240
         OleObjectBlob   =   "measurefrm.frx":03C4
         TabIndex        =   29
         Top             =   840
         Width           =   975
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel21 
         Height          =   255
         Left            =   1200
         OleObjectBlob   =   "measurefrm.frx":0440
         TabIndex        =   26
         Top             =   3360
         Width           =   2745
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel20 
         Height          =   255
         Left            =   240
         OleObjectBlob   =   "measurefrm.frx":049E
         TabIndex        =   25
         Top             =   3360
         Width           =   975
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel16 
         Height          =   255
         Left            =   1200
         OleObjectBlob   =   "measurefrm.frx":0506
         TabIndex        =   16
         Top             =   3000
         Width           =   1575
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel15 
         Height          =   255
         Left            =   240
         OleObjectBlob   =   "measurefrm.frx":0564
         TabIndex        =   15
         Top             =   3000
         Width           =   975
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel14 
         Height          =   255
         Left            =   1200
         OleObjectBlob   =   "measurefrm.frx":05CC
         TabIndex        =   14
         Top             =   2640
         Width           =   735
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel13 
         Height          =   255
         Left            =   240
         OleObjectBlob   =   "measurefrm.frx":062A
         TabIndex        =   13
         Top             =   2640
         Width           =   975
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel12 
         Height          =   255
         Left            =   1200
         OleObjectBlob   =   "measurefrm.frx":0692
         TabIndex        =   12
         Top             =   2280
         Width           =   2175
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
         Height          =   255
         Left            =   240
         OleObjectBlob   =   "measurefrm.frx":06F0
         TabIndex        =   11
         Top             =   2280
         Width           =   975
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
         Height          =   255
         Left            =   1200
         OleObjectBlob   =   "measurefrm.frx":075E
         TabIndex        =   10
         Top             =   1920
         Width           =   2655
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
         Height          =   255
         Left            =   240
         OleObjectBlob   =   "measurefrm.frx":07BC
         TabIndex        =   9
         Top             =   1920
         Width           =   975
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
         Height          =   255
         Left            =   1200
         OleObjectBlob   =   "measurefrm.frx":0830
         TabIndex        =   8
         Top             =   1560
         Width           =   975
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
         Height          =   255
         Left            =   240
         OleObjectBlob   =   "measurefrm.frx":088E
         TabIndex        =   7
         Top             =   1560
         Width           =   975
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
         Height          =   255
         Left            =   1200
         OleObjectBlob   =   "measurefrm.frx":0902
         TabIndex        =   6
         Top             =   1200
         Width           =   1575
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
         Height          =   255
         Left            =   240
         OleObjectBlob   =   "measurefrm.frx":0960
         TabIndex        =   5
         Top             =   1200
         Width           =   975
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
         Height          =   255
         Left            =   1200
         OleObjectBlob   =   "measurefrm.frx":09D4
         TabIndex        =   4
         Top             =   480
         Width           =   2295
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
         Height          =   255
         Left            =   240
         OleObjectBlob   =   "measurefrm.frx":0A32
         TabIndex        =   3
         Top             =   480
         Width           =   975
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
         Height          =   255
         Left            =   1200
         OleObjectBlob   =   "measurefrm.frx":0AA6
         TabIndex        =   2
         Top             =   240
         Width           =   2535
      End
      Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
         Height          =   255
         Left            =   240
         OleObjectBlob   =   "measurefrm.frx":0B04
         TabIndex        =   1
         Top             =   240
         Width           =   975
      End
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()                                                         '对各项信息进行处理
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '测量窗体居中
    
    Skin1.LoadSkin App.Path + "\Skins\2.skn"
    
    Skin1.ApplySkin Me.hWnd                                                     '使用皮肤
    
    Command4.Enabled = False                                                    '打印禁止
    
    Dim q      As Integer                                                            '作为循环标致
    
    Dim R2     As New Collection                                                    '定义集合变量
    
    Dim TempO1 As New Collection
    
    Dim TempO2 As New Collection
    
    Dim TempO3 As New Collection
    
    q = 0                                                                       '开始读入病人各项信息
    
    Dim bNewRevision As Boolean
    
    Open App.Path & "\sys\sys.txt" For Input As #2                              '在文件中读取
    
    Line Input #2, textline
    
    If textline = "Revision 2017" Then
        
        bNewRevision = True
        
    Else
        
        bNewRevision = False
        
    End If
    
    Do While Not EOF(2)
        
        If q <> 0 Or bNewRevision Then
            Line Input #2, textline                                             '将读入的1行存到变量TextLine中

        End If

        Form2.SkinLabel2(q).Caption = textline                                  '读条形码
        
        Line Input #2, textline                                                 '将读入的1行存到变量TextLine中
        Form2.SkinLabel3(q).Caption = textline                                  '姓名
        
        If bNewRevision Then
            Line Input #2, textline                                             '将读入的2行存到变量TextLine中
            Form2.SkinLabel78(q).Caption = textline                             '读ID
        Else
            Form2.SkinLabel78(q).Caption = ""

        End If
        
        Line Input #2, textline                                                 '将读入的1行存到变量TextLine中
        Form2.SkinLabel4(q).Caption = textline                                  '性别
        
        Line Input #2, textline                                                 '将读入的1行存到变量TextLine中
        Form2.SkinLabel5(q).Caption = textline                                  '年龄
        
        Line Input #2, textline                                                 '将读入的1行存到变量TextLine中
        Form2.SkinLabel6(q).Caption = textline                                  '科室
        
        Line Input #2, textline                                                 '将读入的1行存到变量TextLine中
        Form2.SkinLabel7(q).Caption = textline                                  '培养瓶种类
        
        Line Input #2, textline                                                 '将读入的1行存到变量TextLine中
        Form2.SkinLabel11(q).Caption = textline                                 '培养时间
        
        Line Input #2, textline                                                 '将读入的1行存到变量TextLine中
        Form2.SkinLabel8(q).Caption = Mid(textline, 1, 7)                       '读时间:年月
        Form2.SkinLabel9(q).Caption = Mid(textline, 8, 11)                      '读时间:月日+时分
        Form2.SkinLabel42(q).Caption = Mid(textline, 1, 4)                      '读时间:年份
        Form2.SkinLabel43(q).Caption = Mid(textline, 6, 2)                      '读时间:月份
        
        Line Input #2, textline                                                 '将读入的1行存到变量TextLine中
        Form2.SkinLabel10(q).Caption = textline                                 '读培养状态
        
        q = q + 1                                                               '循环
        
    Loop
    
    Close #2
    
    SkinLabel2.Caption = Form2.SkinLabel2(n).Caption                            '条形码
    SkinLabel4.Caption = Form2.SkinLabel3(n).Caption                            '姓名
    SkinLabel23.Caption = Form2.SkinLabel78(n).Caption                          'ID
    SkinLabel6.Caption = Form2.SkinLabel4(n).Caption                            '性别
    SkinLabel8.Caption = Form2.SkinLabel5(n).Caption                            '年龄
    SkinLabel10.Caption = Form2.SkinLabel6(n).Caption                           '科室
    SkinLabel12.Caption = Form2.SkinLabel7(n).Caption                           '培养瓶种类
    SkinLabel14.Caption = Form2.SkinLabel11(n).Caption                          '培养时间
    SkinLabel16.Caption = Form2.SkinLabel9(n).Caption                           '时间:月日+时分
    SkinLabel18.Caption = (n + 1) & "#"                                         '孔位号
    
    If SkinLabel2 <> "" Then
        
        Command1.Enabled = False                                                '培养瓶放入按钮禁用
        Command2.Enabled = True                                                 '培养瓶取出按钮可用
        Command4.Enabled = True                                                 '打印当前报告按钮可用
        
        cul_time = Val(Form2.SkinLabel11(n))                                    '培养时间
        
        barcode_name = SkinLabel2                                               '条形码
        
        time_start = Mid(SkinLabel16, 1, 5)                                     '测量起始时间，月日
        
        If cul_time = 1 Then                                                    ''
            
            cul_time = 59
            
        ElseIf cul_time = 2 Then
            
            cul_time = 29
            
        ElseIf cul_time = 3 Then
            
            cul_time = 19
            
        ElseIf cul_time = 4 Then
            
            cul_time = 14
            
        ElseIf cul_time = 5 Then
            
            cul_time = 11
            
        ElseIf cul_time = 6 Then
            
            cul_time = 10
            
        ElseIf cul_time = 7 Then
            
            cul_time = 8
            
        ElseIf cul_time = 8 Then
            
            cul_time = 7
            
        ElseIf cul_time = 9 Or cul_time = 10 Then
            
            cul_time = 6
            
        ElseIf cul_time = 11 Or cul_time = 12 Then
            
            cul_time = 5
            
        ElseIf cul_time = 13 Or cul_time = 14 Or cul_time = 15 Then
            
            cul_time = 4
            
        ElseIf cul_time >= 16 Then
            
            cul_time = 3
            
        End If
        
        If Form2.SkinLabel10(n).Caption = 1 Then                                '1--绿，表示无菌，但测量未完成
            
            SkinLabel21.Caption = "正在培养中..."                               '"阴性"
            
        ElseIf Form2.SkinLabel10(n).Caption = 2 Then                            '2--红，表示有菌，但测量未完成
            
            SkinLabel21.Caption = "阳性"
            
        ElseIf Form2.SkinLabel10(n).Caption = 3 Then                            '3--绿×，表示测量完成，无菌
            
            SkinLabel21.Caption = "阴性"
            
        ElseIf Form2.SkinLabel10(n).Caption = 4 Then                            '4--红×，表示测量完成，有菌
            
            SkinLabel21.Caption = "阳性"
            
        End If
        
        Open App.Path & "\data\" & Form2.SkinLabel2(n) & ".txt" For Input As #1 '显示曲线
        
        Line Input #1, textline

        If textline = "Revision 2017" Then
            Line Input #1, textline
            Line Input #1, textline
            Line Input #1, textline
        End If                                                                  '

        Line Input #1, textline
        Line Input #1, textline
        Line Input #1, textline
        Line Input #1, textline
        Line Input #1, textline
        Line Input #1, textline
        Line Input #1, textline
        
        Do While Not EOF(1)                                                     'EOF为文尾测试函数
            
            Line Input #1, textline                                             '读数据
            R2.Add Int(Mid(textline, 1, 4))
            TempO1.Add Val(Mid(textline, 21, 5))
            TempO2.Add Val(Mid(textline, 27, 5))
            TempO3.Add Val(Mid(textline, 33, 5))
            
        Loop
        
        Close #1
        
        Call SystemGraph1.DrawGraph(R2, TempO1, TempO2, TempO3, Val(Form2.SkinLabel11(n))) '画曲线
        
    Else
        
        Command1.Enabled = True                                                 '培养瓶放入按钮可用
        Command2.Enabled = False                                                '培养瓶取出按钮禁用
        Command4.Enabled = False                                                '打印当前报告按钮禁用
        
    End If
    
End Sub

Private Sub Form_Unload(Cancel As Integer)                                      '卸载界面
    
    Form2.Enabled = True                                                        '工作界面启用
    Unload Form3                                                                '卸载测量界面
    
End Sub

Private Sub Command1_Click()                                                    '培养瓶放入命令按钮
    
    Form3.Enabled = False                                                       '测量界面禁用
    Form4.Show                                                                  '进入信息输入界面
    
End Sub

Private Sub Command2_Click()                                                    '取出培养瓶命令按钮
    
    Form3.Enabled = False                                                       '测量界面禁用
    Form6.Show                                                                  '进入取出培养瓶界面
    
End Sub

Private Sub Command3_Click()                                                    '返回工作界面
    
    Form2.Enabled = True                                                        '工作界面启动
    Unload Form3                                                                '卸载测量界面
    
End Sub

Private Sub Command4_Click()                                                    '打印当前报告
    
    Dim word As Object
    
    If Dir(App.Path & "\print\", vbDirectory) = "" Then
        
        MkDir App.Path & "\print\"                                              '建立关于打印文件夹
        
    End If
    
    getFileWriteLock
    
    Open App.Path & "\print\" & SkinLabel2.Caption & ".doc" For Output As #11   '打印内容
    
    Print #11, "条形码：" & SkinLabel2.Caption
    
    Print #11, "姓名：" & SkinLabel4.Caption
    
    Print #11, "ID：" & SkinLabel23.Caption
    
    Print #11, "性别：" & SkinLabel6.Caption
    
    Print #11, "年龄：" & SkinLabel8.Caption
    
    Print #11, "科室：" & SkinLabel10.Caption
    
    Print #11, "培养瓶种类：" & SkinLabel12.Caption
    
    Print #11, "培养时间：" & SkinLabel14.Caption
    
    Print #11, "测量时间：" & Form2.SkinLabel42(n).Caption & "-" & SkinLabel16.Caption
    
    Print #11, "测量结果：" & SkinLabel21.Caption
    
    Close #11
    
    releaseFileWriteLock
    
    Set word = CreateObject("Word.Application")
    
    Set a = word.Documents.Open(App.Path & "\print\" & SkinLabel2.Caption & ".doc")
    
    word.Visible = True
    
End Sub

