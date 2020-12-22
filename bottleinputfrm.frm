VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form5 
   Caption         =   "放入培养瓶"
   ClientHeight    =   1935
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   2655
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1935
   ScaleWidth      =   2655
   StartUpPosition =   3  '窗口缺省
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   900
      OleObjectBlob   =   "bottleinputfrm.frx":0000
      Top             =   90
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
      Height          =   375
      Left            =   840
      TabIndex        =   4
      Top             =   1320
      Width           =   855
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
      Height          =   255
      Left            =   1800
      OleObjectBlob   =   "bottleinputfrm.frx":0234
      TabIndex        =   3
      Top             =   720
      Width           =   615
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
      Height          =   255
      Left            =   1440
      OleObjectBlob   =   "bottleinputfrm.frx":0296
      TabIndex        =   2
      Top             =   720
      Width           =   375
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "bottleinputfrm.frx":02F4
      TabIndex        =   1
      Top             =   240
      Width           =   615
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "bottleinputfrm.frx":0358
      TabIndex        =   0
      Top             =   720
      Width           =   1335
   End
End
Attribute VB_Name = "Form5"
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
    
    Skin1.ApplySkin Me.hWnd                                                     '加载皮肤
    
    SkinLabel3.Caption = (n + 1) & "#"                                          '孔位号
    
    Dim lStyle As Long                                                          ''''''''''''''''''''''''''''''消除界面上的X按钮

    lStyle = GetWindowLong(hWnd, GWL_STYLE)
    lStyle = lStyle And Not WS_SYSMENU
    SetWindowLong Me.hWnd, GWL_STYLE, lStyle
    SetWindowPos Me.hWnd, 0, 0, 0, 0, 0, SWP_NOZORDER Or SWP_DRAWFRAME Or SWP_NOMOVE Or SWP_NOSIZE
    
End Sub

