VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form15 
   Caption         =   "测量完成"
   ClientHeight    =   2265
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4305
   LinkTopic       =   "Form15"
   ScaleHeight     =   2265
   ScaleWidth      =   4305
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
      Height          =   375
      Left            =   1680
      TabIndex        =   2
      Top             =   1560
      Width           =   750
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   375
      Left            =   960
      OleObjectBlob   =   "UnexceptionWarning.frx":0000
      TabIndex        =   1
      Top             =   960
      Width           =   2535
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   375
      Left            =   600
      OleObjectBlob   =   "UnexceptionWarning.frx":007A
      TabIndex        =   0
      Top             =   480
      Width           =   1215
   End
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   240
      OleObjectBlob   =   "UnexceptionWarning.frx":00E2
      Top             =   1200
   End
End
Attribute VB_Name = "Form15"
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

Private Sub Command1_Click()
    
    Form2.WindowsMediaPlayer1.Close
    
    Form2.Enabled = True                                                        '卸载本界面时工作界面可用
    
    Unload Form15                                                               '卸载本界面
    
End Sub

Private Sub Form_Load()
    
    Form2.Enabled = Falseq
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '窗体居中
    
    Skin1.LoadSkin App.Path + "\Skins\3.skn"
    
    Skin1.ApplySkin Me.hWnd
    
    Dim lStyle As Long                                                          ''''''''''''''''''''''''''''''消除界面上的X按钮

    lStyle = GetWindowLong(hWnd, GWL_STYLE)
    lStyle = lStyle And Not WS_SYSMENU
    SetWindowLong Me.hWnd, GWL_STYLE, lStyle
    SetWindowPos Me.hWnd, 0, 0, 0, 0, 0, SWP_NOZORDER Or SWP_DRAWFRAME Or SWP_NOMOVE Or SWP_NOSIZE
    
    If (Form2.Check1.Value = 1) Then
        
        Form2.WindowsMediaPlayer1.URL = warning
        
    End If
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    
    Form2.WindowsMediaPlayer1.Close
    
    Form2.Enabled = True                                                        '卸载本界面时工作界面可用
    
    Unload Form15                                                               '卸载本界面
    
End Sub

