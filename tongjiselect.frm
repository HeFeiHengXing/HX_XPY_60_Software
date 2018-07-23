VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form12 
   Caption         =   "统计方式选择界面"
   ClientHeight    =   2790
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3150
   LinkTopic       =   "Form12"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2790
   ScaleWidth      =   3150
   StartUpPosition =   3  '窗口缺省
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   2160
      OleObjectBlob   =   "tongjiselect.frx":0000
      Top             =   270
   End
   Begin VB.CommandButton Command3 
      Caption         =   "按培养瓶种类统计按钮"
      Height          =   495
      Left            =   480
      TabIndex        =   3
      Top             =   2160
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
      Caption         =   "按科室统计按钮"
      Height          =   495
      Left            =   480
      TabIndex        =   2
      Top             =   1440
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "按时间统计按钮"
      Height          =   495
      Left            =   480
      TabIndex        =   1
      Top             =   720
      Width           =   2175
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "tongjiselect.frx":0234
      TabIndex        =   0
      Top             =   240
      Width           =   1935
   End
End
Attribute VB_Name = "Form12"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '窗体居中
    
    Skin1.LoadSkin App.Path + "\Skins\3.skn"
    
    Skin1.ApplySkin Me.hWnd                                                     ''
    
End Sub

Private Sub Command1_Click()                                                    '按时间统计按钮
    
    Unload Form12                                                               '卸载本窗体
    
    Form8.Show                                                                  '显示按时间统计界面
    
End Sub

Private Sub Command2_Click()                                                    '按科室统计
    
    Unload Form12                                                               '卸载本窗体
    
    Form13.Show                                                                 '显示按科室统计界面
    
End Sub

Private Sub Command3_Click()                                                    '按培养瓶种类统计
    
    Unload Form12                                                               '卸载本窗体
    
    Form14.Show                                                                 '显示按培养瓶统计界面
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    
    Form2.Enabled = True                                                        '工作界面可用
    
    Unload Form12                                                               '卸载本窗体
    
End Sub
