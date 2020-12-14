VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000002&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "欢迎界面"
   ClientHeight    =   6345
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9915
   Icon            =   "welcomefrm.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6345
   ScaleWidth      =   9915
   StartUpPosition =   2  '屏幕中心
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H8000000D&
      Height          =   6315
      Left            =   -240
      Picture         =   "welcomefrm.frx":6852
      ScaleHeight     =   6255
      ScaleMode       =   0  'User
      ScaleWidth      =   9915
      TabIndex        =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   9975
      Begin VB.Timer Timer1 
         Interval        =   50
         Left            =   9120
         Top             =   5760
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Declare Function GetSystemMenu _
                Lib "user32" (ByVal hWnd As Long, _
                              ByVal bRevert As Long) As Long

Private Declare Function RemoveMenu _
                Lib "user32" (ByVal hMenu As Long, _
                              ByVal nPosition As Long, _
                              ByVal wFlags As Long) As Long

Private Const MF_BYPOSITION = &H400&

Dim Proba, Proba2 As Integer

Dim Boja2 As String

Private Sub Form_Load()
    
    Dim lHndSysMenu As Long
    
    lHndSysMenu = GetSystemMenu(Me.hWnd, 0)
    
    Call RemoveMenu(lHndSysMenu, 6, MF_BYPOSITION)                              'Remove Close button
    
    Call RemoveMenu(lHndSysMenu, 5, MF_BYPOSITION)                              'Remove Seperator bar
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '窗体居中
    
    adjust1_flag = 0                                                            '校准1复位
    
    DataReceiver_flag = 0                                                       '判断是否接收到下位机数据的标志位
    
    Interface_flag = 0                                                          '界面提示标志位
    
    time_count = 0                                                              ''
    
    'Form2.SkinLabel13.Caption = ""                                              '工作状态初始化,清空
    
    Form2.SkinLabel57.Caption = ""                                              '上传的校准1数据清空
    
End Sub

Private Function Zrak(slika As PictureBox, _
                      StartX As Integer, _
                      StartY As Integer, _
                      Levo As Integer, _
                      Desno As Integer, _
                      Boja As String)
    
    Me.ScaleMode = vbPixels
    
    With slika
        
        .ScaleMode = vbPixels
        
        .AutoRedraw = True
        
    End With
    
    For Proba2 = 0 To slika.ScaleWidth
        
        DoEvents
        
        For Proba = 0 To slika.ScaleHeight
            
            Boja2 = slika.Point(Proba2, Proba)
            
            Line (StartX, StartY)-(Levo + Proba2, Desno + Proba), Boja2
            
        Next
        
        Line (StartX, StartY)-(Levo + Proba2, Desno + slika.ScaleHeight), Boja
        
    Next
    
    For Proba2 = 0 To slika.ScaleHeight
        
        Line (StartX, StartY)-(Levo + slika.ScaleWidth, Desno + Proba2), Boja
        
    Next
    
End Function

Private Sub Timer1_Timer()
    
    Dim i, j As Integer
    
    Zrak Picture1, 666, 438, 0, 0, Me.BackColor
    
    For i = 0 To 1000
        
        For j = 0 To 100
            
            DoEvents
            
        Next
        
    Next
    
    Form2.Show
    
    Timer1.Enabled = False
    
    Unload Me
    
End Sub
