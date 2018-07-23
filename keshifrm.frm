VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form13 
   Caption         =   "按科室统计界面"
   ClientHeight    =   2895
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3225
   LinkTopic       =   "Form13"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2895
   ScaleWidth      =   3225
   StartUpPosition =   3  '窗口缺省
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   315
      OleObjectBlob   =   "keshifrm.frx":0000
      Top             =   180
   End
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      Height          =   375
      Left            =   1800
      TabIndex        =   8
      Top             =   2280
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
      Height          =   375
      Left            =   600
      TabIndex        =   7
      Top             =   2280
      Width           =   855
   End
   Begin VB.ComboBox Combo3 
      Height          =   300
      ItemData        =   "keshifrm.frx":0234
      Left            =   960
      List            =   "keshifrm.frx":025C
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   1680
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
      Height          =   255
      Left            =   480
      OleObjectBlob   =   "keshifrm.frx":0290
      TabIndex        =   5
      Top             =   1680
      Width           =   375
   End
   Begin VB.ComboBox Combo2 
      Height          =   300
      ItemData        =   "keshifrm.frx":02F2
      Left            =   960
      List            =   "keshifrm.frx":031A
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   1200
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
      Height          =   255
      Left            =   480
      OleObjectBlob   =   "keshifrm.frx":0366
      TabIndex        =   3
      Top             =   1200
      Width           =   375
   End
   Begin VB.ComboBox Combo1 
      Height          =   300
      ItemData        =   "keshifrm.frx":03C8
      Left            =   960
      List            =   "keshifrm.frx":03CA
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   720
      Width           =   2175
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   240
      OleObjectBlob   =   "keshifrm.frx":03CC
      TabIndex        =   1
      Top             =   720
      Width           =   615
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   240
      OleObjectBlob   =   "keshifrm.frx":0432
      TabIndex        =   0
      Top             =   240
      Width           =   2655
   End
End
Attribute VB_Name = "Form13"
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

Private Sub Form_Load()
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '窗体居中
    
    Skin1.LoadSkin App.Path + "\Skins\3.skn"
    
    Skin1.ApplySkin Me.hWnd                                                     '加载皮肤
    
    Dim lStyle As Long                                                          ''''''''''''''''''''''''''''''消除界面上的X按钮
    lStyle = GetWindowLong(hWnd, GWL_STYLE)
    lStyle = lStyle And Not WS_SYSMENU
    SetWindowLong Me.hWnd, GWL_STYLE, lStyle
    SetWindowPos Me.hWnd, 0, 0, 0, 0, 0, SWP_NOZORDER Or SWP_DRAWFRAME Or SWP_NOMOVE Or SWP_NOSIZE
    
    Open App.Path & "\sys\section.txt" For Input As #12                         '在文件中读取科室类别
    
    Do While Not EOF(12)                                                        'EOF为文尾添加list
        
        Line Input #12, textline
        
        If (Trim(textline)) <> "" Then
            
            Combo1.AddItem (Trim(textline))                                     '添加科室种类
            
        End If
        
    Loop
    
    Close #12
    
End Sub

Private Sub Command1_Click()                                                    '确定按钮
    
    If Combo1.Text = "" Then                                                    '科室为空
        
        answer = MsgBox("提示：没有输入科室!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入科室
            
            Combo1.Enabled = True
            
            Exit Sub
            
        End If
        
    ElseIf Combo2.Text = "" Then                                                '年份为空
        
        answer = MsgBox("提示：没有输入年份!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入月份
            
            Combo2.Enabled = True
            
            Exit Sub
            
        End If
        
    ElseIf Combo3.Text = "" Then                                                '月份为空
        
        answer = MsgBox("提示：没有输入月份!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入月份
            
            Combo3.Enabled = True
            
            Exit Sub
            
        End If
        
    End If
    
    If Dir(App.Path & "\statistics\" & Combo2.Text & "-" & Combo3.Text, vbDirectory) = "" Then
        
        answer = MsgBox("提示：输入年月有错!", 48, "信息提示")                  '关于该年月的科室统计资料为空
        
        If answer = 1 Then                                                      '重新输入年份及月份
            
            Exit Sub
            
        End If
        
    End If
    
    If Dir(App.Path & "\statistics\" & Combo2.Text & "-" & Combo3.Text & "\" & Combo1.Text & ".txt") <> "" Then
        
        Form2.RichTextBox1.LoadFile App.Path & "\statistics\" & Combo2.Text & "-" & Combo3.Text & "\" & Combo1.Text & ".txt" '调出该年月科室统计资料
        
        Form2.Enabled = True                                                    '工作界面启用
        
        file1 = Combo2.Text
        
        file2 = Combo3.Text
        
        Form2.Command13.Enabled = True                                          '打印按钮可用
        
    Else
        
        answer = MsgBox("提示：该时段没有对应科室信息!", 48, "信息提示")        '关于该年月的科室统计资料为空
        
        If answer = 1 Then                                                      '重新输入年份及月份
            
            Exit Sub
            
        End If
        
    End If
    
    Unload Form13                                                               '卸载本窗体
    
End Sub

Private Sub Command2_Click()                                                    '取消
    
    Form2.Enabled = True                                                        '工作界面启用
    
    Unload Form13                                                               '卸载本窗体
    
End Sub
