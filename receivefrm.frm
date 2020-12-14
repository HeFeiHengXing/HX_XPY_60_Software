VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form9 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "接收数据提示"
   ClientHeight    =   1095
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   2685
   LinkTopic       =   "Form9"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1095
   ScaleWidth      =   2685
   StartUpPosition =   3  '窗口缺省
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   1035
      OleObjectBlob   =   "receivefrm.frx":0000
      Top             =   45
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "receivefrm.frx":0234
      TabIndex        =   1
      Top             =   600
      Width           =   2055
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "receivefrm.frx":02A8
      TabIndex        =   0
      Top             =   120
      Width           =   615
   End
End
Attribute VB_Name = "Form9"
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
    
    Dim lStyle As Long                                                          ''''''''''''''''''''''''''''''消除界面上的X按钮

    lStyle = GetWindowLong(hWnd, GWL_STYLE)
    lStyle = lStyle And Not WS_SYSMENU
    SetWindowLong Me.hWnd, GWL_STYLE, lStyle
    SetWindowPos Me.hWnd, 0, 0, 0, 0, 0, SWP_NOZORDER Or SWP_DRAWFRAME Or SWP_NOMOVE Or SWP_NOSIZE
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    
    Form2.Enabled = True                                                        '卸载本界面时工作界面可用
    
    Unload Form9                                                                '卸载本界面
    
End Sub
