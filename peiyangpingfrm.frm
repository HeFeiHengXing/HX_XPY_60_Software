VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form14 
   Caption         =   "按培养瓶种类统计界面"
   ClientHeight    =   2760
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3705
   LinkTopic       =   "Form14"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2760
   ScaleWidth      =   3705
   StartUpPosition =   3  '窗口缺省
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   360
      OleObjectBlob   =   "peiyangpingfrm.frx":0000
      Top             =   180
   End
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      Height          =   375
      Left            =   2160
      TabIndex        =   8
      Top             =   2160
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
      Height          =   375
      Left            =   720
      TabIndex        =   7
      Top             =   2160
      Width           =   975
   End
   Begin VB.ComboBox Combo3 
      Height          =   300
      ItemData        =   "peiyangpingfrm.frx":0234
      Left            =   1200
      List            =   "peiyangpingfrm.frx":025C
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   1680
      Width           =   2235
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
      Height          =   255
      Left            =   840
      OleObjectBlob   =   "peiyangpingfrm.frx":0290
      TabIndex        =   5
      Top             =   1680
      Width           =   375
   End
   Begin VB.ComboBox Combo2 
      Height          =   300
      ItemData        =   "peiyangpingfrm.frx":02F2
      Left            =   1200
      List            =   "peiyangpingfrm.frx":031A
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   1200
      Width           =   2235
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
      Height          =   255
      Left            =   840
      OleObjectBlob   =   "peiyangpingfrm.frx":0366
      TabIndex        =   3
      Top             =   1200
      Width           =   375
   End
   Begin VB.ComboBox Combo1 
      Height          =   300
      ItemData        =   "peiyangpingfrm.frx":03C8
      Left            =   1200
      List            =   "peiyangpingfrm.frx":03DE
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   720
      Width           =   2235
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "peiyangpingfrm.frx":0448
      TabIndex        =   1
      Top             =   720
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "peiyangpingfrm.frx":04B2
      TabIndex        =   0
      Top             =   240
      Width           =   3255
   End
End
Attribute VB_Name = "Form14"
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
    
    For nian = 2021 To 2050
    
        Combo2.AddItem (Format(nian, "0000"))
        
    Next
    
    Dim lStyle As Long                                                          ''''''''''''''''''''''''''''''消除界面上的X按钮

    lStyle = GetWindowLong(hWnd, GWL_STYLE)
    lStyle = lStyle And Not WS_SYSMENU
    SetWindowLong Me.hWnd, GWL_STYLE, lStyle
    SetWindowPos Me.hWnd, 0, 0, 0, 0, 0, SWP_NOZORDER Or SWP_DRAWFRAME Or SWP_NOMOVE Or SWP_NOSIZE
    
End Sub

Private Sub Command1_Click()                                                    '确定按钮
    
    If Combo1.Text = "" Then                                                    '培养瓶种类为空
        
        answer = MsgBox("提示：没有输入培养瓶种类!", 48, "信息提示")
        
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
        
        answer = MsgBox("提示：输入年月有错!", 48, "信息提示")                  '关于该年月的培养瓶种类统计资料为空
        
        If answer = 1 Then                                                      '重新输入年份及月份
            
            Exit Sub
            
        End If
        
    End If
    
    Form2.RichTextBox1.LoadFile App.Path & "\statistics\" & Combo2.Text & "-" & Combo3.Text & "\" & Combo1.Text & ".txt" '调出该年月培养瓶种类统计资料
    
    Form2.Enabled = True                                                        '工作界面启用
    
    file1 = Combo2.Text
    
    file2 = Combo3.Text
    
    Form2.Command13.Enabled = True                                              '打印按钮可用
    
    Unload Form14                                                               '卸载本窗体
    
End Sub

Private Sub Command2_Click()                                                    '取消按钮
    
    Form2.Enabled = True                                                        '工作界面启用
    
    Unload Form14                                                               '卸载本窗体
    
End Sub