Private Sub Command1_Click()                                                    '确认按钮
    
    Dim a          As Integer                                                            '作为循环变量
    
    Dim keshi_name As String                                                    '当前科室
    
    Dim keshi_file As String                                                    '当前科室文件名
    
    Dim pyp_name   As String                                                      '当前培养瓶种类
    
    Dim pyp_file   As String                                                      '当前培养瓶种类文件名
    
    Form3.Command1.Enabled = False                                              '培养瓶放入按钮不可用
    
    Form3.Command2.Enabled = True                                               '培养瓶取出按钮可用
    
    Form2.SkinLabel2(n).Caption = Form3.SkinLabel2.Caption                      '条形码
    Form2.SkinLabel3(n).Caption = Form3.SkinLabel4.Caption                      '姓名
    Form2.SkinLabel78(n).Caption = Form3.SkinLabel23.Caption                    'ID
    Form2.SkinLabel4(n).Caption = Form3.SkinLabel6.Caption                      '性别
    Form2.SkinLabel5(n).Caption = Form3.SkinLabel8.Caption                      '年龄
    Form2.SkinLabel6(n).Caption = Form3.SkinLabel10.Caption                     '科室
    Form2.SkinLabel7(n).Caption = Form3.SkinLabel12.Caption                     '培养瓶种类
    Form2.SkinLabel9(n).Caption = Form3.SkinLabel16.Caption                     '时间:月日+时分
    Form2.SkinLabel8(n).Caption = Format(Now, "yyyy-mm")                        '时间:年月
    Form2.SkinLabel42(n).Caption = Mid(Form2.SkinLabel8(n).Caption, 1, 4)       '时间:年份
    Form2.SkinLabel43(n).Caption = Mid(Form2.SkinLabel8(n).Caption, 6, 2)       '时间:月份
    Form2.SkinLabel11(n).Caption = Form3.SkinLabel14.Caption                    '培养时间
    Form2.Picture1(n).Picture = LoadPicture(App.Path + "\pic\5.jpg")            '开始测量时的图标
    Form2.SkinLabel10(n).Caption = 1                                            '培养瓶状态初始化
    
    Open App.Path & "\data\" & Form3.SkinLabel2.Caption & ".txt" For Append As #1 '新建文件,文件名不允许改动
    
    Print #1, "Revision 2017"                                                   '版本号
    Print #1, (n + 1) & "#"                                                     '瓶孔号
    Print #1, Form3.SkinLabel2                                                  '条形码
    Print #1, Form3.SkinLabel23                                                 'ID
    Print #1, Form3.SkinLabel4                                                  '姓名
    Print #1, Form3.SkinLabel6                                                  '性别
    Print #1, Form3.SkinLabel8                                                  '年龄
    Print #1, Form3.SkinLabel10                                                 '科室
    Print #1, Form3.SkinLabel12                                                 '培养瓶种类
    Print #1, Form3.SkinLabel14                                                 '培养时间
    Print #1, Format(Now, "yyyy-mm-dd hh:mm")                                   '时间
    
    Close #1
    
    '''''''''''''''''''''''''''''按时间保存统计资料初始化''''''''''''''''''''''''''''''''
    
    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & "统计情况" & ".txt", vbDirectory) = "" Then
        
        getFileWriteLock
        
        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & "统计情况" & ".txt" For Output As #4 '按时间保存统计情况资料初始化
        
        Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & "统计情况:"
        Print #4, "本月测得阴阳性总数为:" & 0
        Print #4, "本月测得阴性总数为:" & 0
        Print #4, "本月测得阳性总数为:" & 0
        Print #4, "本月测得阴性比例为:" & "0%"
        Print #4, "本月测得阳性比例为:" & "0%"
        
        Close #4
        
        Open App.Path & "\count\count.txt" For Output As #5                     '按时间保存阴阳总数初始化
        
        Print #5, 0                                                             '阴阳总数
        Print #5, 0                                                             '阴性总数
        Print #5, 0                                                             '阳性总数
        
        Close #5
        
        releaseFileWriteLock
        
    End If
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''''''''''''''''''按科室保存统计资料初始化''''''''''''''''''''''''''''''''
    
    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & Form2.SkinLabel6(n).Caption & ".txt", vbDirectory) = "" Then
        
        getFileWriteLock
        
        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & Form2.SkinLabel6(n).Caption & ".txt" For Output As #4
        
        Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & Form2.SkinLabel6(n).Caption & "统计情况:"
        Print #4, "本月测得阴阳性总数为:" & 0
        Print #4, "本月" & Form2.SkinLabel6(n).Caption & "测得阴性总数为:" & 0
        Print #4, "本月" & Form2.SkinLabel6(n).Caption & "测得阳性总数为:" & 0
        Print #4, "本月" & Form2.SkinLabel6(n).Caption & "测得阴性比例为:" & "0%"
        Print #4, "本月" & Form2.SkinLabel6(n).Caption & "测得阳性比例为:" & "0%"
        
        Close #4
        
        Open App.Path & "\count\" & Form2.SkinLabel6(n).Caption & ".txt" For Output As #5 '内科阴阳总数初始化
        
        Print #5, 0                                                             '阴性总数
        Print #5, 0                                                             '阳性总数
        
        Close #5
        
        releaseFileWriteLock
        
    End If
    
    ''''''1、内科
    
    '    keshi_name = "内科"
    '
    '    keshi_file = "neike"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt" For Output As #4 '内科统计情况资料初始化
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & keshi_name & "统计情况:"
    '        Print #4, "本月测得阴阳性总数为:" & 0
    '        Print #4, "本月" & keshi_name & "测得阴性总数为:" & 0
    '        Print #4, "本月" & keshi_name & "测得阳性总数为:" & 0
    '        Print #4, "本月" & keshi_name & "测得阴性比例为:" & "0%"
    '        Print #4, "本月" & keshi_name & "测得阳性比例为:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & keshi_file & ".txt" For Output As #5        '内科阴阳总数初始化
    '
    '        Print #5, 0                                                             '阴性总数
    '        Print #5, 0                                                             '阳性总数
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''2、外科
    '
    '    keshi_name = "外科"
    '
    '    keshi_file = "waike"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt" For Output As #4 '外科统计情况资料初始化
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & keshi_name & "统计情况:"
    '        Print #4, "本月测得阴阳性总数为:" & 0
    '        Print #4, "本月" & keshi_name & "测得阴性总数为:" & 0
    '        Print #4, "本月" & keshi_name & "测得阳性总数为:" & 0
    '        Print #4, "本月" & keshi_name & "测得阴性比例为:" & "0%"
    '        Print #4, "本月" & keshi_name & "测得阳性比例为:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & keshi_file & ".txt" For Output As #5        '外科阴阳总数初始化
    '
    '        Print #5, 0                                                             '阴性总数
    '        Print #5, 0                                                             '阳性总数
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''3、小儿科
    '
    '    keshi_name = "标准儿童需氧瓶"
    '
    '    keshi_file = "xiaoerke"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt" For Output As #4 '小儿科统计情况资料初始化
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & keshi_name & "统计情况:"
    '        Print #4, "本月测得阴阳性总数为:" & 0
    '        Print #4, "本月" & keshi_name & "测得阴性总数为:" & 0
    '        Print #4, "本月" & keshi_name & "测得阳性总数为:" & 0
    '        Print #4, "本月" & keshi_name & "测得阴性比例为:" & "0%"
    '        Print #4, "本月" & keshi_name & "测得阳性比例为:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & keshi_file & ".txt" For Output As #5        '小儿科阴阳总数初始化
    '
    '        Print #5, 0                                                             '阴性总数
    '        Print #5, 0                                                             '阳性总数
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''4、妇科
    '
    '    keshi_name = "妇科"
    '
    '    keshi_file = "fuke"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt" For Output As #4 '妇科统计情况资料初始化
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & keshi_name & "统计情况:"
    '        Print #4, "本月测得阴阳性总数为:" & 0
    '        Print #4, "本月" & keshi_name & "测得阴性总数为:" & 0
    '        Print #4, "本月" & keshi_name & "测得阳性总数为:" & 0
    '        Print #4, "本月" & keshi_name & "测得阴性比例为:" & "0%"
    '        Print #4, "本月" & keshi_name & "测得阳性比例为:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & keshi_file & ".txt" For Output As #5        '妇科阴阳总数初始化
    '
    '        Print #5, 0                                                             '阴性总数
    '        Print #5, 0                                                             '阳性总数
    '
    '        Close #5
    '
    '    End If
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''''''''''''''''按培养瓶种类保存统计资料''''''''''''''''''''''''''''''''''
    
    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & Form2.SkinLabel7(n).Caption & ".txt", vbDirectory) = "" Then
        
        getFileWriteLock
        
        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & Form2.SkinLabel7(n).Caption & ".txt" For Output As #4
        
        Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & Form2.SkinLabel7(n).Caption & "统计情况:"
        Print #4, "本月测得阴阳性总数为:" & 0
        Print #4, "本月" & Form2.SkinLabel7(n).Caption & "测得阴性总数为:" & 0
        Print #4, "本月" & Form2.SkinLabel7(n).Caption & "测得阳性总数为:" & 0
        Print #4, "本月" & Form2.SkinLabel7(n).Caption & "测得阴性比例为:" & "0%"
        Print #4, "本月" & Form2.SkinLabel7(n).Caption & "测得阳性比例为:" & "0%"
        
        Close #4
        
        Open App.Path & "\count\" & Form2.SkinLabel7(n).Caption & ".txt" For Output As #5
        
        Print #5, 0                                                             '阴性总数
        Print #5, 0                                                             '阳性总数
        
        Close #5
        
        releaseFileWriteLock
        
    End If
    
    ''''''1、标准嗜养瓶
    
    '    pyp_name = "需氧培养瓶"
    '
    '    pyp_file = "biaozhun"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt" For Output As #4 '需氧培养瓶统计情况资料初始化
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & pyp_name & "统计情况:"
    '        Print #4, "本月测得阴阳性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阴性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阳性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阴性比例为:" & "0%"
    '        Print #4, "本月" & pyp_name & "测得阳性比例为:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & pyp_file & ".txt" For Output As #5          '标准嗜养瓶阴阳总数初始化
    '
    '        Print #5, 0                                                             '阴性总数
    '        Print #5, 0                                                             '阳性总数
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''2、厌氧瓶
    '
    '    pyp_name = "厌氧培养瓶"
    '
    '    pyp_file = "yanyang"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt" For Output As #4 '厌氧瓶统计情况资料初始化
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & pyp_name & "统计情况:"
    '        Print #4, "本月测得阴阳性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阴性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阳性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阴性比例为:" & "0%"
    '        Print #4, "本月" & pyp_name & "测得阳性比例为:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & pyp_file & ".txt" For Output As #5          '厌氧瓶阴阳总数初始化
    '
    '        Print #5, 0                                                             '阴性总数
    '        Print #5, 0                                                             '阳性总数
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''3、中和小儿瓶
    '
    '    pyp_name = "中和抗生素儿童需氧瓶"
    '
    '    pyp_file = "zhongxiao"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt" For Output As #4 '中和小儿瓶统计情况资料初始化
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & pyp_name & "统计情况:"
    '        Print #4, "本月测得阴阳性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阴性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阳性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阴性比例为:" & "0%"
    '        Print #4, "本月" & pyp_name & "测得阳性比例为:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & pyp_file & ".txt" For Output As #5          '中和小儿瓶阴阳总数初始化
    '
    '        Print #5, 0                                                             '阴性总数
    '        Print #5, 0                                                             '阳性总数
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''4、中和嗜养瓶
    '
    '    pyp_name = "中和抗生素成人需氧瓶"
    '
    '    pyp_file = "zhongshi"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt" For Output As #4 '中和嗜养瓶统计情况资料初始化
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & pyp_name & "统计情况:"
    '        Print #4, "本月测得阴阳性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阴性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阳性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阴性比例为:" & "0%"
    '        Print #4, "本月" & pyp_name & "测得阳性比例为:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & pyp_file & ".txt" For Output As #5          '中和嗜养瓶阴阳总数初始化
    '
    '        Print #5, 0                                                             '阴性总数
    '        Print #5, 0                                                             '阳性总数
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''5、中和厌氧瓶
    '
    '    pyp_name = "中和抗生素成人厌氧瓶"
    '
    '    pyp_file = "zhongyan"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt" For Output As #4 '中和厌养瓶统计情况资料初始化
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & pyp_name & "统计情况:"
    '        Print #4, "本月测得阴阳性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阴性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阳性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阴性比例为:" & "0%"
    '        Print #4, "本月" & pyp_name & "测得阳性比例为:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & pyp_file & ".txt" For Output As #5          '中和厌养瓶阴阳总数初始化
    '
    '        Print #5, 0                                                             '阴性总数
    '        Print #5, 0                                                             '阳性总数
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''6、分支杆菌培养瓶
    '
    '    pyp_name = "中和抗生素厌氧瓶"
    '
    '    pyp_file = "fengan"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt" For Output As #4 '分支杆菌培养瓶统计情况资料初始化
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "年" & Form2.SkinLabel43(n).Caption & "月" & pyp_name & "统计情况:"
    '        Print #4, "本月测得阴阳性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阴性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阳性总数为:" & 0
    '        Print #4, "本月" & pyp_name & "测得阴性比例为:" & "0%"
    '        Print #4, "本月" & pyp_name & "测得阳性比例为:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & pyp_file & ".txt" For Output As #5          '分支杆菌培养瓶阴阳总数初始化
    '
    '        Print #5, 0                                                             '阴性总数
    '        Print #5, 0                                                             '阳性总数
    '
    '        Close #5
    '
    '    End If
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''统计病人信息统计资料'''''''''''''''''''''''''''''''''''
    
    getFileWriteLock
    
    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & "病人信息" & ".txt", vbDirectory) = "" Then
        
        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & "病人信息" & ".txt" For Output As #8 '新建文件,文件名不允许改动
        
        Print #8, Format(Now, "yyyy-mm") & "病人信息:"
        
        Close #8
        
    End If
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''''刷新sys文件,白到绿'''''''''''''''''''''''''''''''''''
     
    Open App.Path & "\sys\sys.txt" For Output As #2
    
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
        Print #2, Form2.SkinLabel10(a).Caption                                  '状态
        
    Next a
    
    Close #2
    
    releaseFileWriteLock
    
    Form2.AllStatesStatistic
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    command(0) = &H80
    
    Form2.MSComm1.Output = command                                              ''
    
    command(0) = &H80
    
    Form2.MSComm1.Output = command                                              ''
    
    command(0) = &HFF                                                           '清空命令
    
    Form3.Enabled = True                                                        '测量窗体启用
    
    Form2.Enabled = True                                                        '工作界面启用
    
    Unload Form3                                                                '卸载测量窗体
    
    Unload Form5                                                                '卸载本窗体
    
End Sub
