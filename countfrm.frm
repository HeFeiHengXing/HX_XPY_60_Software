VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form8 
   Caption         =   "按时间统计界面"
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
   StartUpPosition =   3  '窗口缺省
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   675
      OleObjectBlob   =   "countfrm.frx":0000
      Top             =   180
   End
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      Height          =   375
      Left            =   1320
      TabIndex        =   6
      Top             =   1920
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
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
    
End Sub

Private Sub Command1_Click()                                                    '查找输入年月统计资料
    
    If Combo1.Text = "" Then                                                    '年份为空
        
        answer = MsgBox("提示：没有输入年份!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入年份
            
            Combo1.Enabled = True
            
            Exit Sub
            
        End If
        
    ElseIf Combo2.Text = "" Then                                                '月份为空
        
        answer = MsgBox("提示：没有输入月份!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入月份
            
            Combo2.Enabled = True
            
            Exit Sub
            
        End If
        
    End If
    
    If Dir(App.Path & "\statistics\" & Combo1.Text & "-" & Combo2.Text, vbDirectory) = "" Then
        
        answer = MsgBox("提示：输入年月有错!", 48, "信息提示")                  '关于该年月的统计资料为空
        
        If answer = 1 Then                                                      '重新输入年份及月份
            
            Exit Sub
            
        End If
        
    End If
    
    Form2.RichTextBox1.LoadFile App.Path & "\statistics\" & Combo1.Text & "-" & Combo2.Text & "\" & "统计情况" & ".txt" '调出该年月统计资料
    
    Form2.Enabled = True                                                        '工作界面启用
    
    file1 = Combo1.Text
    
    file2 = Combo2.Text
    
    Form2.Command13.Enabled = True                                              '打印按钮可用
    
    Unload Form8                                                                '卸载本窗体
    
End Sub

Private Sub Command2_Click()                                                    '取消按钮
    
    Form2.Enabled = True                                                        '工作界面启用
    
    Unload Form8                                                                '卸载本窗体
    
End Sub
