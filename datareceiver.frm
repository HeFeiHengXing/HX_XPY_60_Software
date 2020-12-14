VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form11 
   Caption         =   "数据接收提示"
   ClientHeight    =   1305
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   2970
   LinkTopic       =   "Form11"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1305
   ScaleWidth      =   2970
   StartUpPosition =   3  '窗口缺省
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   1440
      OleObjectBlob   =   "datareceiver.frx":0000
      Top             =   225
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   495
      Left            =   360
      OleObjectBlob   =   "datareceiver.frx":0234
      TabIndex        =   1
      Top             =   600
      Width           =   2415
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   240
      OleObjectBlob   =   "datareceiver.frx":02C4
      TabIndex        =   0
      Top             =   240
      Width           =   615
   End
End
Attribute VB_Name = "Form11"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '窗体居中
    
    Skin1.LoadSkin App.Path + "\Skins\2.skn"
    
    Skin1.ApplySkin Me.hWnd                                                     ''
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    
    Form2.Enabled = True                                                        '卸载本界面时工作界面可用
    
    Unload Form11                                                               '卸载本界面
    
    Interface_flag = 0
    
    time_count = 0
    
End Sub

