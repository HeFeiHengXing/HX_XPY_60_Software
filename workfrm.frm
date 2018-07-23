VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form Form2 
   BackColor       =   &H8000000A&
   Caption         =   "血液细菌培养仪"
   ClientHeight    =   11025
   ClientLeft      =   1845
   ClientTop       =   555
   ClientWidth     =   15255
   Icon            =   "workfrm.frx":0000
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   ScaleHeight     =   11025
   ScaleWidth      =   15255
   StartUpPosition =   2  '屏幕中心
   Begin TabDlg.SSTab SSTab1 
      Height          =   11055
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   15255
      _ExtentX        =   26908
      _ExtentY        =   19500
      _Version        =   393216
      TabHeight       =   520
      TabCaption(0)   =   "工作界面"
      TabPicture(0)   =   "workfrm.frx":6852
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame3"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Frame4"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Frame17"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "Skin1"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "Frame5"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).ControlCount=   7
      TabCaption(1)   =   "系统设置"
      TabPicture(1)   =   "workfrm.frx":686E
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "WindowsMediaPlayer1"
      Tab(1).Control(1)=   "MSComm1"
      Tab(1).Control(2)=   "Frame6"
      Tab(1).Control(3)=   "Frame8"
      Tab(1).Control(4)=   "Frame9"
      Tab(1).Control(5)=   "Text3"
      Tab(1).Control(6)=   "Text4"
      Tab(1).Control(7)=   "Text5"
      Tab(1).Control(8)=   "Text6"
      Tab(1).Control(9)=   "Text9"
      Tab(1).Control(10)=   "Text10"
      Tab(1).Control(11)=   "Frame15"
      Tab(1).Control(12)=   "Frame16"
      Tab(1).Control(13)=   "Timer1"
      Tab(1).Control(14)=   "Timer2"
      Tab(1).Control(15)=   "Frame19"
      Tab(1).Control(16)=   "Frame20"
      Tab(1).Control(17)=   "Frame18"
      Tab(1).Control(18)=   "Frame21"
      Tab(1).ControlCount=   19
      TabCaption(2)   =   "查询统计"
      TabPicture(2)   =   "workfrm.frx":688A
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame10"
      Tab(2).Control(1)=   "Frame11"
      Tab(2).Control(2)=   "CommonDialog1"
      Tab(2).Control(3)=   "SystemGraph1"
      Tab(2).Control(4)=   "Frame13"
      Tab(2).Control(5)=   "Frame14"
      Tab(2).Control(6)=   "Frame12"
      Tab(2).ControlCount=   7
      Begin VB.Frame Frame21 
         Caption         =   "警报设置"
         Height          =   1335
         Left            =   -72720
         TabIndex        =   951
         Top             =   4080
         Width           =   3375
         Begin VB.CommandButton Command18 
            Caption         =   "确定"
            Height          =   375
            Left            =   2400
            TabIndex        =   961
            Top             =   720
            Width           =   735
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel76 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":68A6
            TabIndex        =   960
            Top             =   840
            Width           =   1335
         End
         Begin VB.CheckBox Check1 
            Caption         =   "Check1"
            Height          =   255
            Left            =   2640
            TabIndex        =   959
            Top             =   360
            Value           =   1  'Checked
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel75 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":6912
            TabIndex        =   958
            Top             =   360
            Width           =   1335
         End
      End
      Begin VB.Frame Frame18 
         Caption         =   "设置温度"
         Height          =   1335
         Left            =   -72720
         TabIndex        =   950
         Top             =   2520
         Width           =   3375
         Begin VB.CommandButton Command5 
            Caption         =   "↑"
            Height          =   195
            Left            =   1800
            TabIndex        =   955
            Top             =   720
            Width           =   255
         End
         Begin VB.CommandButton Command6 
            Caption         =   "↓"
            Height          =   195
            Left            =   1800
            TabIndex        =   954
            Top             =   960
            Width           =   255
         End
         Begin VB.CommandButton Command7 
            Caption         =   "确定"
            Height          =   375
            Left            =   2400
            TabIndex        =   952
            Top             =   720
            Width           =   750
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel21 
            Height          =   255
            Left            =   1440
            OleObjectBlob   =   "workfrm.frx":697E
            TabIndex        =   953
            Top             =   840
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel20 
            Height          =   255
            Left            =   840
            OleObjectBlob   =   "workfrm.frx":69E0
            TabIndex        =   956
            Top             =   840
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel19 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":6A3E
            TabIndex        =   957
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Frame Frame12 
         Caption         =   "删除文件"
         Height          =   1095
         Left            =   -73200
         TabIndex        =   946
         Top             =   720
         Width           =   4695
         Begin VB.TextBox Text12 
            Height          =   285
            Left            =   720
            TabIndex        =   948
            Top             =   600
            Width           =   2415
         End
         Begin VB.CommandButton Command14 
            Caption         =   "确定"
            Height          =   375
            Left            =   3600
            TabIndex        =   947
            Top             =   600
            Width           =   750
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel41 
            Height          =   375
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":6AA8
            TabIndex        =   949
            Top             =   240
            Width           =   2175
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   "瓶位状态"
         Height          =   1935
         Left            =   480
         TabIndex        =   937
         Top             =   8520
         Width           =   6975
         Begin VB.PictureBox Picture4 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   3
            Left            =   4320
            Picture         =   "workfrm.frx":6B1E
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   972
            Top             =   960
            Width           =   525
         End
         Begin VB.PictureBox Picture4 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   2
            Left            =   4320
            Picture         =   "workfrm.frx":6F37
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   971
            Top             =   360
            Width           =   525
         End
         Begin VB.PictureBox Picture4 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   1
            Left            =   1560
            Picture         =   "workfrm.frx":7343
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   970
            Top             =   960
            Width           =   525
         End
         Begin VB.PictureBox Picture4 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   0
            Left            =   1560
            Picture         =   "workfrm.frx":773B
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   969
            Top             =   360
            Width           =   525
         End
         Begin VB.CommandButton Command21 
            Caption         =   "取瓶"
            Height          =   375
            Left            =   5760
            TabIndex        =   968
            Top             =   1080
            Width           =   750
         End
         Begin VB.CommandButton Command19 
            Caption         =   "取瓶"
            Height          =   375
            Left            =   5760
            TabIndex        =   967
            Top             =   480
            Width           =   750
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel74 
            Height          =   255
            Left            =   2280
            OleObjectBlob   =   "workfrm.frx":7B34
            TabIndex        =   945
            Top             =   1200
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel73 
            Height          =   255
            Left            =   5040
            OleObjectBlob   =   "workfrm.frx":7B92
            TabIndex        =   944
            Top             =   1200
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel72 
            Height          =   255
            Left            =   5040
            OleObjectBlob   =   "workfrm.frx":7BF0
            TabIndex        =   943
            Top             =   600
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel71 
            Height          =   255
            Left            =   2280
            OleObjectBlob   =   "workfrm.frx":7C4E
            TabIndex        =   942
            Top             =   600
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel70 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":7CAC
            TabIndex        =   941
            Top             =   1200
            Width           =   1215
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel63 
            Height          =   270
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":7D16
            TabIndex        =   940
            Top             =   600
            Width           =   1335
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel62 
            Height          =   255
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":7D7E
            TabIndex        =   939
            Top             =   1200
            Width           =   1335
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel13 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":7DE6
            TabIndex        =   938
            Top             =   600
            Width           =   1095
         End
      End
      Begin ACTIVESKINLibCtl.Skin Skin1 
         Left            =   450
         OleObjectBlob   =   "workfrm.frx":7E50
         Top             =   225
      End
      Begin VB.Frame Frame20 
         Caption         =   "设置培养时间"
         Height          =   1815
         Left            =   -72720
         TabIndex        =   929
         Top             =   5640
         Width           =   3375
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel77 
            Height          =   255
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":8084
            TabIndex        =   963
            Top             =   840
            Width           =   375
         End
         Begin VB.CommandButton Command20 
            Caption         =   "确定"
            Height          =   375
            Left            =   2400
            TabIndex        =   932
            Top             =   1200
            Width           =   750
         End
         Begin VB.TextBox Text14 
            Height          =   285
            Left            =   2160
            TabIndex        =   931
            Top             =   360
            Width           =   735
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel67 
            Height          =   375
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":80E4
            TabIndex        =   930
            Top             =   360
            Width           =   1815
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel68 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8158
            TabIndex        =   933
            Top             =   840
            Width           =   1695
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel69 
            Height          =   255
            Left            =   1920
            OleObjectBlob   =   "workfrm.frx":81C8
            TabIndex        =   934
            Top             =   840
            Width           =   615
         End
      End
      Begin VB.Frame Frame19 
         Caption         =   "阈值设置"
         Height          =   2415
         Left            =   -66000
         TabIndex        =   919
         Top             =   7680
         Width           =   3615
         Begin VB.TextBox Text13 
            Height          =   285
            Left            =   1920
            TabIndex        =   927
            Top             =   1080
            Width           =   615
         End
         Begin VB.CommandButton Command16 
            Caption         =   "确定"
            Height          =   375
            Left            =   2400
            TabIndex        =   925
            Top             =   1800
            Width           =   750
         End
         Begin VB.TextBox Text11 
            Height          =   285
            Left            =   1920
            TabIndex        =   921
            Top             =   360
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel53 
            Height          =   255
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":8226
            TabIndex        =   920
            Top             =   360
            Width           =   1335
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel55 
            Height          =   255
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":8292
            TabIndex        =   922
            Top             =   720
            Width           =   1335
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel54 
            Height          =   255
            Left            =   1920
            OleObjectBlob   =   "workfrm.frx":82FE
            TabIndex        =   923
            Top             =   720
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel64 
            Height          =   255
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":835C
            TabIndex        =   924
            Top             =   1080
            Width           =   1335
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel65 
            Height          =   255
            Left            =   1920
            OleObjectBlob   =   "workfrm.frx":83C8
            TabIndex        =   926
            Top             =   1440
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel66 
            Height          =   255
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":8426
            TabIndex        =   928
            Top             =   1440
            Width           =   1335
         End
      End
      Begin VB.Timer Timer2 
         Enabled         =   0   'False
         Interval        =   60000
         Left            =   -60480
         Top             =   1920
      End
      Begin VB.Timer Timer1 
         Interval        =   3000
         Left            =   -62160
         Top             =   1560
      End
      Begin VB.Frame Frame17 
         Caption         =   "工作状态"
         Height          =   1935
         Left            =   11760
         TabIndex        =   916
         Top             =   8520
         Width           =   3015
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel61 
            Height          =   255
            Left            =   480
            OleObjectBlob   =   "workfrm.frx":8492
            TabIndex        =   918
            Top             =   600
            Width           =   2175
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel18 
            Height          =   255
            Left            =   2280
            OleObjectBlob   =   "workfrm.frx":84F0
            TabIndex        =   964
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel17 
            Height          =   255
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":8552
            TabIndex        =   965
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel16 
            Height          =   255
            Left            =   480
            OleObjectBlob   =   "workfrm.frx":85B0
            TabIndex        =   966
            Top             =   1200
            Width           =   1095
         End
      End
      Begin VB.Frame Frame16 
         Caption         =   "恢复出厂设置"
         Height          =   1815
         Left            =   -66000
         TabIndex        =   908
         Top             =   5520
         Width           =   3615
         Begin VB.CommandButton Command17 
            Caption         =   "确定"
            Height          =   375
            Left            =   2400
            TabIndex        =   915
            Top             =   1200
            Width           =   750
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel60 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":861A
            TabIndex        =   914
            Top             =   600
            Width           =   2535
         End
      End
      Begin VB.Frame Frame15 
         Caption         =   "校准参数设置"
         Height          =   2415
         Left            =   -72720
         TabIndex        =   898
         Top             =   7680
         Width           =   3375
         Begin VB.CommandButton Command15 
            Caption         =   "确定"
            Height          =   375
            Left            =   2280
            TabIndex        =   907
            Top             =   1800
            Width           =   750
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel52 
            Height          =   255
            Left            =   2280
            OleObjectBlob   =   "workfrm.frx":8696
            TabIndex        =   906
            Top             =   1440
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel51 
            Height          =   255
            Left            =   480
            OleObjectBlob   =   "workfrm.frx":86F4
            TabIndex        =   905
            Top             =   1440
            Width           =   1815
         End
         Begin VB.TextBox Text8 
            Height          =   285
            Left            =   2280
            TabIndex        =   904
            Top             =   1080
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel50 
            Height          =   255
            Left            =   480
            OleObjectBlob   =   "workfrm.frx":8766
            TabIndex        =   903
            Top             =   1080
            Width           =   1815
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel49 
            Height          =   255
            Left            =   480
            OleObjectBlob   =   "workfrm.frx":87D8
            TabIndex        =   902
            Top             =   720
            Width           =   1815
         End
         Begin VB.TextBox Text7 
            Height          =   285
            Left            =   2280
            TabIndex        =   901
            Top             =   360
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel48 
            Height          =   255
            Left            =   2280
            OleObjectBlob   =   "workfrm.frx":884A
            TabIndex        =   900
            Top             =   720
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel47 
            Height          =   255
            Left            =   480
            OleObjectBlob   =   "workfrm.frx":88A8
            TabIndex        =   899
            Top             =   360
            Width           =   1815
         End
      End
      Begin VB.TextBox Text10 
         Height          =   375
         Left            =   -61440
         TabIndex        =   897
         Top             =   6480
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.TextBox Text9 
         Height          =   285
         Left            =   -61440
         TabIndex        =   896
         Top             =   6000
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.Frame Frame14 
         Caption         =   "统计资料"
         Height          =   4575
         Left            =   -66360
         TabIndex        =   889
         Top             =   2160
         Width           =   4335
         Begin VB.CommandButton Command13 
            Caption         =   "打印"
            Height          =   375
            Left            =   3240
            TabIndex        =   891
            Top             =   3960
            Width           =   750
         End
         Begin RichTextLib.RichTextBox RichTextBox1 
            Height          =   3375
            Left            =   360
            TabIndex        =   890
            Top             =   360
            Width           =   3615
            _ExtentX        =   6376
            _ExtentY        =   5953
            _Version        =   393217
            TextRTF         =   $"workfrm.frx":891A
         End
      End
      Begin VB.Frame Frame13 
         Caption         =   "统计提示"
         Height          =   1215
         Left            =   -66360
         TabIndex        =   766
         Top             =   720
         Width           =   4335
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel44 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":89B7
            TabIndex        =   888
            Top             =   360
            Width           =   2055
         End
         Begin VB.CommandButton Command12 
            Caption         =   "调出统计资料"
            Height          =   375
            Left            =   2280
            TabIndex        =   767
            Top             =   720
            Width           =   1695
         End
      End
      Begin 血液培养仪60瓶.SystemGraph SystemGraph1 
         Height          =   2775
         Left            =   -72000
         TabIndex        =   765
         Top             =   6960
         Width           =   9015
         _ExtentX        =   15901
         _ExtentY        =   4895
      End
      Begin VB.TextBox Text6 
         Height          =   285
         Left            =   -61320
         TabIndex        =   764
         Top             =   4560
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.TextBox Text5 
         Height          =   375
         Left            =   -61320
         TabIndex        =   763
         Top             =   3960
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   -61440
         MultiLine       =   -1  'True
         TabIndex        =   762
         Top             =   3480
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   -61440
         MultiLine       =   -1  'True
         TabIndex        =   761
         Top             =   2880
         Visible         =   0   'False
         Width           =   735
      End
      Begin MSComDlg.CommonDialog CommonDialog1 
         Left            =   -70920
         Top             =   2760
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.Frame Frame11 
         Caption         =   "病人信息"
         Height          =   3975
         Left            =   -73200
         TabIndex        =   744
         Top             =   2880
         Width           =   4695
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel82 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8A2B
            TabIndex        =   1036
            Top             =   240
            Width           =   1935
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel81 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8A89
            TabIndex        =   1035
            Top             =   240
            Width           =   1095
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel80 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8AFD
            TabIndex        =   1034
            Top             =   840
            Width           =   2535
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel79 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8B5B
            TabIndex        =   1033
            Top             =   840
            Width           =   975
         End
         Begin VB.CommandButton Command11 
            Caption         =   "生成文件打印"
            Height          =   495
            Left            =   3120
            TabIndex        =   895
            Top             =   3360
            Width           =   1335
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel46 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8BD7
            TabIndex        =   894
            Top             =   3600
            Width           =   1365
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel45 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8C35
            TabIndex        =   893
            Top             =   3600
            Width           =   975
         End
         Begin RichTextLib.RichTextBox RichTextBox2 
            Height          =   2895
            Left            =   2640
            TabIndex        =   892
            Top             =   240
            Visible         =   0   'False
            Width           =   1815
            _ExtentX        =   3201
            _ExtentY        =   5106
            _Version        =   393217
            TextRTF         =   $"workfrm.frx":8C9D
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel40 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8D3A
            TabIndex        =   760
            Top             =   3240
            Width           =   2295
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel39 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8D98
            TabIndex        =   759
            Top             =   3240
            Width           =   975
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel38 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8E00
            TabIndex        =   758
            Top             =   2880
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel37 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8E5E
            TabIndex        =   757
            Top             =   2880
            Width           =   975
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel36 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8EC6
            TabIndex        =   756
            Top             =   2520
            Width           =   2415
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel35 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8F24
            TabIndex        =   755
            Top             =   2520
            Width           =   975
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel34 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8F92
            TabIndex        =   754
            Top             =   2160
            Width           =   1815
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel33 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8FF0
            TabIndex        =   753
            Top             =   2160
            Width           =   975
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel32 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":9064
            TabIndex        =   752
            Top             =   1800
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel31 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":90C2
            TabIndex        =   751
            Top             =   1800
            Width           =   1095
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel30 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":9136
            TabIndex        =   750
            Top             =   1440
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel29 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":9194
            TabIndex        =   749
            Top             =   1440
            Width           =   975
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel28 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":9208
            TabIndex        =   748
            Top             =   1080
            Width           =   2055
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel27 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":9266
            TabIndex        =   747
            Top             =   1080
            Width           =   975
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel26 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":92DA
            TabIndex        =   746
            Top             =   525
            Width           =   1935
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel25 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":9338
            TabIndex        =   745
            Top             =   525
            Width           =   975
         End
      End
      Begin VB.Frame Frame10 
         Caption         =   "查询提示"
         Height          =   855
         Left            =   -73200
         TabIndex        =   741
         Top             =   1920
         Width           =   4695
         Begin VB.CommandButton Command10 
            Caption         =   "调出历史数据"
            Height          =   375
            Left            =   2760
            TabIndex        =   743
            Top             =   240
            Width           =   1815
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel24 
            Height          =   375
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":93A6
            TabIndex        =   742
            Top             =   360
            Width           =   2175
         End
      End
      Begin VB.Frame Frame9 
         Caption         =   "校准2"
         Height          =   1935
         Left            =   -66000
         TabIndex        =   737
         Top             =   3120
         Width           =   3615
         Begin VB.CommandButton Command23 
            Caption         =   "校准数据"
            Height          =   375
            Left            =   600
            TabIndex        =   1038
            Top             =   1320
            Width           =   1050
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel59 
            Height          =   255
            Left            =   2400
            OleObjectBlob   =   "workfrm.frx":941C
            TabIndex        =   912
            Top             =   960
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel58 
            Height          =   255
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":947A
            TabIndex        =   911
            Top             =   960
            Width           =   1695
         End
         Begin VB.CommandButton Command9 
            Caption         =   "确定"
            Height          =   375
            Left            =   2400
            TabIndex        =   740
            Top             =   1320
            Width           =   750
         End
         Begin VB.TextBox Text2 
            Height          =   285
            Left            =   2400
            TabIndex        =   739
            Top             =   480
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel23 
            Height          =   375
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":94EA
            TabIndex        =   738
            Top             =   480
            Width           =   1695
         End
      End
      Begin VB.Frame Frame8 
         Caption         =   "校准1"
         Height          =   1935
         Left            =   -66000
         TabIndex        =   733
         Top             =   720
         Width           =   3615
         Begin VB.CommandButton Command22 
            Caption         =   "校准数据"
            Height          =   375
            Left            =   600
            TabIndex        =   1037
            Top             =   1320
            Width           =   1050
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel57 
            Height          =   255
            Left            =   2400
            OleObjectBlob   =   "workfrm.frx":955A
            TabIndex        =   910
            Top             =   960
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel56 
            Height          =   255
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":95B8
            TabIndex        =   909
            Top             =   960
            Width           =   1695
         End
         Begin VB.CommandButton Command8 
            Caption         =   "确定"
            Height          =   375
            Left            =   2400
            TabIndex        =   736
            Top             =   1320
            Width           =   750
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Left            =   2400
            TabIndex        =   735
            Top             =   480
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel22 
            Height          =   375
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":9628
            TabIndex        =   734
            Top             =   480
            Width           =   1695
         End
      End
      Begin VB.Frame Frame6 
         Caption         =   "调试/运行设置"
         Height          =   1695
         Left            =   -72720
         TabIndex        =   726
         Top             =   720
         Width           =   3375
         Begin VB.PictureBox Picture3 
            AutoSize        =   -1  'True
            Height          =   525
            Left            =   2520
            Picture         =   "workfrm.frx":9698
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   732
            Top             =   960
            Width           =   525
         End
         Begin VB.CommandButton Command4 
            Caption         =   "启动"
            Height          =   375
            Left            =   1440
            TabIndex        =   731
            Top             =   1080
            Width           =   750
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel15 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":9A90
            TabIndex        =   730
            Top             =   1200
            Width           =   975
         End
         Begin VB.PictureBox Picture2 
            AutoSize        =   -1  'True
            Height          =   525
            Left            =   2520
            Picture         =   "workfrm.frx":9AF8
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   729
            Top             =   360
            Width           =   525
         End
         Begin VB.CommandButton Command3 
            Caption         =   "调试"
            Height          =   375
            Left            =   1440
            TabIndex        =   728
            Top             =   480
            Width           =   750
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel14 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":9EF0
            TabIndex        =   727
            Top             =   600
            Width           =   975
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "在检查询"
         Height          =   1935
         Left            =   7920
         TabIndex        =   724
         Top             =   8520
         Width           =   3375
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel12 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":9F58
            TabIndex        =   936
            Top             =   360
            Width           =   1695
         End
         Begin VB.TextBox Text15 
            Height          =   390
            Left            =   360
            TabIndex        =   935
            Top             =   720
            Width           =   2415
         End
         Begin VB.CommandButton Command2 
            Caption         =   "查询"
            Height          =   375
            Left            =   2280
            TabIndex        =   725
            Top             =   1320
            Width           =   750
         End
      End
      Begin VB.Frame Frame3 
         BackColor       =   &H00C0C000&
         Caption         =   "第三排"
         Height          =   2175
         Left            =   360
         TabIndex        =   263
         Top             =   6120
         Width           =   14535
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   59
            Left            =   13440
            Picture         =   "workfrm.frx":9FC2
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   303
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   59
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   58
            Left            =   12000
            Picture         =   "workfrm.frx":A3BA
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   302
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   58
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   57
            Left            =   10560
            Picture         =   "workfrm.frx":A7B2
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   301
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   57
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   56
            Left            =   9120
            Picture         =   "workfrm.frx":ABAA
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   300
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   56
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   55
            Left            =   7680
            Picture         =   "workfrm.frx":AFA2
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   299
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   55
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   54
            Left            =   6240
            Picture         =   "workfrm.frx":B39A
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   298
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   54
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   53
            Left            =   4800
            Picture         =   "workfrm.frx":B792
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   297
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   53
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   52
            Left            =   3360
            Picture         =   "workfrm.frx":BB8A
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   296
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   52
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   51
            Left            =   1920
            Picture         =   "workfrm.frx":BF82
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   295
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   51
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   50
            Left            =   480
            Picture         =   "workfrm.frx":C37A
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   294
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   50
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   49
            Left            =   13440
            Picture         =   "workfrm.frx":C772
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   293
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   49
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   48
            Left            =   12000
            Picture         =   "workfrm.frx":CB6A
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   292
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   48
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   47
            Left            =   10560
            Picture         =   "workfrm.frx":CF62
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   291
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   47
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   46
            Left            =   9120
            Picture         =   "workfrm.frx":D35A
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   290
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   46
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   45
            Left            =   7680
            Picture         =   "workfrm.frx":D752
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   289
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   45
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   44
            Left            =   6240
            Picture         =   "workfrm.frx":DB4A
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   288
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   44
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   43
            Left            =   4800
            Picture         =   "workfrm.frx":DF42
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   287
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   43
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   42
            Left            =   3360
            Picture         =   "workfrm.frx":E33A
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   286
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   42
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   41
            Left            =   1920
            Picture         =   "workfrm.frx":E732
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   285
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   41
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   40
            Left            =   480
            Picture         =   "workfrm.frx":EB2A
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   284
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   40
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   40
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":EF22
            TabIndex        =   264
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   41
            Left            =   1800
            OleObjectBlob   =   "workfrm.frx":EF86
            TabIndex        =   265
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   42
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":EFEA
            TabIndex        =   266
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   43
            Left            =   4680
            OleObjectBlob   =   "workfrm.frx":F04E
            TabIndex        =   267
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   44
            Left            =   6120
            OleObjectBlob   =   "workfrm.frx":F0B2
            TabIndex        =   268
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   45
            Left            =   7560
            OleObjectBlob   =   "workfrm.frx":F116
            TabIndex        =   269
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   46
            Left            =   9000
            OleObjectBlob   =   "workfrm.frx":F17A
            TabIndex        =   270
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   47
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":F1DE
            TabIndex        =   271
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   48
            Left            =   11880
            OleObjectBlob   =   "workfrm.frx":F242
            TabIndex        =   272
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   49
            Left            =   13320
            OleObjectBlob   =   "workfrm.frx":F2A6
            TabIndex        =   273
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   50
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":F30A
            TabIndex        =   274
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   51
            Left            =   1800
            OleObjectBlob   =   "workfrm.frx":F36E
            TabIndex        =   275
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   52
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":F3D2
            TabIndex        =   276
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   53
            Left            =   4680
            OleObjectBlob   =   "workfrm.frx":F436
            TabIndex        =   277
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   54
            Left            =   6120
            OleObjectBlob   =   "workfrm.frx":F49A
            TabIndex        =   278
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   55
            Left            =   7560
            OleObjectBlob   =   "workfrm.frx":F4FE
            TabIndex        =   279
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   56
            Left            =   9000
            OleObjectBlob   =   "workfrm.frx":F562
            TabIndex        =   280
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   57
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":F5C6
            TabIndex        =   281
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   58
            Left            =   11880
            OleObjectBlob   =   "workfrm.frx":F62A
            TabIndex        =   282
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   59
            Left            =   13320
            OleObjectBlob   =   "workfrm.frx":F68E
            TabIndex        =   283
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":F6F2
            TabIndex        =   324
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":F750
            TabIndex        =   325
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   42
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":F7AE
            TabIndex        =   326
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   43
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":F80C
            TabIndex        =   327
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":F86A
            TabIndex        =   328
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":F8C8
            TabIndex        =   329
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":F926
            TabIndex        =   330
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":F984
            TabIndex        =   331
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":F9E2
            TabIndex        =   332
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":FA40
            TabIndex        =   333
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":FA9E
            TabIndex        =   334
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   51
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":FAFC
            TabIndex        =   335
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":FB5A
            TabIndex        =   336
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":FBB8
            TabIndex        =   337
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   54
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":FC16
            TabIndex        =   338
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":FC74
            TabIndex        =   339
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":FCD2
            TabIndex        =   340
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":FD30
            TabIndex        =   341
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":FD8E
            TabIndex        =   342
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":FDEC
            TabIndex        =   343
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":FE4A
            TabIndex        =   364
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":FEA8
            TabIndex        =   365
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":FF06
            TabIndex        =   366
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":FF64
            TabIndex        =   367
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":FFC2
            TabIndex        =   368
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":10020
            TabIndex        =   369
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1007E
            TabIndex        =   370
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":100DC
            TabIndex        =   371
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1013A
            TabIndex        =   372
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":10198
            TabIndex        =   373
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":101F6
            TabIndex        =   374
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   51
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":10254
            TabIndex        =   375
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":102B2
            TabIndex        =   376
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":10310
            TabIndex        =   377
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1036E
            TabIndex        =   378
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":103CC
            TabIndex        =   379
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1042A
            TabIndex        =   380
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":10488
            TabIndex        =   381
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":104E6
            TabIndex        =   382
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   59
            Left            =   9120
            OleObjectBlob   =   "workfrm.frx":10544
            TabIndex        =   383
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":105A2
            TabIndex        =   404
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":10600
            TabIndex        =   405
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1065E
            TabIndex        =   406
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":106BC
            TabIndex        =   407
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1071A
            TabIndex        =   408
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   45
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":10778
            TabIndex        =   409
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":107D6
            TabIndex        =   410
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":10834
            TabIndex        =   411
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   48
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":10892
            TabIndex        =   412
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":108F0
            TabIndex        =   413
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1094E
            TabIndex        =   414
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":109AC
            TabIndex        =   415
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":10A0A
            TabIndex        =   416
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   53
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":10A68
            TabIndex        =   417
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   54
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":10AC6
            TabIndex        =   418
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   55
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":10B24
            TabIndex        =   419
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":10B82
            TabIndex        =   420
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":10BE0
            TabIndex        =   421
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":10C3E
            TabIndex        =   422
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":10C9C
            TabIndex        =   423
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   40
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":10CFA
            TabIndex        =   444
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":10D58
            TabIndex        =   445
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":10DB6
            TabIndex        =   446
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   43
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":10E14
            TabIndex        =   447
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   44
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":10E72
            TabIndex        =   448
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":10ED0
            TabIndex        =   449
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":10F2E
            TabIndex        =   450
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":10F8C
            TabIndex        =   451
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   48
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":10FEA
            TabIndex        =   452
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":11048
            TabIndex        =   453
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":110A6
            TabIndex        =   454
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   51
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":11104
            TabIndex        =   455
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":11162
            TabIndex        =   456
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   53
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":111C0
            TabIndex        =   457
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1121E
            TabIndex        =   458
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   55
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1127C
            TabIndex        =   459
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":112DA
            TabIndex        =   460
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":11338
            TabIndex        =   461
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":11396
            TabIndex        =   462
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   59
            Left            =   9360
            OleObjectBlob   =   "workfrm.frx":113F4
            TabIndex        =   463
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":11452
            TabIndex        =   484
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":114B0
            TabIndex        =   485
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1150E
            TabIndex        =   486
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1156C
            TabIndex        =   487
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":115CA
            TabIndex        =   488
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":11628
            TabIndex        =   489
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":11686
            TabIndex        =   490
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":116E4
            TabIndex        =   491
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":11742
            TabIndex        =   492
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":117A0
            TabIndex        =   493
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":117FE
            TabIndex        =   494
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1185C
            TabIndex        =   495
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":118BA
            TabIndex        =   496
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":11918
            TabIndex        =   497
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":11976
            TabIndex        =   498
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":119D4
            TabIndex        =   499
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":11A32
            TabIndex        =   500
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":11A90
            TabIndex        =   501
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   58
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":11AEE
            TabIndex        =   502
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":11B4C
            TabIndex        =   503
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":11BAA
            TabIndex        =   524
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":11C08
            TabIndex        =   525
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   42
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":11C66
            TabIndex        =   526
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   43
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":11CC4
            TabIndex        =   527
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":11D22
            TabIndex        =   528
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":11D80
            TabIndex        =   529
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":11DDE
            TabIndex        =   530
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":11E3C
            TabIndex        =   531
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":11E9A
            TabIndex        =   532
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":11EF8
            TabIndex        =   533
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":11F56
            TabIndex        =   534
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":11FB4
            TabIndex        =   535
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":12012
            TabIndex        =   536
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":12070
            TabIndex        =   537
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   54
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":120CE
            TabIndex        =   538
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1212C
            TabIndex        =   539
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1218A
            TabIndex        =   540
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   57
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":121E8
            TabIndex        =   541
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":12246
            TabIndex        =   542
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":122A4
            TabIndex        =   543
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   40
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":12302
            TabIndex        =   564
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":12360
            TabIndex        =   565
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":123BE
            TabIndex        =   566
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   43
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":1241C
            TabIndex        =   567
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1247A
            TabIndex        =   568
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":124D8
            TabIndex        =   569
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":12536
            TabIndex        =   570
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":12594
            TabIndex        =   571
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":125F2
            TabIndex        =   572
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":12650
            TabIndex        =   573
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":126AE
            TabIndex        =   574
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1270C
            TabIndex        =   575
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1276A
            TabIndex        =   576
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":127C8
            TabIndex        =   577
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   54
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":12826
            TabIndex        =   578
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   55
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":12884
            TabIndex        =   579
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   56
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":128E2
            TabIndex        =   580
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":12940
            TabIndex        =   581
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1299E
            TabIndex        =   582
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":129FC
            TabIndex        =   583
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   40
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":12A5A
            TabIndex        =   604
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":12AB8
            TabIndex        =   605
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":12B16
            TabIndex        =   606
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":12B74
            TabIndex        =   607
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   44
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":12BD2
            TabIndex        =   608
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":12C30
            TabIndex        =   609
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":12C8E
            TabIndex        =   610
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":12CEC
            TabIndex        =   611
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":12D4A
            TabIndex        =   612
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   49
            Left            =   9360
            OleObjectBlob   =   "workfrm.frx":12DA8
            TabIndex        =   613
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   50
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":12E06
            TabIndex        =   614
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   51
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":12E64
            TabIndex        =   615
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":12EC2
            TabIndex        =   616
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   53
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":12F20
            TabIndex        =   617
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   54
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":12F7E
            TabIndex        =   618
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":12FDC
            TabIndex        =   619
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1303A
            TabIndex        =   620
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":13098
            TabIndex        =   621
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":130F6
            TabIndex        =   622
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   59
            Left            =   9360
            OleObjectBlob   =   "workfrm.frx":13154
            TabIndex        =   623
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":131B2
            TabIndex        =   644
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":13210
            TabIndex        =   645
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1326E
            TabIndex        =   646
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":132CC
            TabIndex        =   647
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1332A
            TabIndex        =   648
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":13388
            TabIndex        =   649
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":133E6
            TabIndex        =   650
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":13444
            TabIndex        =   651
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":134A2
            TabIndex        =   652
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":13500
            TabIndex        =   653
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1355E
            TabIndex        =   654
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   51
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":135BC
            TabIndex        =   655
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   52
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":1361A
            TabIndex        =   656
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":13678
            TabIndex        =   657
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":136D6
            TabIndex        =   658
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   55
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":13734
            TabIndex        =   659
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":13792
            TabIndex        =   660
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":137F0
            TabIndex        =   661
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   58
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":1384E
            TabIndex        =   662
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":138AC
            TabIndex        =   663
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1390A
            TabIndex        =   704
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":13968
            TabIndex        =   705
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":139C6
            TabIndex        =   706
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":13A24
            TabIndex        =   707
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":13A82
            TabIndex        =   708
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":13AE0
            TabIndex        =   709
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   46
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":13B3E
            TabIndex        =   710
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":13B9C
            TabIndex        =   711
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":13BFA
            TabIndex        =   712
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":13C58
            TabIndex        =   713
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":13CB6
            TabIndex        =   714
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":13D14
            TabIndex        =   715
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   52
            Left            =   2400
            OleObjectBlob   =   "workfrm.frx":13D72
            TabIndex        =   716
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   53
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":13DD0
            TabIndex        =   717
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":13E2E
            TabIndex        =   718
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":13E8C
            TabIndex        =   719
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":13EEA
            TabIndex        =   720
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":13F48
            TabIndex        =   721
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":13FA6
            TabIndex        =   722
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":14004
            TabIndex        =   723
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":14062
            TabIndex        =   808
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":140C0
            TabIndex        =   809
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1411E
            TabIndex        =   810
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1417C
            TabIndex        =   811
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":141DA
            TabIndex        =   812
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":14238
            TabIndex        =   813
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":14296
            TabIndex        =   814
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":142F4
            TabIndex        =   815
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":14352
            TabIndex        =   816
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   49
            Left            =   9360
            OleObjectBlob   =   "workfrm.frx":143B0
            TabIndex        =   817
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1440E
            TabIndex        =   818
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1446C
            TabIndex        =   819
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":144CA
            TabIndex        =   820
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":14528
            TabIndex        =   821
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":14586
            TabIndex        =   822
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":145E4
            TabIndex        =   823
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":14642
            TabIndex        =   824
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":146A0
            TabIndex        =   825
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":146FE
            TabIndex        =   826
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1475C
            TabIndex        =   827
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":147BA
            TabIndex        =   868
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":14818
            TabIndex        =   869
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":14876
            TabIndex        =   870
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":148D4
            TabIndex        =   871
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":14932
            TabIndex        =   872
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":14990
            TabIndex        =   873
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":149EE
            TabIndex        =   874
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":14A4C
            TabIndex        =   875
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":14AAA
            TabIndex        =   876
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":14B08
            TabIndex        =   877
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":14B66
            TabIndex        =   878
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":14BC4
            TabIndex        =   879
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":14C22
            TabIndex        =   880
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":14C80
            TabIndex        =   881
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":14CDE
            TabIndex        =   882
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":14D3C
            TabIndex        =   883
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":14D9A
            TabIndex        =   884
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":14DF8
            TabIndex        =   885
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":14E56
            TabIndex        =   886
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   59
            Left            =   9120
            OleObjectBlob   =   "workfrm.frx":14EB4
            TabIndex        =   887
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   40
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":14F12
            TabIndex        =   1013
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   41
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":14F70
            TabIndex        =   1014
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   42
            Left            =   3120
            OleObjectBlob   =   "workfrm.frx":14FCE
            TabIndex        =   1015
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   43
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1502C
            TabIndex        =   1016
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   44
            Left            =   6000
            OleObjectBlob   =   "workfrm.frx":1508A
            TabIndex        =   1017
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   45
            Left            =   7200
            OleObjectBlob   =   "workfrm.frx":150E8
            TabIndex        =   1018
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   46
            Left            =   8880
            OleObjectBlob   =   "workfrm.frx":15146
            TabIndex        =   1019
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   47
            Left            =   10200
            OleObjectBlob   =   "workfrm.frx":151A4
            TabIndex        =   1020
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   48
            Left            =   11640
            OleObjectBlob   =   "workfrm.frx":15202
            TabIndex        =   1021
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   49
            Left            =   13200
            OleObjectBlob   =   "workfrm.frx":15260
            TabIndex        =   1022
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   50
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":152BE
            TabIndex        =   1023
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1531C
            TabIndex        =   1024
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   52
            Left            =   3000
            OleObjectBlob   =   "workfrm.frx":1537A
            TabIndex        =   1025
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   53
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":153D8
            TabIndex        =   1026
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   54
            Left            =   6000
            OleObjectBlob   =   "workfrm.frx":15436
            TabIndex        =   1027
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   55
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":15494
            TabIndex        =   1028
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   56
            Left            =   8880
            OleObjectBlob   =   "workfrm.frx":154F2
            TabIndex        =   1029
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   57
            Left            =   10320
            OleObjectBlob   =   "workfrm.frx":15550
            TabIndex        =   1030
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   58
            Left            =   11640
            OleObjectBlob   =   "workfrm.frx":155AE
            TabIndex        =   1031
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   59
            Left            =   13200
            OleObjectBlob   =   "workfrm.frx":1560C
            TabIndex        =   1032
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
      End
      Begin VB.Frame Frame2 
         BackColor       =   &H00C0C000&
         Caption         =   "第二排"
         Height          =   2175
         Left            =   360
         TabIndex        =   222
         Top             =   3360
         Width           =   14535
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":1566A
            TabIndex        =   624
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":156C8
            TabIndex        =   584
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":15726
            TabIndex        =   544
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":15784
            TabIndex        =   504
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   20
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":157E2
            TabIndex        =   464
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":15840
            TabIndex        =   424
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":1589E
            TabIndex        =   384
            Top             =   120
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   20
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":158FC
            TabIndex        =   344
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":1595A
            TabIndex        =   304
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   39
            Left            =   13440
            Picture         =   "workfrm.frx":159B8
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   262
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   39
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   38
            Left            =   12000
            Picture         =   "workfrm.frx":15DB0
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   261
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   38
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   37
            Left            =   10560
            Picture         =   "workfrm.frx":161A8
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   260
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   37
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   36
            Left            =   9120
            Picture         =   "workfrm.frx":165A0
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   259
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   36
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   35
            Left            =   7680
            Picture         =   "workfrm.frx":16998
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   258
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   35
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   34
            Left            =   6240
            Picture         =   "workfrm.frx":16D90
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   257
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   34
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   33
            Left            =   4800
            Picture         =   "workfrm.frx":17188
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   256
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   33
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   32
            Left            =   3360
            Picture         =   "workfrm.frx":17580
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   255
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   32
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   31
            Left            =   1920
            Picture         =   "workfrm.frx":17978
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   254
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   31
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   30
            Left            =   480
            Picture         =   "workfrm.frx":17D70
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   253
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   30
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   29
            Left            =   13440
            Picture         =   "workfrm.frx":18168
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   252
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   29
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   28
            Left            =   12000
            Picture         =   "workfrm.frx":18560
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   251
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   28
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   27
            Left            =   10560
            Picture         =   "workfrm.frx":18958
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   250
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   27
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   26
            Left            =   9120
            Picture         =   "workfrm.frx":18D50
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   249
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   26
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   25
            Left            =   7680
            Picture         =   "workfrm.frx":19148
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   248
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   25
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   24
            Left            =   6240
            Picture         =   "workfrm.frx":19540
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   247
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   24
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   23
            Left            =   4800
            Picture         =   "workfrm.frx":19938
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   246
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   23
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   22
            Left            =   3360
            Picture         =   "workfrm.frx":19D30
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   245
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   22
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   21
            Left            =   1920
            Picture         =   "workfrm.frx":1A128
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   244
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   21
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   20
            Left            =   480
            Picture         =   "workfrm.frx":1A520
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   243
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   20
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   20
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":1A918
            TabIndex        =   223
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   21
            Left            =   1800
            OleObjectBlob   =   "workfrm.frx":1A97C
            TabIndex        =   224
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   22
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":1A9E0
            TabIndex        =   225
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   23
            Left            =   4680
            OleObjectBlob   =   "workfrm.frx":1AA44
            TabIndex        =   226
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   24
            Left            =   6120
            OleObjectBlob   =   "workfrm.frx":1AAA8
            TabIndex        =   227
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   25
            Left            =   7560
            OleObjectBlob   =   "workfrm.frx":1AB0C
            TabIndex        =   228
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   26
            Left            =   9000
            OleObjectBlob   =   "workfrm.frx":1AB70
            TabIndex        =   229
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   27
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":1ABD4
            TabIndex        =   230
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   28
            Left            =   11880
            OleObjectBlob   =   "workfrm.frx":1AC38
            TabIndex        =   231
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   29
            Left            =   13320
            OleObjectBlob   =   "workfrm.frx":1AC9C
            TabIndex        =   232
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   30
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":1AD00
            TabIndex        =   233
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   31
            Left            =   1800
            OleObjectBlob   =   "workfrm.frx":1AD64
            TabIndex        =   234
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   32
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":1ADC8
            TabIndex        =   235
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   33
            Left            =   4680
            OleObjectBlob   =   "workfrm.frx":1AE2C
            TabIndex        =   236
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   34
            Left            =   6120
            OleObjectBlob   =   "workfrm.frx":1AE90
            TabIndex        =   237
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   35
            Left            =   7560
            OleObjectBlob   =   "workfrm.frx":1AEF4
            TabIndex        =   238
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   36
            Left            =   9000
            OleObjectBlob   =   "workfrm.frx":1AF58
            TabIndex        =   239
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   37
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":1AFBC
            TabIndex        =   240
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   38
            Left            =   11880
            OleObjectBlob   =   "workfrm.frx":1B020
            TabIndex        =   241
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   39
            Left            =   13320
            OleObjectBlob   =   "workfrm.frx":1B084
            TabIndex        =   242
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1B0E8
            TabIndex        =   305
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1B146
            TabIndex        =   306
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1B1A4
            TabIndex        =   307
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1B202
            TabIndex        =   308
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1B260
            TabIndex        =   309
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   26
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":1B2BE
            TabIndex        =   310
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1B31C
            TabIndex        =   311
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1B37A
            TabIndex        =   312
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1B3D8
            TabIndex        =   313
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1B436
            TabIndex        =   314
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   31
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1B494
            TabIndex        =   315
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   32
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":1B4F2
            TabIndex        =   316
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1B550
            TabIndex        =   317
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1B5AE
            TabIndex        =   318
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   35
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1B60C
            TabIndex        =   319
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1B66A
            TabIndex        =   320
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1B6C8
            TabIndex        =   321
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1B726
            TabIndex        =   322
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1B784
            TabIndex        =   323
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1B7E2
            TabIndex        =   345
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1B840
            TabIndex        =   346
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1B89E
            TabIndex        =   347
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1B8FC
            TabIndex        =   348
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1B95A
            TabIndex        =   349
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1B9B8
            TabIndex        =   350
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1BA16
            TabIndex        =   351
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1BA74
            TabIndex        =   352
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1BAD2
            TabIndex        =   353
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1BB30
            TabIndex        =   354
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1BB8E
            TabIndex        =   355
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1BBEC
            TabIndex        =   356
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1BC4A
            TabIndex        =   357
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1BCA8
            TabIndex        =   358
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1BD06
            TabIndex        =   359
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1BD64
            TabIndex        =   360
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1BDC2
            TabIndex        =   361
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1BE20
            TabIndex        =   362
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1BE7E
            TabIndex        =   363
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1BEDC
            TabIndex        =   385
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   22
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":1BF3A
            TabIndex        =   386
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   23
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":1BF98
            TabIndex        =   387
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   24
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":1BFF6
            TabIndex        =   388
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   25
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1C054
            TabIndex        =   389
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   26
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":1C0B2
            TabIndex        =   390
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   27
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1C110
            TabIndex        =   391
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1C16E
            TabIndex        =   392
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1C1CC
            TabIndex        =   393
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1C22A
            TabIndex        =   394
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   31
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1C288
            TabIndex        =   395
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1C2E6
            TabIndex        =   396
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   33
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":1C344
            TabIndex        =   397
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   34
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":1C3A2
            TabIndex        =   398
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   35
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1C400
            TabIndex        =   399
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1C45E
            TabIndex        =   400
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1C4BC
            TabIndex        =   401
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1C51A
            TabIndex        =   402
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1C578
            TabIndex        =   403
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   21
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1C5D6
            TabIndex        =   425
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1C634
            TabIndex        =   426
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   23
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":1C692
            TabIndex        =   427
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   24
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":1C6F0
            TabIndex        =   428
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   25
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1C74E
            TabIndex        =   429
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1C7AC
            TabIndex        =   430
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1C80A
            TabIndex        =   431
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   28
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":1C868
            TabIndex        =   432
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1C8C6
            TabIndex        =   433
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1C924
            TabIndex        =   434
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1C982
            TabIndex        =   435
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1C9E0
            TabIndex        =   436
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1CA3E
            TabIndex        =   437
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1CA9C
            TabIndex        =   438
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   35
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1CAFA
            TabIndex        =   439
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1CB58
            TabIndex        =   440
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1CBB6
            TabIndex        =   441
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1CC14
            TabIndex        =   442
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1CC72
            TabIndex        =   443
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1CCD0
            TabIndex        =   465
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1CD2E
            TabIndex        =   466
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   23
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":1CD8C
            TabIndex        =   467
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1CDEA
            TabIndex        =   468
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1CE48
            TabIndex        =   469
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1CEA6
            TabIndex        =   470
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1CF04
            TabIndex        =   471
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1CF62
            TabIndex        =   472
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1CFC0
            TabIndex        =   473
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1D01E
            TabIndex        =   474
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1D07C
            TabIndex        =   475
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1D0DA
            TabIndex        =   476
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   33
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":1D138
            TabIndex        =   477
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1D196
            TabIndex        =   478
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   35
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1D1F4
            TabIndex        =   479
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1D252
            TabIndex        =   480
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1D2B0
            TabIndex        =   481
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1D30E
            TabIndex        =   482
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1D36C
            TabIndex        =   483
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   21
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1D3CA
            TabIndex        =   505
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1D428
            TabIndex        =   506
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1D486
            TabIndex        =   507
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1D4E4
            TabIndex        =   508
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1D542
            TabIndex        =   509
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1D5A0
            TabIndex        =   510
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1D5FE
            TabIndex        =   511
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1D65C
            TabIndex        =   512
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1D6BA
            TabIndex        =   513
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1D718
            TabIndex        =   514
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1D776
            TabIndex        =   515
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1D7D4
            TabIndex        =   516
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1D832
            TabIndex        =   517
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1D890
            TabIndex        =   518
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1D8EE
            TabIndex        =   519
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1D94C
            TabIndex        =   520
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1D9AA
            TabIndex        =   521
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1DA08
            TabIndex        =   522
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1DA66
            TabIndex        =   523
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1DAC4
            TabIndex        =   545
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1DB22
            TabIndex        =   546
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1DB80
            TabIndex        =   547
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1DBDE
            TabIndex        =   548
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   25
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1DC3C
            TabIndex        =   549
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1DC9A
            TabIndex        =   550
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   27
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1DCF8
            TabIndex        =   551
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1DD56
            TabIndex        =   552
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1DDB4
            TabIndex        =   553
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1DE12
            TabIndex        =   554
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1DE70
            TabIndex        =   555
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1DECE
            TabIndex        =   556
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1DF2C
            TabIndex        =   557
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1DF8A
            TabIndex        =   558
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1DFE8
            TabIndex        =   559
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1E046
            TabIndex        =   560
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   37
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1E0A4
            TabIndex        =   561
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   38
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":1E102
            TabIndex        =   562
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1E160
            TabIndex        =   563
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1E1BE
            TabIndex        =   585
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   22
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":1E21C
            TabIndex        =   586
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1E27A
            TabIndex        =   587
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   24
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":1E2D8
            TabIndex        =   588
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   25
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1E336
            TabIndex        =   589
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1E394
            TabIndex        =   590
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   27
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1E3F2
            TabIndex        =   591
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   28
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":1E450
            TabIndex        =   592
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1E4AE
            TabIndex        =   593
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1E50C
            TabIndex        =   594
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   31
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1E56A
            TabIndex        =   595
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   32
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":1E5C8
            TabIndex        =   596
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1E626
            TabIndex        =   597
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   34
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":1E684
            TabIndex        =   598
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1E6E2
            TabIndex        =   599
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1E740
            TabIndex        =   600
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   37
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1E79E
            TabIndex        =   601
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1E7FC
            TabIndex        =   602
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1E85A
            TabIndex        =   603
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   21
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1E8B8
            TabIndex        =   625
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1E916
            TabIndex        =   626
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1E974
            TabIndex        =   627
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1E9D2
            TabIndex        =   628
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1EA30
            TabIndex        =   629
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1EA8E
            TabIndex        =   630
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   27
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1EAEC
            TabIndex        =   631
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1EB4A
            TabIndex        =   632
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1EBA8
            TabIndex        =   633
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1EC06
            TabIndex        =   634
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   31
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1EC64
            TabIndex        =   635
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   32
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":1ECC2
            TabIndex        =   636
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1ED20
            TabIndex        =   637
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1ED7E
            TabIndex        =   638
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1EDDC
            TabIndex        =   639
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1EE3A
            TabIndex        =   640
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   37
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1EE98
            TabIndex        =   641
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1EEF6
            TabIndex        =   642
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1EF54
            TabIndex        =   643
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   20
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1EFB2
            TabIndex        =   684
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1F010
            TabIndex        =   685
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1F06E
            TabIndex        =   686
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1F0CC
            TabIndex        =   687
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1F12A
            TabIndex        =   688
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1F188
            TabIndex        =   689
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1F1E6
            TabIndex        =   690
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1F244
            TabIndex        =   691
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1F2A2
            TabIndex        =   692
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1F300
            TabIndex        =   693
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1F35E
            TabIndex        =   694
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1F3BC
            TabIndex        =   695
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1F41A
            TabIndex        =   696
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1F478
            TabIndex        =   697
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1F4D6
            TabIndex        =   698
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1F534
            TabIndex        =   699
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1F592
            TabIndex        =   700
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   37
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1F5F0
            TabIndex        =   701
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1F64E
            TabIndex        =   702
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1F6AC
            TabIndex        =   703
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   20
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1F70A
            TabIndex        =   788
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   21
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1F768
            TabIndex        =   789
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1F7C6
            TabIndex        =   790
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1F824
            TabIndex        =   791
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1F882
            TabIndex        =   792
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1F8E0
            TabIndex        =   793
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1F93E
            TabIndex        =   794
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1F99C
            TabIndex        =   795
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   28
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":1F9FA
            TabIndex        =   796
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1FA58
            TabIndex        =   797
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1FAB6
            TabIndex        =   798
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1FB14
            TabIndex        =   799
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   32
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":1FB72
            TabIndex        =   800
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1FBD0
            TabIndex        =   801
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1FC2E
            TabIndex        =   802
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1FC8C
            TabIndex        =   803
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1FCEA
            TabIndex        =   804
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1FD48
            TabIndex        =   805
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1FDA6
            TabIndex        =   806
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1FE04
            TabIndex        =   807
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   20
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1FE62
            TabIndex        =   848
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1FEC0
            TabIndex        =   849
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1FF1E
            TabIndex        =   850
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1FF7C
            TabIndex        =   851
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1FFDA
            TabIndex        =   852
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":20038
            TabIndex        =   853
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":20096
            TabIndex        =   854
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":200F4
            TabIndex        =   855
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":20152
            TabIndex        =   856
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":201B0
            TabIndex        =   857
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":2020E
            TabIndex        =   858
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2026C
            TabIndex        =   859
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":202CA
            TabIndex        =   860
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":20328
            TabIndex        =   861
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":20386
            TabIndex        =   862
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":203E4
            TabIndex        =   863
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":20442
            TabIndex        =   864
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":204A0
            TabIndex        =   865
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":204FE
            TabIndex        =   866
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2055C
            TabIndex        =   867
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   20
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":205BA
            TabIndex        =   993
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   21
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":20618
            TabIndex        =   994
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   22
            Left            =   3120
            OleObjectBlob   =   "workfrm.frx":20676
            TabIndex        =   995
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   23
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":206D4
            TabIndex        =   996
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   24
            Left            =   6000
            OleObjectBlob   =   "workfrm.frx":20732
            TabIndex        =   997
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   25
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":20790
            TabIndex        =   998
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   26
            Left            =   8880
            OleObjectBlob   =   "workfrm.frx":207EE
            TabIndex        =   999
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   27
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":2084C
            TabIndex        =   1000
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   28
            Left            =   11760
            OleObjectBlob   =   "workfrm.frx":208AA
            TabIndex        =   1001
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   29
            Left            =   13200
            OleObjectBlob   =   "workfrm.frx":20908
            TabIndex        =   1002
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   30
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":20966
            TabIndex        =   1003
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   31
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":209C4
            TabIndex        =   1004
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   32
            Left            =   3120
            OleObjectBlob   =   "workfrm.frx":20A22
            TabIndex        =   1005
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   33
            Left            =   4200
            OleObjectBlob   =   "workfrm.frx":20A80
            TabIndex        =   1006
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   34
            Left            =   5880
            OleObjectBlob   =   "workfrm.frx":20ADE
            TabIndex        =   1007
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   35
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":20B3C
            TabIndex        =   1008
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   36
            Left            =   8880
            OleObjectBlob   =   "workfrm.frx":20B9A
            TabIndex        =   1009
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   37
            Left            =   10320
            OleObjectBlob   =   "workfrm.frx":20BF8
            TabIndex        =   1010
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   38
            Left            =   11760
            OleObjectBlob   =   "workfrm.frx":20C56
            TabIndex        =   1011
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   39
            Left            =   13200
            OleObjectBlob   =   "workfrm.frx":20CB4
            TabIndex        =   1012
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
      End
      Begin VB.Frame Frame1 
         BackColor       =   &H00C0C000&
         Caption         =   "第一排"
         Height          =   2175
         Left            =   360
         TabIndex        =   1
         Top             =   600
         Width           =   14535
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   0
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":20D12
            TabIndex        =   973
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20D70
            TabIndex        =   828
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   0
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":20DCE
            TabIndex        =   768
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20E2C
            TabIndex        =   664
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":20E8A
            TabIndex        =   218
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20EE8
            TabIndex        =   202
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20F46
            TabIndex        =   182
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20FA4
            TabIndex        =   162
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   16
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":21002
            TabIndex        =   158
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":21060
            TabIndex        =   142
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":210BE
            TabIndex        =   122
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":2111C
            TabIndex        =   102
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":2117A
            TabIndex        =   82
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":211D8
            TabIndex        =   62
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":21236
            TabIndex        =   42
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   19
            Left            =   13440
            Picture         =   "workfrm.frx":21294
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   41
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   19
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   18
            Left            =   12000
            Picture         =   "workfrm.frx":2168C
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   40
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   18
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   17
            Left            =   10560
            Picture         =   "workfrm.frx":21A84
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   39
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   17
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   16
            Left            =   9120
            Picture         =   "workfrm.frx":21E7C
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   38
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   16
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   15
            Left            =   7680
            Picture         =   "workfrm.frx":22274
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   37
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   15
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   14
            Left            =   6240
            Picture         =   "workfrm.frx":2266C
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   36
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   14
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   13
            Left            =   4800
            Picture         =   "workfrm.frx":22A64
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   35
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   13
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   12
            Left            =   3360
            Picture         =   "workfrm.frx":22E5C
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   34
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   12
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   11
            Left            =   1920
            Picture         =   "workfrm.frx":23254
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   33
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   11
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   10
            Left            =   480
            Picture         =   "workfrm.frx":2364C
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   32
            Top             =   1440
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   10
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   9
            Left            =   13440
            Picture         =   "workfrm.frx":23A44
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   31
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   9
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   8
            Left            =   12000
            Picture         =   "workfrm.frx":23E3C
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   30
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   8
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   7
            Left            =   10560
            Picture         =   "workfrm.frx":24234
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   29
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   7
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   6
            Left            =   9120
            Picture         =   "workfrm.frx":2462C
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   28
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   6
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   5
            Left            =   7680
            Picture         =   "workfrm.frx":24A24
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   27
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   5
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   4
            Left            =   6240
            Picture         =   "workfrm.frx":24E1C
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   26
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   4
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   3
            Left            =   4800
            Picture         =   "workfrm.frx":25214
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   25
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   3
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   2
            Left            =   3360
            Picture         =   "workfrm.frx":2560C
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   24
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   2
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   1
            Left            =   1920
            Picture         =   "workfrm.frx":25A04
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   23
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   1
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin VB.PictureBox Picture1 
            AutoSize        =   -1  'True
            Height          =   525
            Index           =   0
            Left            =   480
            Picture         =   "workfrm.frx":25DFC
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   12
            Top             =   480
            Width           =   525
            Begin VB.Shape Shape1 
               BorderColor     =   &H000000FF&
               BorderStyle     =   6  'Inside Solid
               BorderWidth     =   2
               Height          =   470
               Index           =   0
               Left            =   0
               Top             =   0
               Visible         =   0   'False
               Width           =   470
            End
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   0
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":261F4
            TabIndex        =   2
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   1
            Left            =   1800
            OleObjectBlob   =   "workfrm.frx":26256
            TabIndex        =   3
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   2
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":262B8
            TabIndex        =   4
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   3
            Left            =   4680
            OleObjectBlob   =   "workfrm.frx":2631A
            TabIndex        =   5
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   4
            Left            =   6120
            OleObjectBlob   =   "workfrm.frx":2637C
            TabIndex        =   6
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   5
            Left            =   7560
            OleObjectBlob   =   "workfrm.frx":263DE
            TabIndex        =   7
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   6
            Left            =   9000
            OleObjectBlob   =   "workfrm.frx":26440
            TabIndex        =   8
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   7
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":264A2
            TabIndex        =   9
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   8
            Left            =   11880
            OleObjectBlob   =   "workfrm.frx":26504
            TabIndex        =   10
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   9
            Left            =   13320
            OleObjectBlob   =   "workfrm.frx":26566
            TabIndex        =   11
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   10
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":265CA
            TabIndex        =   13
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   11
            Left            =   1800
            OleObjectBlob   =   "workfrm.frx":2662E
            TabIndex        =   14
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   12
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":26692
            TabIndex        =   15
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   13
            Left            =   4680
            OleObjectBlob   =   "workfrm.frx":266F6
            TabIndex        =   16
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   14
            Left            =   6120
            OleObjectBlob   =   "workfrm.frx":2675A
            TabIndex        =   17
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   15
            Left            =   7560
            OleObjectBlob   =   "workfrm.frx":267BE
            TabIndex        =   18
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   16
            Left            =   9000
            OleObjectBlob   =   "workfrm.frx":26822
            TabIndex        =   19
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   17
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":26886
            TabIndex        =   20
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   18
            Left            =   11880
            OleObjectBlob   =   "workfrm.frx":268EA
            TabIndex        =   21
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   19
            Left            =   13320
            OleObjectBlob   =   "workfrm.frx":2694E
            TabIndex        =   22
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":269B2
            TabIndex        =   43
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":26A10
            TabIndex        =   44
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":26A6E
            TabIndex        =   45
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":26ACC
            TabIndex        =   46
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":26B2A
            TabIndex        =   47
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":26B88
            TabIndex        =   48
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   7
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":26BE6
            TabIndex        =   49
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":26C44
            TabIndex        =   50
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":26CA2
            TabIndex        =   51
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":26D00
            TabIndex        =   52
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":26D5E
            TabIndex        =   53
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   12
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":26DBC
            TabIndex        =   54
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":26E1A
            TabIndex        =   55
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":26E78
            TabIndex        =   56
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   15
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":26ED6
            TabIndex        =   57
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":26F34
            TabIndex        =   58
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":26F92
            TabIndex        =   59
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   18
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":26FF0
            TabIndex        =   60
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2704E
            TabIndex        =   61
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":270AC
            TabIndex        =   63
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2710A
            TabIndex        =   64
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":27168
            TabIndex        =   65
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":271C6
            TabIndex        =   66
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":27224
            TabIndex        =   67
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":27282
            TabIndex        =   68
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":272E0
            TabIndex        =   69
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2733E
            TabIndex        =   70
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2739C
            TabIndex        =   71
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":273FA
            TabIndex        =   72
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":27458
            TabIndex        =   73
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":274B6
            TabIndex        =   74
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":27514
            TabIndex        =   75
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":27572
            TabIndex        =   76
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":275D0
            TabIndex        =   77
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2762E
            TabIndex        =   78
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2768C
            TabIndex        =   79
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":276EA
            TabIndex        =   80
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":27748
            TabIndex        =   81
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":277A6
            TabIndex        =   83
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   2
            Left            =   2400
            OleObjectBlob   =   "workfrm.frx":27804
            TabIndex        =   84
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":27862
            TabIndex        =   85
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":278C0
            TabIndex        =   86
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2791E
            TabIndex        =   87
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2797C
            TabIndex        =   88
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":279DA
            TabIndex        =   89
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":27A38
            TabIndex        =   90
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":27A96
            TabIndex        =   91
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":27AF4
            TabIndex        =   92
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":27B52
            TabIndex        =   93
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":27BB0
            TabIndex        =   94
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   13
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":27C0E
            TabIndex        =   95
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   14
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":27C6C
            TabIndex        =   96
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":27CCA
            TabIndex        =   97
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":27D28
            TabIndex        =   98
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":27D86
            TabIndex        =   99
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":27DE4
            TabIndex        =   100
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":27E42
            TabIndex        =   101
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":27EA0
            TabIndex        =   103
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   2
            Left            =   2400
            OleObjectBlob   =   "workfrm.frx":27EFE
            TabIndex        =   104
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":27F5C
            TabIndex        =   105
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":27FBA
            TabIndex        =   106
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":28018
            TabIndex        =   107
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":28076
            TabIndex        =   108
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":280D4
            TabIndex        =   109
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":28132
            TabIndex        =   110
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":28190
            TabIndex        =   111
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   10
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":281EE
            TabIndex        =   112
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2824C
            TabIndex        =   113
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":282AA
            TabIndex        =   114
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   13
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":28308
            TabIndex        =   115
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":28366
            TabIndex        =   116
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":283C4
            TabIndex        =   117
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   16
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":28422
            TabIndex        =   118
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":28480
            TabIndex        =   119
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":284DE
            TabIndex        =   120
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2853C
            TabIndex        =   121
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2859A
            TabIndex        =   123
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":285F8
            TabIndex        =   124
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":28656
            TabIndex        =   125
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":286B4
            TabIndex        =   126
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":28712
            TabIndex        =   127
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":28770
            TabIndex        =   128
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":287CE
            TabIndex        =   129
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   8
            Left            =   8160
            OleObjectBlob   =   "workfrm.frx":2882C
            TabIndex        =   130
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2888A
            TabIndex        =   131
            Top             =   480
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":288E8
            TabIndex        =   132
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":28946
            TabIndex        =   133
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   12
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":289A4
            TabIndex        =   134
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":28A02
            TabIndex        =   135
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":28A60
            TabIndex        =   136
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   15
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":28ABE
            TabIndex        =   137
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":28B1C
            TabIndex        =   138
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":28B7A
            TabIndex        =   139
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   18
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":28BD8
            TabIndex        =   140
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":28C36
            TabIndex        =   141
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":28C94
            TabIndex        =   143
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":28CF2
            TabIndex        =   144
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":28D50
            TabIndex        =   145
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":28DAE
            TabIndex        =   146
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":28E0C
            TabIndex        =   147
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":28E6A
            TabIndex        =   148
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":28EC8
            TabIndex        =   149
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":28F26
            TabIndex        =   150
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":28F84
            TabIndex        =   151
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":28FE2
            TabIndex        =   152
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":29040
            TabIndex        =   153
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2909E
            TabIndex        =   154
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":290FC
            TabIndex        =   155
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2915A
            TabIndex        =   156
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   15
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":291B8
            TabIndex        =   157
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":29216
            TabIndex        =   159
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   18
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":29274
            TabIndex        =   160
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":292D2
            TabIndex        =   161
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   1
            Left            =   1440
            OleObjectBlob   =   "workfrm.frx":29330
            TabIndex        =   163
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2938E
            TabIndex        =   164
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":293EC
            TabIndex        =   165
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2944A
            TabIndex        =   166
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":294A8
            TabIndex        =   167
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":29506
            TabIndex        =   168
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":29564
            TabIndex        =   169
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":295C2
            TabIndex        =   170
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   9
            Left            =   9360
            OleObjectBlob   =   "workfrm.frx":29620
            TabIndex        =   171
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":2967E
            TabIndex        =   172
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   11
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":296DC
            TabIndex        =   173
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   12
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":2973A
            TabIndex        =   174
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   13
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":29798
            TabIndex        =   175
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":297F6
            TabIndex        =   176
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":29854
            TabIndex        =   177
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   16
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":298B2
            TabIndex        =   178
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   17
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":29910
            TabIndex        =   179
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   18
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":2996E
            TabIndex        =   180
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":299CC
            TabIndex        =   181
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":29A2A
            TabIndex        =   183
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":29A88
            TabIndex        =   184
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":29AE6
            TabIndex        =   185
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":29B44
            TabIndex        =   186
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":29BA2
            TabIndex        =   187
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":29C00
            TabIndex        =   188
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":29C5E
            TabIndex        =   189
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":29CBC
            TabIndex        =   190
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":29D1A
            TabIndex        =   191
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":29D78
            TabIndex        =   192
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":29DD6
            TabIndex        =   193
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":29E34
            TabIndex        =   194
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":29E92
            TabIndex        =   195
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":29EF0
            TabIndex        =   196
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":29F4E
            TabIndex        =   197
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":29FAC
            TabIndex        =   198
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   17
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":2A00A
            TabIndex        =   199
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2A068
            TabIndex        =   200
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2A0C6
            TabIndex        =   201
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2A124
            TabIndex        =   203
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   2
            Left            =   2400
            OleObjectBlob   =   "workfrm.frx":2A182
            TabIndex        =   204
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   3
            Left            =   3360
            OleObjectBlob   =   "workfrm.frx":2A1E0
            TabIndex        =   205
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2A23E
            TabIndex        =   206
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2A29C
            TabIndex        =   207
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2A2FA
            TabIndex        =   208
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2A358
            TabIndex        =   209
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   8
            Left            =   8160
            OleObjectBlob   =   "workfrm.frx":2A3B6
            TabIndex        =   210
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2A414
            TabIndex        =   211
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":2A472
            TabIndex        =   212
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2A4D0
            TabIndex        =   213
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2A52E
            TabIndex        =   214
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":2A58C
            TabIndex        =   215
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2A5EA
            TabIndex        =   216
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2A648
            TabIndex        =   217
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2A6A6
            TabIndex        =   219
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2A704
            TabIndex        =   220
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2A762
            TabIndex        =   221
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2A7C0
            TabIndex        =   665
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2A81E
            TabIndex        =   666
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":2A87C
            TabIndex        =   667
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2A8DA
            TabIndex        =   668
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2A938
            TabIndex        =   669
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2A996
            TabIndex        =   670
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2A9F4
            TabIndex        =   671
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2AA52
            TabIndex        =   672
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2AAB0
            TabIndex        =   673
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":2AB0E
            TabIndex        =   674
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2AB6C
            TabIndex        =   675
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   12
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":2ABCA
            TabIndex        =   676
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   13
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":2AC28
            TabIndex        =   677
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2AC86
            TabIndex        =   678
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2ACE4
            TabIndex        =   679
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2AD42
            TabIndex        =   680
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2ADA0
            TabIndex        =   681
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2ADFE
            TabIndex        =   682
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2AE5C
            TabIndex        =   683
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2AEBA
            TabIndex        =   769
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2AF18
            TabIndex        =   770
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":2AF76
            TabIndex        =   771
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2AFD4
            TabIndex        =   772
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2B032
            TabIndex        =   773
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   6
            Left            =   6240
            OleObjectBlob   =   "workfrm.frx":2B090
            TabIndex        =   774
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2B0EE
            TabIndex        =   775
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   8
            Left            =   8160
            OleObjectBlob   =   "workfrm.frx":2B14C
            TabIndex        =   776
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2B1AA
            TabIndex        =   777
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":2B208
            TabIndex        =   778
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2B266
            TabIndex        =   779
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2B2C4
            TabIndex        =   780
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   13
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":2B322
            TabIndex        =   781
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   14
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":2B380
            TabIndex        =   782
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2B3DE
            TabIndex        =   783
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2B43C
            TabIndex        =   784
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   17
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":2B49A
            TabIndex        =   785
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2B4F8
            TabIndex        =   786
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   19
            Left            =   9360
            OleObjectBlob   =   "workfrm.frx":2B556
            TabIndex        =   787
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   1
            Left            =   1440
            OleObjectBlob   =   "workfrm.frx":2B5B4
            TabIndex        =   829
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2B612
            TabIndex        =   830
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   3
            Left            =   3360
            OleObjectBlob   =   "workfrm.frx":2B670
            TabIndex        =   831
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   4
            Left            =   4320
            OleObjectBlob   =   "workfrm.frx":2B6CE
            TabIndex        =   832
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2B72C
            TabIndex        =   833
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   6
            Left            =   6240
            OleObjectBlob   =   "workfrm.frx":2B78A
            TabIndex        =   834
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   7
            Left            =   7200
            OleObjectBlob   =   "workfrm.frx":2B7E8
            TabIndex        =   835
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   8
            Left            =   8160
            OleObjectBlob   =   "workfrm.frx":2B846
            TabIndex        =   836
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   9
            Left            =   9120
            OleObjectBlob   =   "workfrm.frx":2B8A4
            TabIndex        =   837
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":2B902
            TabIndex        =   838
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   11
            Left            =   1440
            OleObjectBlob   =   "workfrm.frx":2B960
            TabIndex        =   839
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2B9BE
            TabIndex        =   840
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":2BA1C
            TabIndex        =   841
            Top             =   1080
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2BA7A
            TabIndex        =   842
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2BAD8
            TabIndex        =   843
            Top             =   1080
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2BB36
            TabIndex        =   844
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2BB94
            TabIndex        =   845
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2BBF2
            TabIndex        =   846
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2BC50
            TabIndex        =   847
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2BCAE
            TabIndex        =   974
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   2
            Left            =   3120
            OleObjectBlob   =   "workfrm.frx":2BD0C
            TabIndex        =   975
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   3
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":2BD6A
            TabIndex        =   976
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   4
            Left            =   6000
            OleObjectBlob   =   "workfrm.frx":2BDC8
            TabIndex        =   977
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   5
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":2BE26
            TabIndex        =   978
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   6
            Left            =   8880
            OleObjectBlob   =   "workfrm.frx":2BE84
            TabIndex        =   979
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   7
            Left            =   10320
            OleObjectBlob   =   "workfrm.frx":2BEE2
            TabIndex        =   980
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   8
            Left            =   11760
            OleObjectBlob   =   "workfrm.frx":2BF40
            TabIndex        =   981
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   9
            Left            =   13200
            OleObjectBlob   =   "workfrm.frx":2BF9E
            TabIndex        =   982
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   10
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":2BFFC
            TabIndex        =   983
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2C05A
            TabIndex        =   984
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   12
            Left            =   3120
            OleObjectBlob   =   "workfrm.frx":2C0B8
            TabIndex        =   985
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   13
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":2C116
            TabIndex        =   986
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   14
            Left            =   6000
            OleObjectBlob   =   "workfrm.frx":2C174
            TabIndex        =   987
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   15
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":2C1D2
            TabIndex        =   988
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   16
            Left            =   8880
            OleObjectBlob   =   "workfrm.frx":2C230
            TabIndex        =   989
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   17
            Left            =   10320
            OleObjectBlob   =   "workfrm.frx":2C28E
            TabIndex        =   990
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   18
            Left            =   11760
            OleObjectBlob   =   "workfrm.frx":2C2EC
            TabIndex        =   991
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   19
            Left            =   13200
            OleObjectBlob   =   "workfrm.frx":2C34A
            TabIndex        =   992
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
      End
      Begin MSCommLib.MSComm MSComm1 
         Left            =   -61200
         Top             =   1320
         _ExtentX        =   1005
         _ExtentY        =   1005
         _Version        =   393216
         DTREnable       =   -1  'True
      End
      Begin WMPLibCtl.WindowsMediaPlayer WindowsMediaPlayer1 
         Height          =   495
         Left            =   -61800
         TabIndex        =   962
         Top             =   7680
         Visible         =   0   'False
         Width           =   1575
         URL             =   ""
         rate            =   1
         balance         =   0
         currentPosition =   0
         defaultFrame    =   ""
         playCount       =   1
         autoStart       =   -1  'True
         currentMarker   =   0
         invokeURLs      =   -1  'True
         baseURL         =   ""
         volume          =   50
         mute            =   0   'False
         uiMode          =   "full"
         stretchToFit    =   0   'False
         windowlessVideo =   0   'False
         enabled         =   -1  'True
         enableContextMenu=   -1  'True
         fullScreen      =   0   'False
         SAMIStyle       =   ""
         SAMILang        =   ""
         SAMIFilename    =   ""
         captioningID    =   ""
         enableErrorDialogs=   0   'False
         _cx             =   2778
         _cy             =   873
      End
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   495
      Left            =   4200
      TabIndex        =   917
      Top             =   4200
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   495
      Left            =   4680
      TabIndex        =   913
      Top             =   4200
      Width           =   1215
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
    
    If (Check1.Value = 0) Then
        
        WindowsMediaPlayer1.Close
        
        command(0) = &H8A                                                       '清除下位机报警命令
        
        MSComm1.Output = command
        
        command(0) = &HFF                                                       '清空命令
        
    End If
    
End Sub

Private Sub Command19_Click()
    
    Form2.Enabled = False
    
    Form16.bPositive = True
    
    Form16.Text1.Text = Form16.strPositive
    
    Form16.SkinLabel1.Caption = "请取出全部阳性"
    
    Form16.Picture1.Picture = LoadPicture(App.Path + "\pic\6.jpg")
    
    Form16.Show
    
End Sub

Private Sub Command21_Click()
    
    Form2.Enabled = False
    
    Form16.bPositive = False
    
    Form16.Text1.Text = Form16.strNegative
    
    Form16.SkinLabel1.Caption = "请取出全部阴性"
    
    Form16.Picture1.Picture = LoadPicture(App.Path + "\pic\2.jpg")
    
    Form16.Show
    
End Sub

Private Sub Command22_Click()
    
    Command22.Enabled = False
    xzsjxs.Text1.Text = ""
    xzsjxs.Caption = "校正高值数据 "                                            '+ App.Path & "\sys\adjust1.txt"
    xzsjxs.Show
    t = 0
    
    Open App.Path & "\sys\adjust1.txt" For Input As #3
    
    Do While Not EOF(3)                                                         'EOF为文尾测试函数
        
        Line Input #3, textline                                                 '将读入的1行存到变量TextLine中
        
        xzsjxs.Text1.Text = xzsjxs.Text1.Text + Format(t + 1, "0#") + "#:" + Mid(textline, 5, 12) + Chr(13) + Chr(10)
        
        t = t + 1                                                               '循环
        
    Loop
    
    Close #3
    
    Command22.Enabled = True
    
End Sub

Private Sub Command23_Click()
    
    Command23.Enabled = False
    xzsjxs.Text1.Text = ""
    xzsjxs.Caption = "校正低值数据 "                                            ' + App.Path & "\sys\adjust2.txt"
    xzsjxs.Show
    t = 0
    
    Open App.Path & "\sys\adjust2.txt" For Input As #6
    
    Do While Not EOF(6)                                                         'EOF为文尾测试函数
        
        Line Input #6, textline                                                 '将读入的1行存到变量TextLine中
        
        xzsjxs.Text1.Text = xzsjxs.Text1.Text + Format(t + 1, "0#") + "#:" + Mid(textline, 5, 12) + Chr(13) + Chr(10)
        
        t = t + 1                                                               '循环
        
    Loop
    
    Close #6
    
    Command23.Enabled = True
    
End Sub

Private Sub Form_Load()                                                         '初始化各项信息和串口
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '窗体居中
    
    Skin1.LoadSkin App.Path + "\Skins\3.skn"
    
    Skin1.ApplySkin Me.hWnd                                                     '使用皮肤
    
    On Error GoTo err1
    
    Dim k As Integer                                                            'k在此作为循环变量
    
    ''''''''''''''''''''''''''''''按键命令、文本初始化'''''''''''''''''''''''''''''''''''
    
    Command4.Enabled = False                                                    '运行按钮禁用
    Command8.Enabled = False                                                    '校准1按钮禁用
    Command9.Enabled = False                                                    '校准2按钮禁用
    Command11.Enabled = False                                                   '打印按钮不可用
    Command13.Enabled = False                                                   '打印按钮不可用
    
    Text3.Text = ""                                                             '临时存储下位机上传的数据
    Text4.Text = ""                                                             '临时存储下位机上传的数据
    Text9.Text = ""                                                             '临时存储下位机上传的数据
    Text10.Text = ""                                                            '临时存储下位机上传的数据
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''''''串口初始化设置'''''''''''''''''''''''''''''''''''''
    
    intPort = 1                                                                 '使用通讯端口1
    strSet = "1200,n,8,1"                                                       '设置波特率1200bit/s,无效验，8位数据，1位停止位
    MSComm1.InputLen = 0                                                        '读取接收缓冲区的所有字符
    MSComm1.InBufferSize = 1024                                                 '设置接收缓冲区为1024字节
    MSComm1.OutBufferSize = 512                                                 '设置发送缓冲区为512字节
    MSComm1.SThreshold = 0                                                      '不触发事件
    MSComm1.RThreshold = 1                                                      '每1个字符到接收缓冲区都触发接收事件
    MSComm1.InBufferCount = 0                                                   '清除发送区的缓冲区数据
    MSComm1.OutBufferCount = 0                                                  '清除接收区的缓冲区数据
    MSComm1.InputMode = 1                                                       '二进制接收
    
    If Not MSComm1.PortOpen Then                                                '串口关闭此时打开
        
        MSComm1.CommPort = intPort                                              '设置串口1
        MSComm1.Settings = strSet                                               '波特率1200bit/s,无效验，8位数据，1位停止位
        MSComm1.PortOpen = True                                                 '串口打开
        
    End If
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''''''''''''''''''读入病人各项信息''''''''''''''''''''''''''''''''''''''''
    
    k = 0                                                                       '开始读入病人各项信息
    
    Dim bNewRevision As Boolean
    
    Open App.Path & "\sys\sys.txt" For Input As #2                              '在文件中读取
    
    Line Input #2, textline
    
    If textline = "Revision 2017" Then
        
        bNewRevision = True
        
    Else
        
        bNewRevision = False
        
    End If
    
    Do While Not EOF(2)                                                         'EOF为文尾测试函数
        
        If k <> 0 Or bNewRevision Then
            Line Input #2, textline                                             '将读入的1行存到变量TextLine中
        End If
        SkinLabel2(k).Caption = textline                                        '读条形码
        
        Line Input #2, textline                                                 '将读入的2行存到变量TextLine中
        SkinLabel3(k).Caption = textline                                        '读姓名
        
        If bNewRevision Then
            Line Input #2, textline                                             '将读入的2行存到变量TextLine中
            SkinLabel78(k).Caption = textline                                   '读ID
        Else
            SkinLabel78(k).Caption = ""
        End If                                                                  '读ID
        
        Line Input #2, textline                                                 '将读入的3行存到变量TextLine中
        SkinLabel4(k).Caption = textline                                        '读性别
        
        Line Input #2, textline                                                 '将读入的4行存到变量TextLine中
        SkinLabel5(k).Caption = textline                                        '读年龄
        
        Line Input #2, textline                                                 '将读入的5行存到变量TextLine中
        SkinLabel6(k).Caption = textline                                        '读科室
        
        Line Input #2, textline                                                 '将读入的6行存到变量TextLine中
        SkinLabel7(k).Caption = textline                                        '读培养瓶种类
        
        Line Input #2, textline                                                 '将读入的7行存到变量TextLine中
        SkinLabel11(k).Caption = textline                                       '读培养时间
        
        Line Input #2, textline                                                 '将读入的8行存到变量TextLine中
        SkinLabel8(k).Caption = Mid(textline, 1, 7)                             '读时间:年月
        SkinLabel9(k).Caption = Mid(textline, 8, 11)                            '读时间:月日+时分
        SkinLabel42(k).Caption = Mid(textline, 1, 4)                            '读时间:年份
        SkinLabel43(k).Caption = Mid(textline, 6, 2)                            '读时间:月份
        
        Line Input #2, textline                                                 '将读入的9行存到变量TextLine中
        SkinLabel10(k).Caption = textline                                       '读培养状态
        
        If textline = 1 Then                                                    '1--绿，表示无菌，但测量未完成
            
            Picture1(k).Picture = LoadPicture(App.Path + "\pic\5.jpg")
            
        ElseIf textline = 2 Then                                                '2--红，表示有菌，但测量未完成
            
            Picture1(k).Picture = LoadPicture(App.Path + "\pic\6.jpg")
            
        ElseIf textline = 3 Then                                                '3--绿×，表示测量完成
            
            Picture1(k).Picture = LoadPicture(App.Path + "\pic\2.jpg")
            
        ElseIf textline = 4 Then                                                '4--红×，表示测量完成
            
            Picture1(k).Picture = LoadPicture(App.Path + "\pic\3.jpg")
            
        End If
        
        k = k + 1                                                               '循环
        
    Loop
    
    Close #2
    
    AllStatesStatistic
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''''读取报警音频路径'''''''''''''''''''''''''''''''''''''
    
    If Dir(App.Path & "\sys\warning.txt") <> "" Then
        
        Open App.Path & "\sys\warning.txt" For Input As #13
        
        Line Input #13, textline                                                '将读入数据存到变量textLine中
        
        warning = textline                                                      '显示设置的培养时间
        
        Close #13
        
    Else
        
        warning = App.Path & "\music\warning.mp3"
        
        Open App.Path & "\sys\warning.txt" For Output As #13
        
        Print #13, warning                                                      '显示设置的培养时间
        
        Close #13
        
    End If
    
    If Dir(warning) = "" Then
        
        warning = App.Path & "\music\warning.mp3"
        
    End If
    
    WindowsMediaPlayer1.Settings.setMode "loop", True
    
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''''''''''''''读取文件中校准1希望的值，显示'''''''''''''''''''''''''''''''
    
    Open App.Path & "\sys\hope1.txt" For Input As #7                            '在文件中读取校准1希望的值
    
    Line Input #7, textline                                                     '将读入数据存到变量textLine中
    
    SkinLabel48.Caption = Val(textline)                                         '显示校准1希望的值
    
    Close #7
    
    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''''''''''''''读取文件中校准2希望的值，显示''''''''''''''''''''''''''''''
    
    Open App.Path & "\sys\hope2.txt" For Input As #8                            '在文件中读取校准2希望的值
    
    Line Input #8, textline                                                     '将读入数据存到变量textLine中
    
    SkinLabel52.Caption = Val(textline)                                         '显示校准2希望的值
    
    Close #8
    
    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''读取文件中的阈值，显示''''''''''''''''''''''''''''''''''
    
    Open App.Path & "\sys\threshold.txt" For Input As #9                        '在文件中读取阈值
    
    Line Input #9, textline                                                     '将读入数据存到变量TextLine中
    
    SkinLabel54.Caption = textline                                              '显示上限值
    
    Line Input #9, textline                                                     '将读入数据存到变量TextLine中
    
    SkinLabel65.Caption = textline                                              '显示下限值
    
    Close #9
    
    yuzhiup = Val(SkinLabel54.Caption)                                          '阈值上限值，放入全局变量中
    
    yuzhidown = Val(SkinLabel65.Caption)                                        '阈值下限值，放入全局变量中
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''读取文件中的温度值，显示'''''''''''''''''''''''''''''''''
    
    Open App.Path & "\temp\temp.txt" For Input As #10                           '在文件中读保存的温度值
    
    Line Input #10, textline                                                    '将读入数据存到变量TextLine中
    
    SkinLabel20.Caption = textline                                              '显示温度值
    
    Close #10
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''调试/启动工作状态显示初始化''''''''''''''''''''''''''''''''
    
    Picture2.Picture = LoadPicture(App.Path + "\pic\4.jpg")                     '调试状态初始化显示
    
    Picture3.Picture = LoadPicture(App.Path + "\pic\4.jpg")                     '启动状态显示初始化
    
    'Picture4.Picture = LoadPicture(App.Path + "\pic\4.jpg")                     '调试状态初始化显示
    
    'Picture5.Picture = LoadPicture(App.Path + "\pic\4.jpg")                     '启动状态显示初始化
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''上位机与下位机连接状态初始化，接收到下位机命令后，状态正常''''''''''''''
    
    SkinLabel61.Caption = "未连接..."
    
    command(0) = &H84                                                           '初始化时发送传送数据命令(132)
    
    MSComm1.Output = command
    
    command(0) = &HFF                                                           '清空命令
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''''显示默认培养时间'''''''''''''''''''''''''''''''''''''
    
    Open App.Path & "\sys\settime.txt" For Input As #11
    
    Line Input #11, textline                                                    '将读入数据存到变量textLine中
    
    SkinLabel69.Caption = textline                                              '显示校准2希望的值
    
    Close #11
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''''''错误处理''''''''''''''''''''''''''''''''''''''''''''
    
err1:
    
    If Err.Number = 8005 Then
        
        answer = MsgBox("该串口已被占用", "64", "信息提示")
        
    End If
    
    If Err.Number = 8002 Then
        
        answer = MsgBox("串口不存在！", "64", "信息提示")
        
    End If
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
End Sub

Private Sub Form_Unload(Cancel As Integer)                                      '退出程序时卸载所有窗体
    
    'If MsgBox("仪器正在测量，是否确定退出！", vbInformation + vbYesNo, "提示") = vbNo Then '不卸载，继续测量
    
    Cancel = True
    
    'Else
    
    Unload Form3                                                                '卸载测量界面窗体
    Unload Form4                                                                '卸载信息输入界面窗体
    Unload Form5                                                                '卸载放入培养瓶界面窗体
    Unload Form6                                                                '卸载取出培养瓶界面窗体
    Unload Form7                                                                '卸载查询界面窗体
    Unload Form8                                                                '卸载按时间统计资料界面窗体
    Unload Form9                                                                '卸载接收数据提示界面窗体
    Unload Form10                                                               '卸载删除数据提示界面窗体
    Unload Form11                                                               '卸载数据接收提示界面窗体
    Unload Form12                                                               '卸载统计方式选择提示界面窗体
    Unload Form13                                                               '卸载按科室统计资料界面窗体
    Unload Form14                                                               '卸载按培养瓶种类统计资料界面窗体
    Unload Form1                                                                '卸载欢迎界面窗体
    Unload Form2                                                                '卸载本窗体
    
    'End If
    
End Sub

Private Sub Picture1_Click(Index As Integer)                                    '单击图片按钮，进入测量界面
    
    Select Case Index                                                           '确定孔位
        
    Case 0
        
        n = 0                                                                   '选择1号孔位
        
    Case 1
        
        n = 1                                                                   '选择2号孔位
        
    Case 2
        
        n = 2                                                                   '选择3号孔位
        
    Case 3
        
        n = 3                                                                   '选择4号孔位
        
    Case 4
        
        n = 4                                                                   '选择5号孔位
        
    Case 5
        
        n = 5                                                                   '选择6号孔位
        
    Case 6
        
        n = 6                                                                   '选择7号孔位
        
    Case 7
        
        n = 7                                                                   '选择8号孔位
        
    Case 8
        
        n = 8                                                                   '选择9号孔位
        
    Case 9
        
        n = 9                                                                   '选择10号孔位
        
    Case 10
        
        n = 10                                                                  '选择11号孔位
        
    Case 11
        
        n = 11                                                                  '选择12号孔位
        
    Case 12
        
        n = 12                                                                  '选择13号孔位
        
    Case 13
        
        n = 13                                                                  '选择14号孔位
        
    Case 14
        
        n = 14                                                                  '选择15号孔位
        
    Case 15
        
        n = 15                                                                  '选择16号孔位
        
    Case 16
        
        n = 16                                                                  '选择17号孔位
        
    Case 17
        
        n = 17                                                                  '选择18号孔位
        
    Case 18
        
        n = 18                                                                  '选择19号孔位
        
    Case 19
        
        n = 19                                                                  '选择20号孔位
        
    Case 20
        
        n = 20                                                                  '选择21号孔位
        
    Case 21
        
        n = 21                                                                  '选择22号孔位
        
    Case 22
        
        n = 22                                                                  '选择23号孔位
        
    Case 23
        
        n = 23                                                                  '选择24号孔位
        
    Case 24
        
        n = 24                                                                  '选择25号孔位
        
    Case 25
        
        n = 25                                                                  '选择26号孔位
        
    Case 26
        
        n = 26                                                                  '选择27号孔位
        
    Case 27
        
        n = 27                                                                  '选择28号孔位
        
    Case 28
        
        n = 28                                                                  '选择29号孔位
        
    Case 29
        
        n = 29                                                                  '选择30号孔位
        
    Case 30
        
        n = 30                                                                  '选择31号孔位
        
    Case 31
        
        n = 31                                                                  '选择31号孔位
        
    Case 32
        
        n = 32                                                                  '选择33号孔位
        
    Case 33
        
        n = 33                                                                  '选择34号孔位
        
    Case 34
        
        n = 34                                                                  '选择35号孔位
        
    Case 35
        
        n = 35                                                                  '选择36号孔位
        
    Case 36
        
        n = 36                                                                  '选择37号孔位
        
    Case 37
        
        n = 37                                                                  '选择38号孔位
        
    Case 38
        
        n = 38                                                                  '选择39号孔位
        
    Case 39
        
        n = 39                                                                  '选择40号孔位
        
    Case 40
        
        n = 40                                                                  '选择41号孔位
        
    Case 41
        
        n = 41                                                                  '选择42号孔位
        
    Case 42
        
        n = 42                                                                  '选择43号孔位
        
    Case 43
        
        n = 43                                                                  '选择44号孔位
        
    Case 44
        
        n = 44                                                                  '选择45号孔位
        
    Case 45
        
        n = 45                                                                  '选择46号孔位
        
    Case 46
        
        n = 46                                                                  '选择47号孔位
        
    Case 47
        
        n = 47                                                                  '选择48号孔位
        
    Case 48
        
        n = 48                                                                  '选择49号孔位
        
    Case 49
        
        n = 49                                                                  '选择50号孔位
        
    Case 50
        
        n = 50                                                                  '选择51号孔位
        
    Case 51
        
        n = 51                                                                  '选择52号孔位
        
    Case 52
        
        n = 52                                                                  '选择53号孔位
        
    Case 53
        
        n = 53                                                                  '选择54号孔位
        
    Case 54
        
        n = 54                                                                  '选择55号孔位
        
    Case 55
        
        n = 55                                                                  '选择56号孔位
        
    Case 56
        
        n = 56                                                                  '选择57号孔位
        
    Case 57
        
        n = 57                                                                  '选择58号孔位
        
    Case 58
        
        n = 58                                                                  '选择59号孔位
        
    Case 59
        
        n = 59                                                                  '选择60号孔位
        
    End Select
    
    Form2.Enabled = False                                                       '工作界面禁用
    Form3.Show                                                                  '进入测量界面
    
End Sub

Private Sub Command2_Click()                                                    '通过条形码查询信息
    
    'Form2.Enabled = False                                                       '工作界面禁用
    'Form7.Show                                                                  '进入查找界面
    
    Dim r As Integer                                                            'r在此作为孔位标志位
    
    Dim m As Integer                                                            'm在此作为孔位标志位
    
    If Text15.Text = "" Then
        
        answer = MsgBox("提示：没有输入条形码!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入条形码
            
            Text15.Enabled = True
            
            Exit Sub
            
        End If
        
    End If
    
    r = 0                                                                       '开始读入病人各项信息
    
    Dim bNewRevision As Boolean
    
    Open App.Path & "\sys\sys.txt" For Input As #2                              '在文件中读取
    
    Line Input #2, textline
    
    If textline = "Revision 2017" Then
        
        bNewRevision = True
        
    Else
        
        bNewRevision = False
        
    End If
    
    Do While Not EOF(2)
        
        If r <> 0 Or bNewRevision Then
            Line Input #2, textline                                             '将读入的1行存到变量TextLine中
        End If
        SkinLabel2(r).Caption = textline                                        '读条形码
        
        Line Input #2, textline                                                 '以下跳出不读
        
        If bNewRevision Then
            Line Input #2, textline
        End If
        
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        
        r = r + 1                                                               '循环
        
    Loop
    
    Close #2
    
    For m = 0 To 59
        
        If SkinLabel2(m) = Text15.Text Then                                     '查到所要搜索的条形码
            
            n = m
            
            Form3.Show
            
            Exit Sub
            
        End If
        
    Next m
    
    answer = MsgBox("提示：当前输入的条形码有错或条形码已测完", 48, "信息提示")
    
    If answer = 1 Then                                                          '重新输入条形码
        
        Text15.Text = ""
        
        Exit Sub
        
    End If
    
End Sub

Private Sub Command3_Click()                                                    '发送命令使下位机处于停机状态
    
    Timer1.Enabled = False
    Timer2.Enabled = False
    
    Picture2.Picture = LoadPicture(App.Path + "\pic\6.jpg")                     '停机标志
    Picture3.Picture = LoadPicture(App.Path + "\pic\4.jpg")
    
    'SkinLabel13.Caption = "下位机处于调试状态"                                  '状态提示
    
    command(0) = &H82                                                           '发送停机命令(130)
    
    MSComm1.Output = command
    
    command(0) = &HFF                                                           '清空命令
    
    Command3.Enabled = False                                                    '调试按钮禁用
    Command4.Enabled = True                                                     '运行按钮可用
    Command8.Enabled = True                                                     '校准1按钮可用
    Command9.Enabled = True                                                     '校准2按钮可用
    
End Sub

Private Sub Command4_Click()                                                    '发送命令使下位机处于运行状态
    
    Timer1.Enabled = True
    Timer2.Enabled = False
    
    Picture2.Picture = LoadPicture(App.Path + "\pic\4.jpg")                     '运行标志
    Picture3.Picture = LoadPicture(App.Path + "\pic\5.jpg")
    
    'SkinLabel13.Caption = "下位机处于运行状态"                                  '状态提示
    
    command(0) = &H83                                                           '发送运行命令(131)
    
    MSComm1.Output = command
    
    command(0) = &HFF                                                           '清空命令
    
    Command4.Enabled = False                                                    '运行按钮禁用
    Command3.Enabled = True                                                     '调试按钮可用
    Command8.Enabled = False                                                    '校准1按钮禁用
    Command9.Enabled = False                                                    '校准2按钮禁用
    
End Sub

Private Sub Command5_Click()                                                    '温度加0.1度命令按钮
    
    SkinLabel20.Caption = SkinLabel20.Caption + 0.1                             '温度累加0.1度
    
    If Val(SkinLabel20.Caption) > 40 Then                                       '温度值设置不能大于40度,大于提示如下
        
        answer = MsgBox("提示：设置温度值大于40度!", 48, "信息提示")
        
        If answer = 1 Then                                                      '确认之后默认为40度
            
            SkinLabel20.Caption = 40                                            '温度最高设置为40度
            
            Exit Sub
            
        End If
        
    End If
    
End Sub

Private Sub Command6_Click()                                                    '温度减0.1度命令按钮
    
    SkinLabel20.Caption = SkinLabel20.Caption - 0.1                             '温度累减0.1度
    
    If Val(SkinLabel20.Caption) < 30 Then                                       '温度值设置不能小于30度度,小于提示如下
        
        answer = MsgBox("提示：设置温度值小于30度!", 48, "信息提示")
        
        If answer = 1 Then                                                      '确认之后默认为30度
            
            SkinLabel20.Caption = 30                                            '温度最低设置为30度
            
            Exit Sub
            
        End If
        
    End If
    
End Sub

Private Sub Command7_Click()                                                    '发送温度命令
    
    command(0) = CInt(Val(SkinLabel20.Caption) * 10 - 150)                      '转换后发送到下位机
    
    Open App.Path & "\temp\temp.txt" For Output As #10                          '保存设置的温度值
    
    Print #10, SkinLabel20.Caption
    
    Close #10
    
    MSComm1.Output = command                                                    '发送温度值
    
    command(0) = &HFF                                                           '清空命令
    
    answer = MsgBox("提示：温度值已发送至下位机!", 48, "信息提示")
    
    If answer = 1 Then                                                          '确认
        
        Exit Sub
        
    End If
    
End Sub

Private Sub Command8_Click()
    
    Dim e As Integer                                                            'e在此作为循环变量
    
    If Text1.Text = "" Then                                                     '没有输入孔位
        
        answer = MsgBox("提示：没有输入孔位!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入孔位
            
            Text1.Enabled = True
            
            Exit Sub
            
        End If
        
    End If
    
    If Val(Text1.Text) < 1 Or Val(Text1.Text) > 60 Then
        
        answer = MsgBox("提示：请输入1-60之间的整数!", 48, "信息提示")
        
        If answer = 1 Then
            
            Text1.Text = ""                                                     '文本清空
            
            Text1.Enabled = True
            
            Exit Sub
            
        End If
        
    Else
        
        Form2.Enabled = False                                                   '工作界面禁用
        
        adjust1_flag = 1                                                        '接收上传的校准1数据标志位有效
        
        adjust2_flag = 0                                                        '接收上传的校准2数据标志位无效
        
        ''''''''''''''''''''''''''''''读校准1的数据''''''''''''''''''''''''''''''''''''''''''
        e = 0
        
        Open App.Path & "\sys\adjust1.txt" For Input As #3                      '在文件中读取
        
        Do While Not EOF(3)                                                     'EOF为文尾测试函数
            
            Line Input #3, textline
            
            read1(e) = Mid(textline, 5, 12)
            
            e = e + 1                                                           '循环
            
        Loop
        
        Close #3
        
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        s1 = Val(Text1.Text) - 1                                                '做第s1号孔位的校准
        
        Select Case s1
            
        Case 0
            
            command(0) = &H3D
            
            MSComm1.Output = command                                            '第1个瓶做校准1(61)
            
            command(0) = &H3D
            
            MSComm1.Output = command                                            '第1个瓶做校准1(61)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 1
            
            command(0) = &H3E
            
            MSComm1.Output = command                                            '第2个瓶做校准1(61)
            
            command(0) = &H3E
            
            MSComm1.Output = command                                            '第2个瓶做校准1(62)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 2
            
            command(0) = &H3F
            
            MSComm1.Output = command                                            '第3个瓶做校准1(63)
            
            command(0) = &H3F
            
            MSComm1.Output = command                                            '第3个瓶做校准1(63)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 3
            
            command(0) = &H40
            
            MSComm1.Output = command                                            '第4个瓶做校准1(64)
            
            command(0) = &H40
            
            MSComm1.Output = command                                            '第4个瓶做校准1(64)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 4
            
            command(0) = &H41
            
            MSComm1.Output = command                                            '第5个瓶做校准1(65)
            
            command(0) = &H41
            
            MSComm1.Output = command                                            '第5个瓶做校准1(65)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 5
            
            command(0) = &H42
            
            MSComm1.Output = command                                            '第6个瓶做校准1(66)
            
            command(0) = &H42
            
            MSComm1.Output = command                                            '第6个瓶做校准1(66)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 6
            
            command(0) = &H43
            
            MSComm1.Output = command                                            '第7个瓶做校准1(67)
            
            command(0) = &H43
            
            MSComm1.Output = command                                            '第7个瓶做校准1(67)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 7
            
            command(0) = &H44
            
            MSComm1.Output = command                                            '第8个瓶做校准1(68)
            
            command(0) = &H44
            
            MSComm1.Output = command                                            '第8个瓶做校准1(68)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 8
            
            command(0) = &H45
            
            MSComm1.Output = command                                            '第9个瓶做校准1(69)
            
            command(0) = &H45
            
            MSComm1.Output = command                                            '第9个瓶做校准1(69)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 9
            
            command(0) = &H46
            
            MSComm1.Output = command                                            '第10个瓶做校准1(70)
            
            command(0) = &H46
            
            MSComm1.Output = command                                            '第10个瓶做校准1(70)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 10
            
            command(0) = &H47
            
            MSComm1.Output = command                                            '第11个瓶做校准1(71)
            
            command(0) = &H47
            
            MSComm1.Output = command                                            '第11个瓶做校准1(71)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 11
            
            command(0) = &H48
            
            MSComm1.Output = command                                            '第12个瓶做校准1(72)
            
            command(0) = &H48
            
            MSComm1.Output = command                                            '第12个瓶做校准1(72)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 12
            
            command(0) = &H49
            
            MSComm1.Output = command                                            '第13个瓶做校准1(73)
            
            command(0) = &H49
            
            MSComm1.Output = command                                            '第13个瓶做校准1(73)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 13
            
            command(0) = &H4A
            
            MSComm1.Output = command                                            '第14个瓶做校准1(74)
            
            command(0) = &H4A
            
            MSComm1.Output = command                                            '第14个瓶做校准1(74)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 14
            
            command(0) = &H4B
            
            MSComm1.Output = command                                            '第15个瓶做校准1(75)
            
            command(0) = &H4B
            
            MSComm1.Output = command                                            '第15个瓶做校准1(75)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 15
            
            command(0) = &H4C
            
            MSComm1.Output = command                                            '第16个瓶做校准1(76)
            
            command(0) = &H4C
            
            MSComm1.Output = command                                            '第16个瓶做校准1(76)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 16
            
            command(0) = &H4D
            
            MSComm1.Output = command                                            '第17个瓶做校准1(77)
            
            command(0) = &H4D
            
            MSComm1.Output = command                                            '第17个瓶做校准1(77)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 17
            
            command(0) = &H4E
            
            MSComm1.Output = command                                            '第18个瓶做校准1(78)
            
            command(0) = &H4E
            
            MSComm1.Output = command                                            '第18个瓶做校准1(78)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 18
            
            command(0) = &H4F
            
            MSComm1.Output = command                                            '第19个瓶做校准1(79)
            
            command(0) = &H4F
            
            MSComm1.Output = command                                            '第19个瓶做校准1(79)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 19
            
            command(0) = &H50
            
            MSComm1.Output = command                                            '第20个瓶做校准1(80)
            
            command(0) = &H50
            
            MSComm1.Output = command                                            '第20个瓶做校准1(80)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 20
            
            command(0) = &H51
            
            MSComm1.Output = command                                            '第21个瓶做校准1(81)
            
            command(0) = &H51
            
            MSComm1.Output = command                                            '第21个瓶做校准1(81)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 21
            
            command(0) = &H52
            
            MSComm1.Output = command                                            '第22个瓶做校准1(82)
            
            command(0) = &H52
            
            MSComm1.Output = command                                            '第22个瓶做校准1(82)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 22
            
            command(0) = &H53
            
            MSComm1.Output = command                                            '第23个瓶做校准1(83)
            
            command(0) = &H53
            
            MSComm1.Output = command                                            '第23个瓶做校准1(83)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 23
            
            command(0) = &H54
            
            MSComm1.Output = command                                            '第24个瓶做校准2(84)
            
            command(0) = &H54
            
            MSComm1.Output = command                                            '第24个瓶做校准2(84)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 24
            
            command(0) = &H55
            
            MSComm1.Output = command                                            '第25个瓶做校准1(85)
            
            command(0) = &H55
            
            MSComm1.Output = command                                            '第25个瓶做校准1(85)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 25
            
            command(0) = &H56
            
            MSComm1.Output = command                                            '第26个瓶做校准1(86)
            
            command(0) = &H56
            
            MSComm1.Output = command                                            '第26个瓶做校准1(86)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 26
            
            command(0) = &H57
            
            MSComm1.Output = command                                            '第27个瓶做校准1(87)
            
            command(0) = &H57
            
            MSComm1.Output = command                                            '第27个瓶做校准1(87)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 27
            
            command(0) = &H58
            
            MSComm1.Output = command                                            '第28个瓶做校准1(88)
            
            command(0) = &H58
            
            MSComm1.Output = command                                            '第28个瓶做校准1(88)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 28
            
            command(0) = &H59
            
            MSComm1.Output = command                                            '第29个瓶做校准1(89)
            
            command(0) = &H59
            
            MSComm1.Output = command                                            '第29个瓶做校准1(89)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 29
            
            command(0) = &H5A
            
            MSComm1.Output = command                                            '第30个瓶做校准1(90)
            
            command(0) = &H5A
            
            MSComm1.Output = command                                            '第30个瓶做校准1(90)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 30
            
            command(0) = &H5B
            
            MSComm1.Output = command                                            '第31个瓶做校准1(91)
            
            command(0) = &H5B
            
            MSComm1.Output = command                                            '第31个瓶做校准1(91)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 31
            
            command(0) = &H5C
            
            MSComm1.Output = command                                            '第32个瓶做校准1(92)
            
            command(0) = &H5C
            
            MSComm1.Output = command                                            '第32个瓶做校准1(92)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 32
            
            command(0) = &H5D
            
            MSComm1.Output = command                                            '第33个瓶做校准1(93)
            
            command(0) = &H5D
            
            MSComm1.Output = command                                            '第33个瓶做校准1(93)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 33
            
            command(0) = &H5E
            
            MSComm1.Output = command                                            '第34个瓶做校准1(94)
            
            command(0) = &H5E
            
            MSComm1.Output = command                                            '第34个瓶做校准1(94)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 34
            
            command(0) = &H5F
            
            MSComm1.Output = command                                            '第35个瓶做校准1(95)
            
            command(0) = &H5F
            
            MSComm1.Output = command                                            '第35个瓶做校准1(95)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 35
            
            command(0) = &H60
            
            MSComm1.Output = command                                            '第36个瓶做校准1(96)
            
            command(0) = &H60
            
            MSComm1.Output = command                                            '第36个瓶做校准1(96)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 36
            
            command(0) = &H61
            
            MSComm1.Output = command                                            '第37个瓶做校准1(97)
            
            command(0) = &H61
            
            MSComm1.Output = command                                            '第37个瓶做校准1(97)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 37
            
            command(0) = &H62
            
            MSComm1.Output = command                                            '第38个瓶做校准1(98)
            
            command(0) = &H62
            
            MSComm1.Output = command                                            '第38个瓶做校准1(98)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 38
            
            command(0) = &H63
            
            MSComm1.Output = command                                            '第39个瓶做校准1(99)
            
            command(0) = &H63
            
            MSComm1.Output = command                                            '第39个瓶做校准1(99)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 39
            
            command(0) = &H64
            
            MSComm1.Output = command                                            '第40个瓶做校准1(100)
            
            command(0) = &H64
            
            MSComm1.Output = command                                            '第40个瓶做校准1(100)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 40
            
            command(0) = &H65
            
            MSComm1.Output = command                                            '第41个瓶做校准1(101)
            
            command(0) = &H65
            
            MSComm1.Output = command                                            '第41个瓶做校准1(101)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 41
            
            command(0) = &H66
            
            MSComm1.Output = command                                            '第42个瓶做校准1(102)
            
            command(0) = &H66
            
            MSComm1.Output = command                                            '第42个瓶做校准1(102)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 42
            
            command(0) = &H67
            
            MSComm1.Output = command                                            '第43个瓶做校准1(103)
            
            command(0) = &H67
            
            MSComm1.Output = command                                            '第43个瓶做校准1(103)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 43
            
            command(0) = &H68
            
            MSComm1.Output = command                                            '第44个瓶做校准1(104)
            
            command(0) = &H68
            
            MSComm1.Output = command                                            '第44个瓶做校准1(104)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 44
            
            command(0) = &H69
            
            MSComm1.Output = command                                            '第45个瓶做校准1(105)
            
            command(0) = &H69
            
            MSComm1.Output = command                                            '第45个瓶做校准1(105)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 45
            
            command(0) = &H6A
            
            MSComm1.Output = command                                            '第46个瓶做校准1(106)
            
            command(0) = &H6A
            
            MSComm1.Output = command                                            '第46个瓶做校准1(106)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 46
            
            command(0) = &H6B
            
            MSComm1.Output = command                                            '第47个瓶做校准1(107)
            
            command(0) = &H6B
            
            MSComm1.Output = command                                            '第47个瓶做校准1(107)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 47
            
            command(0) = &H6C
            
            MSComm1.Output = command                                            '第48个瓶做校准1(108)
            
            command(0) = &H6C
            
            MSComm1.Output = command                                            '第48个瓶做校准1(108)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 48
            
            command(0) = &H6D
            
            MSComm1.Output = command                                            '第49个瓶做校准1(109)
            
            command(0) = &H6D
            
            MSComm1.Output = command                                            '第49个瓶做校准1(109)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 49
            
            command(0) = &H6E
            
            MSComm1.Output = command                                            '第50个瓶做校准1(110)
            
            command(0) = &H6E
            
            MSComm1.Output = command                                            '第50个瓶做校准1(110)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 50
            
            command(0) = &H6F
            
            MSComm1.Output = command                                            '第51个瓶做校准1(111)
            
            command(0) = &H6F
            
            MSComm1.Output = command                                            '第51个瓶做校准1(111)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 51
            
            command(0) = &H70
            
            MSComm1.Output = command                                            '第52个瓶做校准1(112)
            
            command(0) = &H70
            
            MSComm1.Output = command                                            '第52个瓶做校准1(112)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 52
            
            command(0) = &H71
            
            MSComm1.Output = command                                            '第53个瓶做校准1(113)
            
            command(0) = &H71
            
            MSComm1.Output = command                                            '第53个瓶做校准1(113)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 53
            
            command(0) = &H72
            
            MSComm1.Output = command                                            '第54个瓶做校准1(114)
            
            command(0) = &H72
            
            MSComm1.Output = command                                            '第54个瓶做校准1(114)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 54
            
            command(0) = &H73
            
            MSComm1.Output = command                                            '第55个瓶做校准1(115)
            
            command(0) = &H73
            
            MSComm1.Output = command                                            '第55个瓶做校准1(115)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 55
            
            command(0) = &H74
            
            MSComm1.Output = command                                            '第56个瓶做校准1(116)
            
            command(0) = &H74
            
            MSComm1.Output = command                                            '第56个瓶做校准1(116)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 56
            
            command(0) = &H75
            
            MSComm1.Output = command                                            '第57个瓶做校准1(117)
            
            command(0) = &H75
            
            MSComm1.Output = command                                            '第57个瓶做校准1(117)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 57
            
            command(0) = &H76
            
            MSComm1.Output = command                                            '第58个瓶做校准1(118)
            
            command(0) = &H76
            
            MSComm1.Output = command                                            '第58个瓶做校准1(118)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 58
            
            command(0) = &H77
            
            MSComm1.Output = command                                            '第59个瓶做校准1(119)
            
            command(0) = &H77
            
            MSComm1.Output = command                                            '第59个瓶做校准1(119)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 59
            
            command(0) = &H78
            
            MSComm1.Output = command                                            '第60个瓶做校准1(120)
            
            command(0) = &H78
            
            MSComm1.Output = command                                            '第60个瓶做校准1(120)
            
            command(0) = &HFF                                                   '清空命令
            
        End Select
        
    End If
    
    Form9.Show                                                                  '等待接收数据提示界面
    
End Sub

Private Sub Command9_Click()                                                    '校准2发送命令
    
    Dim k As Integer                                                            'k在此作为循环变量
    
    If Text2.Text = "" Then                                                     '没有输入孔位
        
        answer = MsgBox("提示：没有输入孔位!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入孔位
            
            Text2.Enabled = True
            
            Exit Sub
            
        End If
        
    End If
    
    If Val(Text2.Text) < 1 Or Val(Text2.Text) > 60 Then
        
        answer = MsgBox("提示：请输入1-60之间的整数!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入孔位
            
            Text2.Text = ""                                                     '文本清空
            
            Text2.Enabled = True
            
            Exit Sub
            
        End If
        
    Else
        
        Form2.Enabled = False                                                   '工作界面禁用
        
        adjust1_flag = 0                                                        '接收上传的校准1数据标志位无效
        
        adjust2_flag = 1                                                        '接收上传的校准2数据标志位有效
        
        ''''''''''''''''''''''''''''''读校准2的数据''''''''''''''''''''''''''''''''''''''''''
        k = 0
        
        Open App.Path & "\sys\adjust2.txt" For Input As #6                      '在文件中读取
        
        Do While Not EOF(6)                                                     'EOF为文尾测试函数
            
            Line Input #6, textline
            
            read2(k) = Mid(textline, 5, 12)
            
            k = k + 1                                                           '循环
            
        Loop
        
        Close #6
        
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        s2 = Val(Text2.Text) - 1                                                '做第s2个孔位的校准
        
        Select Case s2
            
        Case 0
            
            command(0) = &H3D
            
            MSComm1.Output = command                                            '第1个瓶做校准1(61)
            
            command(0) = &H3D
            
            MSComm1.Output = command                                            '第1个瓶做校准1(61)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 1
            
            command(0) = &H3E
            
            MSComm1.Output = command                                            '第2个瓶做校准1(62)
            
            command(0) = &H3E
            
            MSComm1.Output = command                                            '第2个瓶做校准1(62)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 2
            
            command(0) = &H3F
            
            MSComm1.Output = command                                            '第3个瓶做校准1(63)
            
            command(0) = &H3F
            
            MSComm1.Output = command                                            '第3个瓶做校准1(63)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 3
            
            command(0) = &H40
            
            MSComm1.Output = command                                            '第4个瓶做校准1(64)
            
            command(0) = &H40
            
            MSComm1.Output = command                                            '第4个瓶做校准1(64)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 4
            
            command(0) = &H41
            
            MSComm1.Output = command                                            '第5个瓶做校准1(64)
            
            command(0) = &H41
            
            MSComm1.Output = command                                            '第5个瓶做校准1(65)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 5
            
            command(0) = &H42
            
            MSComm1.Output = command                                            '第6个瓶做校准1(66)
            
            command(0) = &H42
            
            MSComm1.Output = command                                            '第6个瓶做校准1(66)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 6
            
            command(0) = &H43
            
            MSComm1.Output = command                                            '第7个瓶做校准1(67)
            
            command(0) = &H43
            
            MSComm1.Output = command                                            '第7个瓶做校准1(67)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 7
            
            command(0) = &H44
            
            MSComm1.Output = command                                            '第8个瓶做校准1(68)
            
            command(0) = &H44
            
            MSComm1.Output = command                                            '第8个瓶做校准1(68)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 8
            
            command(0) = &H45
            
            MSComm1.Output = command                                            '第9个瓶做校准1(69)
            
            command(0) = &H45
            
            MSComm1.Output = command                                            '第9个瓶做校准1(69)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 9
            
            command(0) = &H46
            
            MSComm1.Output = command                                            '第10个瓶做校准1(70)
            
            command(0) = &H46
            
            MSComm1.Output = command                                            '第10个瓶做校准1(70)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 10
            
            command(0) = &H47
            
            MSComm1.Output = command                                            '第11个瓶做校准1(71)
            
            command(0) = &H47
            
            MSComm1.Output = command                                            '第11个瓶做校准1(71)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 11
            
            command(0) = &H48
            
            MSComm1.Output = command                                            '第12个瓶做校准1(72)
            
            command(0) = &H48
            
            MSComm1.Output = command                                            '第12个瓶做校准1(72)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 12
            
            command(0) = &H49
            
            MSComm1.Output = command                                            '第13个瓶做校准1(73)
            
            command(0) = &H49
            
            MSComm1.Output = command                                            '第13个瓶做校准1(73)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 13
            
            command(0) = &H4A
            
            MSComm1.Output = command                                            '第14个瓶做校准1(74)
            
            command(0) = &H4A
            
            MSComm1.Output = command                                            '第14个瓶做校准1(74)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 14
            
            command(0) = &H4B
            
            MSComm1.Output = command                                            '第15个瓶做校准1(75)
            
            command(0) = &H4B
            
            MSComm1.Output = command                                            '第15个瓶做校准1(75)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 15
            
            command(0) = &H4C
            
            MSComm1.Output = command                                            '第16个瓶做校准1(76)
            
            command(0) = &H4C
            
            MSComm1.Output = command                                            '第16个瓶做校准1(76)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 16
            
            command(0) = &H4D
            
            MSComm1.Output = command                                            '第17个瓶做校准1(77)
            
            command(0) = &H4D
            
            MSComm1.Output = command                                            '第17个瓶做校准1(77)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 17
            
            command(0) = &H4E
            
            MSComm1.Output = command                                            '第18个瓶做校准1(78)
            
            command(0) = &H4E
            
            MSComm1.Output = command                                            '第18个瓶做校准1(78)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 18
            
            command(0) = &H4F
            
            MSComm1.Output = command                                            '第19个瓶做校准1(79)
            
            command(0) = &H4F
            
            MSComm1.Output = command                                            '第19个瓶做校准1(79)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 19
            
            command(0) = &H50
            
            MSComm1.Output = command                                            '第20个瓶做校准1(80)
            
            command(0) = &H50
            
            MSComm1.Output = command                                            '第20个瓶做校准1(80)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 20
            
            command(0) = &H51
            
            MSComm1.Output = command                                            '第21个瓶做校准1(81)
            
            command(0) = &H51
            
            MSComm1.Output = command                                            '第21个瓶做校准1(81)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 21
            
            command(0) = &H52
            
            MSComm1.Output = command                                            '第22个瓶做校准1(82)
            
            command(0) = &H52
            
            MSComm1.Output = command                                            '第22个瓶做校准1(82)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 22
            
            command(0) = &H53
            
            MSComm1.Output = command                                            '第23个瓶做校准1(83)
            
            command(0) = &H53
            
            MSComm1.Output = command                                            '第23个瓶做校准1(83)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 23
            
            command(0) = &H54
            
            MSComm1.Output = command                                            '第24个瓶做校准2(84)
            
            command(0) = &H54
            
            MSComm1.Output = command                                            '第24个瓶做校准2(84)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 24
            
            command(0) = &H55
            
            MSComm1.Output = command                                            '第25个瓶做校准1(85)
            
            command(0) = &H55
            
            MSComm1.Output = command                                            '第25个瓶做校准1(85)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 25
            
            command(0) = &H56
            
            MSComm1.Output = command                                            '第26个瓶做校准1(86)
            
            command(0) = &H56
            
            MSComm1.Output = command                                            '第26个瓶做校准1(86)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 26
            
            command(0) = &H57
            
            MSComm1.Output = command                                            '第27个瓶做校准1(87)
            
            command(0) = &H57
            
            MSComm1.Output = command                                            '第27个瓶做校准1(87)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 27
            
            command(0) = &H58
            
            MSComm1.Output = command                                            '第28个瓶做校准1(88)
            
            command(0) = &H58
            
            MSComm1.Output = command                                            '第28个瓶做校准1(88)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 28
            
            command(0) = &H59
            
            MSComm1.Output = command                                            '第29个瓶做校准1(89)
            
            command(0) = &H59
            
            MSComm1.Output = command                                            '第29个瓶做校准1(89)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 29
            
            command(0) = &H5A
            
            MSComm1.Output = command                                            '第30个瓶做校准1(90)
            
            command(0) = &H5A
            
            MSComm1.Output = command                                            '第30个瓶做校准1(90)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 30
            
            command(0) = &H5B
            
            MSComm1.Output = command                                            '第31个瓶做校准1(91)
            
            command(0) = &H5B
            
            MSComm1.Output = command                                            '第31个瓶做校准1(91)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 31
            
            command(0) = &H5C
            
            MSComm1.Output = command                                            '第32个瓶做校准1(92)
            
            command(0) = &H5C
            
            MSComm1.Output = command                                            '第32个瓶做校准1(92)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 32
            
            command(0) = &H5D
            
            MSComm1.Output = command                                            '第33个瓶做校准1(93)
            
            command(0) = &H5D
            
            MSComm1.Output = command                                            '第33个瓶做校准1(93)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 33
            
            command(0) = &H5E
            
            MSComm1.Output = command                                            '第34个瓶做校准1(94)
            
            command(0) = &H5E
            
            MSComm1.Output = command                                            '第34个瓶做校准1(94)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 34
            
            command(0) = &H5F
            
            MSComm1.Output = command                                            '第35个瓶做校准1(95)
            
            command(0) = &H5F
            
            MSComm1.Output = command                                            '第35个瓶做校准1(95)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 35
            
            command(0) = &H60
            
            MSComm1.Output = command                                            '第36个瓶做校准1(96)
            
            command(0) = &H60
            
            MSComm1.Output = command                                            '第36个瓶做校准1(96)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 36
            
            command(0) = &H61
            
            MSComm1.Output = command                                            '第37个瓶做校准1(97)
            
            command(0) = &H61
            
            MSComm1.Output = command                                            '第37个瓶做校准1(97)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 37
            
            command(0) = &H62
            
            MSComm1.Output = command                                            '第38个瓶做校准1(98)
            
            command(0) = &H62
            
            MSComm1.Output = command                                            '第38个瓶做校准1(98)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 38
            
            command(0) = &H63
            
            MSComm1.Output = command                                            '第39个瓶做校准1(99)
            
            command(0) = &H63
            
            MSComm1.Output = command                                            '第39个瓶做校准1(99)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 39
            
            command(0) = &H64
            
            MSComm1.Output = command                                            '第40个瓶做校准1(100)
            
            command(0) = &H64
            
            MSComm1.Output = command                                            '第40个瓶做校准1(100)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 40
            
            command(0) = &H65
            
            MSComm1.Output = command                                            '第41个瓶做校准1(101)
            
            command(0) = &H65
            
            MSComm1.Output = command                                            '第41个瓶做校准1(101)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 41
            
            command(0) = &H66
            
            MSComm1.Output = command                                            '第42个瓶做校准1(102)
            
            command(0) = &H66
            
            MSComm1.Output = command                                            '第42个瓶做校准1(102)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 42
            
            command(0) = &H67
            
            MSComm1.Output = command                                            '第43个瓶做校准1(103)
            
            command(0) = &H67
            
            MSComm1.Output = command                                            '第43个瓶做校准1(103)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 43
            
            command(0) = &H68
            
            MSComm1.Output = command                                            '第44个瓶做校准1(104)
            
            command(0) = &H68
            
            MSComm1.Output = command                                            '第44个瓶做校准1(104)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 44
            
            command(0) = &H69
            
            MSComm1.Output = command                                            '第45个瓶做校准1(105)
            
            command(0) = &H69
            
            MSComm1.Output = command                                            '第45个瓶做校准1(105)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 45
            
            command(0) = &H6A
            
            MSComm1.Output = command                                            '第46个瓶做校准1(106)
            
            command(0) = &H6A
            
            MSComm1.Output = command                                            '第46个瓶做校准1(106)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 46
            
            command(0) = &H6B
            
            MSComm1.Output = command                                            '第47个瓶做校准1(107)
            
            command(0) = &H6B
            
            MSComm1.Output = command                                            '第47个瓶做校准1(107)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 47
            
            command(0) = &H6C
            
            MSComm1.Output = command                                            '第48个瓶做校准1(108)
            
            command(0) = &H6C
            
            MSComm1.Output = command                                            '第48个瓶做校准1(108)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 48
            
            command(0) = &H6D
            
            MSComm1.Output = command                                            '第49个瓶做校准1(109)
            
            command(0) = &H6D
            
            MSComm1.Output = command                                            '第49个瓶做校准1(109)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 49
            
            command(0) = &H6E
            
            MSComm1.Output = command                                            '第50个瓶做校准1(110)
            
            command(0) = &H6E
            
            MSComm1.Output = command                                            '第50个瓶做校准1(110)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 50
            
            command(0) = &H6F
            
            MSComm1.Output = command                                            '第51个瓶做校准1(111)
            
            command(0) = &H6F
            
            MSComm1.Output = command                                            '第51个瓶做校准1(111)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 51
            
            command(0) = &H70
            
            MSComm1.Output = command                                            '第52个瓶做校准1(112)
            
            command(0) = &H70
            
            MSComm1.Output = command                                            '第52个瓶做校准1(112)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 52
            
            command(0) = &H71
            
            MSComm1.Output = command                                            '第53个瓶做校准1(112)
            
            command(0) = &H71
            
            MSComm1.Output = command                                            '第53个瓶做校准1(113)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 53
            
            command(0) = &H72
            
            MSComm1.Output = command                                            '第54个瓶做校准1(114)
            
            command(0) = &H72
            
            MSComm1.Output = command                                            '第54个瓶做校准1(114)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 54
            
            command(0) = &H73
            
            MSComm1.Output = command                                            '第55个瓶做校准1(115)
            
            command(0) = &H73
            
            MSComm1.Output = command                                            '第55个瓶做校准1(115)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 55
            
            command(0) = &H74
            
            MSComm1.Output = command                                            '第56个瓶做校准1(116)
            
            command(0) = &H74
            
            MSComm1.Output = command                                            '第56个瓶做校准1(116)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 56
            
            command(0) = &H75
            
            MSComm1.Output = command                                            '第57个瓶做校准1(117)
            
            command(0) = &H75
            
            MSComm1.Output = command                                            '第57个瓶做校准1(117)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 57
            
            command(0) = &H76
            
            MSComm1.Output = command                                            '第58个瓶做校准1(118)
            
            command(0) = &H76
            
            MSComm1.Output = command                                            '第58个瓶做校准1(118)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 58
            
            command(0) = &H77
            
            MSComm1.Output = command                                            '第59个瓶做校准1(119)
            
            command(0) = &H77
            
            MSComm1.Output = command                                            '第59个瓶做校准1(119)
            
            command(0) = &HFF                                                   '清空命令
            
        Case 59
            
            command(0) = &H78
            
            MSComm1.Output = command                                            '第60个瓶做校准1(120)
            
            command(0) = &H78
            
            MSComm1.Output = command                                            '第60个瓶做校准1(120)
            
            command(0) = &HFF                                                   '清空命令
            
        End Select
        
    End If
    
    Form9.Show                                                                  '等待接收数据提示界面
    
End Sub

Private Sub Command10_Click()                                                   '调出历史数据
    
    On Error GoTo err2
    
    Dim fs As New FileSystemObject                                              '建立文件系统对象
    
    Dim R3 As New Collection                                                    '定义集合变量
    
    Dim r As Integer
    
    Dim m As Integer
    
    State_Flag = 0                                                              '培养状态标志位清零
    
    With CommonDialog1
        
        .FileName = ""                                                          '把上次保留的文件名清空
        
        .CancelError = False                                                    '点击取消时，不反映错误
        
        .InitDir = App.Path & "\data"                                           '打开当前data文件夹
        
        .DialogTitle = "请选择数据"
        
        .Filter = "*.txt|*.TXT"                                                 '文件类型
        
        .ShowOpen                                                               '打开文件
        
    End With
    
    Dim strLine As String
    
    Set fs = CreateObject("Scripting.FileSystemObject")                         '创建SFO对象
    
    Set f = fs.OpenTextFile(CommonDialog1.FileName, ForReading, True)           '读对象数据
    
    strLine = f.ReadLine
    
    If (strLine <> "Revision 2017") Then
        SkinLabel26.Caption = strLine                                           '读条形码
    Else
        SkinLabel82.Caption = f.ReadLine                                        '瓶孔号跳过
        SkinLabel26.Caption = f.ReadLine                                        '读条形码
        SkinLabel80.Caption = f.ReadLine                                        'ID
    End If
    SkinLabel28.Caption = f.ReadLine                                            '读姓名
    SkinLabel30.Caption = Mid(f.ReadLine, 1, 1)                                 '读性别
    SkinLabel32.Caption = f.ReadLine                                            '读年龄
    SkinLabel34.Caption = Mid(f.ReadLine, 1, 10)                                '读科室
    SkinLabel36.Caption = Mid(f.ReadLine, 1, 8)                                 '读培养瓶
    SkinLabel38.Caption = Mid(f.ReadLine, 1, 2)                                 '读培养时间
    SkinLabel40.Caption = Mid(f.ReadLine, 1, 19)                                '读测量时间
    
    Form2.Enabled = False                                                       '工作界面禁用
    
    barcode_name = SkinLabel26.Caption
    
    cul_time = Val(SkinLabel38.Caption)
    
    time_start = Mid(SkinLabel40, 6, 5)
    
    If cul_time = 1 Then
        
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
    
    r = 0                                                                       '开始读入病人各项信息
    
    Dim bNewRevision As Boolean
    
    Open App.Path & "\sys\sys.txt" For Input As #2                              '在文件中读取
    
    Line Input #2, textline
    
    If textline = "Revision 2017" Then
        
        bNewRevision = True
        
    Else
        
        bNewRevision = False
        
    End If
    
    Do While Not EOF(2)
        
        If r <> 0 Or bNewRevision Then
            Line Input #2, textline                                             '将读入的1行存到变量TextLine中
        End If
        SkinLabel2(r).Caption = textline                                        '读条形码
        
        Line Input #2, textline                                                 '跳过不读
        
        If bNewRevision Then
            Line Input #2, textline
        End If
        
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        
        Line Input #2, textline
        'SkinLabel11(r).Caption = textline '培养时间,跳过不读
        
        Line Input #2, textline
        'SkinLabel9(r).Caption = Mid(textline, 8, 11) '时间:月日+时分,跳过不读
        
        Line Input #2, textline
        SkinLabel10(r).Caption = textline                                       '读培养状态
        
        r = r + 1                                                               '循环
        
    Loop
    
    Close #2
    
    AllStatesStatistic
    
    Do While f.AtEndOfLine = False
        
        R3.Add Int(Mid(f.ReadLine, 1, 4))                                       '读数据
        
    Loop
    
    f.Close
    
    If Dir(App.Path & "\result\" & SkinLabel26.Caption & ".dat", vbDirectory) <> "" Then '已完成测量
        
        Open App.Path & "\result\" & SkinLabel26.Caption & ".dat" For Input As #1 '在result文件中读取测量结果
        
        Line Input #1, textline                                                 '将读入的1行存到变量TextLine中
        
        SkinLabel46.Caption = textline                                          '读测量结果
        
        Line Input #1, textline                                                 '将读入的1行存到变量TextLine中
        
        n = Val(textline)
        
        Close #1
        
    Else                                                                        '在培养中
        
        For m = 0 To 59
            
            If SkinLabel2(m).Caption = SkinLabel26.Caption Then
                
                State_Flag = SkinLabel10(m).Caption                             '培养状态标志位赋值
                
                n = m
                
                Exit For
                
            End If
            
        Next m                                                                  '循环
        
        If State_Flag = 1 Or State_Flag = 3 Then
            
            SkinLabel46.Caption = "阴性"
            
        ElseIf State_Flag = 2 Or State_Flag = 4 Then
            
            SkinLabel46.Caption = "阳性"
            
        End If
        
    End If
    
    '''''''''''''''''''''''''''''''以下显示打印内容''''''''''''''''''''''''''''''''''''''
    RichTextBox2.Text = "安医第一附属医院" & (Chr(13) & Chr(10)) & "条形码：" & SkinLabel26.Caption & (Chr(13) & Chr(10)) _
    & "姓名：" & SkinLabel28.Caption & (Chr(13) & Chr(10)) & "ID：" & SkinLabel28.Caption & (Chr(13) & Chr(10)) _
    & "性别：" & SkinLabel30.Caption & (Chr(13) & Chr(10)) _
    & "年龄：" & SkinLabel32.Caption & (Chr(13) & Chr(10)) & "科室：" & SkinLabel34.Caption & (Chr(13) & Chr(10)) _
    & "培养瓶：" & SkinLabel36.Caption & (Chr(13) & Chr(10)) & "培养时间：" & SkinLabel38.Caption & (Chr(13) & Chr(10)) _
    & "测量时间:" & SkinLabel40.Caption & (Chr(13) & Chr(10)) & "测量结果:" & SkinLabel46.Caption _
    & (Chr(13) & Chr(10)) & "打印时间:" & Format(Now, "yyyy-mm-dd hh:mm")
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    Call SystemGraph1.DrawGraph(R3)
    
    Form2.Enabled = True                                                        '工作界面可用
    
    Command11.Enabled = True                                                    '打印按钮可用
    
    Exit Sub
    
err2:
    
    Exit Sub
    
End Sub

Private Sub Command11_Click()
    
    Dim word As Object
    
    If Dir(App.Path & "\print\", vbDirectory) = "" Then
        
        MkDir App.Path & "\print\"                                              '建立关于打印文件夹
        
    End If
    
    Open App.Path & "\print\" & SkinLabel26.Caption & ".doc" For Output As #11  '打印内容
    
    Print #11, "条形码：" & SkinLabel26.Caption
    
    Print #11, "姓名：" & SkinLabel28.Caption
    
    Print #11, "性别：" & SkinLabel30.Caption
    
    Print #11, "年龄：" & SkinLabel32.Caption
    
    Print #11, "科室：" & SkinLabel34.Caption
    
    Print #11, "培养瓶：" & SkinLabel36.Caption
    
    Print #11, "培养时间：" & SkinLabel38.Caption
    
    Print #11, "测量时间：" & SkinLabel40.Caption
    
    Print #11, "测量结果：" & SkinLabel46.Caption
    
    Close #11
    
    Set word = CreateObject("Word.Application")
    
    Set a = word.Documents.Open(App.Path & "\print\" & SkinLabel26.Caption & ".doc")
    
    word.Visible = True
    
End Sub

Private Sub Command12_Click()                                                   '调出统计资料
    
    Form2.Enabled = False                                                       '工作界面禁用
    
    Form12.Show                                                                 '进入统计界面
    
End Sub

Private Sub Command13_Click()                                                   '打印统计资料
    
    Dim word As Object
    
    Set word = CreateObject("Word.Application")
    
    Set a = word.Documents.Open(App.Path & "\statistics\" & file1 & "-" & file2 & "\" & "统计情况" & ".txt")
    
    word.Visible = True
    
End Sub

Private Sub Command14_Click()                                                   '删除文件命令按钮
    
    If Text12.Text = "" Then                                                    '没有输入条形码
        
        answer = MsgBox("提示：没有输入条形码!", 48, "信息提示")
        
        If answer = 1 Then                                                      '确认
            
            Text12.Enabled = True
            
            Exit Sub
            
        End If
        
    End If
    
    If Dir(App.Path & "\data\" & Text12.Text & ".txt", vbDirectory) = "" Then   '该文件夹不存在
        
        answer = MsgBox("提示：该文件夹不存在!", 48, "信息提示")
        
        If answer = 1 Then                                                      '确认
            
            Text12.Text = ""
            
            Exit Sub
            
        End If
        
    End If
    
    If Dir(App.Path & "\result\" & Text12.Text & ".dat", vbDirectory) = "" Then '该条形码正在培养中
        
        answer = MsgBox("提示：该条形码正在培养中!", 48, "信息提示")
        
        If answer = 1 Then
            
            Text12.Text = ""
            
            Exit Sub
            
        End If
        
    Else                                                                        '删除条形码
        
        answer = MsgBox("提示：是否确定删除该文件!", 49, "信息提示")
        
        If answer = 1 Then                                                      '确认删除
            
            Kill App.Path & "\result\" & Text12.Text & ".dat"                   '删除文件
            
            Kill App.Path & "\data\" & Text12.Text & ".txt"
            
            answer = MsgBox("提示：该文件夹已删除!", 48, "信息提示")
            
            If answer = 1 Then                                                  '确认
                
                Text12.Text = ""
                
                Exit Sub
                
            End If
            
        ElseIf answer = 2 Then                                                  '取消删除
            
            Text12.Text = ""
            
            Exit Sub
            
        End If
        
    End If
    
End Sub

Private Sub Command15_Click()                                                   '校准1,2希望的值设置
    
    If Text7.Text = "" Then                                                     '校准1希望的值为空
        
        answer = MsgBox("提示：没有输入校准1希望的值!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入校准1希望的值
            
            Text7.Enabled = True
            
            Exit Sub
            
        End If
        
    ElseIf Text8.Text = "" Then                                                 '校准2希望的值为空
        
        answer = MsgBox("提示：没有输入校准2希望的值!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新校准2希望的值
            
            Text8.Enabled = True
            
            Exit Sub
            
        End If
        
    Else
        
        If (Val(Text7.Text) - Val(Text8.Text) <= 0) Then                        '设置希望值有错
            
            answer = MsgBox("提示：设置希望值有错，请重新设置!", 48, "信息提示")
            
            If answer = 1 Then                                                  '重新校准1,2希望的值
                
                Text7.Text = ""
                
                Text8.Text = ""
                
                Text7.Enabled = True
                
                Text8.Enabled = True
                
                Exit Sub
                
            End If
            
        Else
            
            SkinLabel48.Caption = Text7.Text                                    '显示
            
            SkinLabel52.Caption = Text8.Text                                    '显示
            
            Open App.Path & "\sys\hope1.txt" For Output As #7                   '保存校准1希望的值
            
            Print #7, Format(Text7.Text, "0000")
            
            Close #7
            
            Open App.Path & "\sys\hope2.txt" For Output As #8                   '保存校准2希望的值
            
            Print #8, Format(Text8.Text, "0000")
            
            Close #8
            
        End If
        
    End If
    
End Sub

Private Sub Command16_Click()                                                   '设置阈值并保存
    
    If Text11.Text = "" Then                                                    '阈值上限值为空
        
        answer = MsgBox("提示：没有设置上限值，请设置!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新设置上限值
            
            Text11.Enabled = True
            
            Exit Sub
            
        End If
        
    ElseIf Text13.Text = "" Then                                                '阈值下限值为空
        
        answer = MsgBox("提示：没有设置下限值，请设置!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新设置下限值
            
            Text13.Enabled = True
            
            Exit Sub
            
        End If
        
    Else
        
        If (Val(Text11.Text) - Val(Text13.Text) <= 0) Then                      '设置阈值有错
            
            answer = MsgBox("提示：设置阈值有错，请重新设置!", 48, "信息提示")
            
            If answer = 1 Then                                                  '重新设置阈值
                
                Text11.Text = ""
                
                Text13.Text = ""
                
                Text11.Enabled = True
                
                Text13.Enabled = True
                
                Exit Sub
                
            End If
            
        Else
            
            SkinLabel54.Caption = Text11.Text                                   '显示
            
            SkinLabel65.Caption = Text13.Text                                   '显示
            
            yuzhiup = Val(SkinLabel54.Caption)                                  '阈值上限值
            
            yuzhidown = Val(SkinLabel65.Caption)                                '阈值下限值
            
            Open App.Path & "\sys\threshold.txt" For Output As #9               '保存阈值
            
            Print #9, Format(Text11.Text, "0000")
            
            Print #9, Format(Text13.Text, "0000")
            
            Close #9
            
        End If
        
    End If
    
End Sub

Private Sub Command17_Click()                                                   '删除下位机数据
    
    answer = MsgBox("提示：确定培养仪复位!", 33, "信息提示")
    
    If answer = 1 Then                                                          '删除
        
        command(0) = &H85
        
        MSComm1.Output = command                                                '删除命令(133)
        
        command(0) = &HFF                                                       '清空命令
        
        Form2.Enabled = False                                                   '工作界面禁用
        
        Timer1.Enabled = True
        
        Timer2.Enabled = False
        
        Form10.Show                                                             '删除数据提示界面
        
        Exit Sub
        
    Else
        
        Exit Sub                                                                '不删除
        
    End If
    
End Sub

Private Sub Command18_Click()                                                   '主界面中的停止测量按钮
    
    On Error GoTo err3
    
    With CommonDialog1
        
        .FileName = ""                                                          '把上次保留的文件名清空
        
        .CancelError = True                                                     '点击取消时，不反映错误
        
        .InitDir = App.Path & "\music"                                          '打开当前data文件夹
        
        .DialogTitle = "请选择音频文件"
        
        .Filter = "音频文件 *.wma,*.mp3|*.WMA;*.MP3|所有文件 (*.*)|*.*"         '文件类型
        
        .ShowOpen                                                               '打开文件
        
    End With
    
    warning = CommonDialog1.FileName
    
    Open App.Path & "\sys\warning.txt" For Output As #13
    
    Print #13, warning                                                          '显示设置的培养时间
    
    Close #13
    
err3:
    
    Exit Sub
    
    
End Sub


Private Sub Command20_Click()                                                   '设置默认的培养时间
    
    If Text14.Text = "" Then                                                    '培养时间为空
        
        answer = MsgBox("提示：没有输入参数，请设置!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新设置培养时间
            
            Text14.Enabled = True
            
            Exit Sub
            
        End If
        
    ElseIf (Val(Text14.Text) < 1 Or Val(Text14.Text) > 30) Then                 '设置的培养时间范围为1-30
        
        answer = MsgBox("提示：请输入1-30范围内的数值!", 48, "信息提示")
        
        If answer = 1 Then                                                      '重新输入培养时间
            
            Text14.Text = ""
            
            Text14.Enabled = True
            
            Exit Sub
            
        End If
        
    Else
        
        Open App.Path & "\sys\settime.txt" For Output As #11                    '保存设置的培养时间
        
        Print #11, Text14.Text
        
        Close #11
        
        SkinLabel69.Caption = Text14.Text                                       '显示培养时间
        
    End If
    
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)                                 '校准1只能输入数字和使用空格
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub

Private Sub Text2_KeyPress(KeyAscii As Integer)                                 '校准2只能输入数字和使用空格
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub

Private Sub Text7_KeyPress(KeyAscii As Integer)                                 '希望值1只能输入数字和使用空格
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub

Private Sub Text8_KeyPress(KeyAscii As Integer)                                 '希望值2只能输入数字和使用空格
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub

Private Sub Text11_KeyPress(KeyAscii As Integer)                                '阈值上限值只能输入数字和使用空格
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub

Private Sub Text13_KeyPress(KeyAscii As Integer)                                '阈值下限值只能输入数字和使用空格
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub

Private Sub Text14_KeyPress(KeyAscii As Integer)                                '默认的培养时间只能输入数字和使用空格
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub

Private Sub MSComm1_OnComm()                                                    '串口事件
    
    getLock
    
    Dim a() As Byte                                                             '存放从下位机接收到的数据
    
    Dim strData As String                                                       '作为中间变量处理
    
    Dim l As Integer                                                            '字节长度
    
    Dim t As Integer                                                            '循环变量
    
    Dim m As Integer                                                            '循环变量
    
    Dim e As Integer                                                            '循环变量
    
    Dim b As Integer                                                            '循环变量
    
    Dim c As Integer                                                            '循环变量
    
    Dim d As Integer                                                            '循环变量
    
    Dim j As Long                                                               '循环变量
    
    Dim q As Integer                                                            '循环变量
    
    Dim x As Integer                                                            '作为计算量
    
    Dim x1 As Integer                                                           '作为计算量
    
    Dim x2 As Integer                                                           '作为计算量
    
    Dim y As Integer                                                            '作为计算量
    
    Dim yy As Long                                                              '作为计算量，2011-09-15日增加
    
    Dim y1 As Integer                                                           '作为计算量
    
    Dim y2 As Integer                                                           '作为计算量
    
    Dim media As Integer
    
    Dim R1(0 To 59) As New Collection                                           '集合变量组
    
    Dim R2(0 To 59) As New Collection                                           '集合变量组
    
    On Error Resume Next
    
    ''''''''''''''''''''''''''''''''''''串口中断事件'''''''''''''''''''''''''''''''''''''
    Select Case MSComm1.CommEvent                                               '检验串口事件
        
    Case comEventOverrun                                                        '接收缓冲区溢出
        
        Text4.Text = ""                                                         '清空接收文本
        
        releaseLock
        
        Exit Sub
        
    Case comEvReceive                                                           '接收缓冲区有数据
        
        a() = MSComm1.Input                                                     '接收数据至数组中
        
        For l = 0 To UBound(a)                                                  '结果以十六进制显示
            
            If Len(Hex(a(l))) = 1 Then
                
                strData = strData & "0" & Hex(a(l))
                
            Else
                
                strData = strData & Hex(a(l))
                
            End If
            
        Next
        
        Text4.Text = Text4.Text + strData                                       '缓冲区中数据经处理后放入text4文本中
        
    End Select
    
    ''''''''''''''''''''''''''''''''''数据保存并处理'''''''''''''''''''''''''''''''''''''
    If (Len(Text4.Text) = 724) Then
        
        'SkinLabel13.Caption = "下位机处于运行状态"
        SkinLabel61.Caption = "已连接..."
        
        DataReceiver_flag = 1                                                   '判断是否接收到下位机数据的标志位
        
        If Interface_flag = 1 Then
            
            Unload Form11
            
        End If
        
        Text5.Text = Format(HEX_to_DEC(Mid(Text4.Text, 1, 2)), "0000")          '温度转换后的高4位
        
        Text6.Text = Text5.Text + Format(HEX_to_DEC(Mid(Text4.Text, 3, 2)), "0000") '温度转换后4位表示
        
        SkinLabel17.Caption = Mid(Text6.Text, 4, 1) * 16 + Format(Mid(Text6.Text, 6, 3) / 16, "0.0") '显示温度值
        
        ''''''''''''''''''''''''''''''''''读系统文件'''''''''''''''''''''''''''''''''''''''
        q = 0                                                                   '开始读入病人各项信息
        
        Dim bNewRevision As Boolean
        
        Open App.Path & "\sys\sys.txt" For Input As #2                          '在文件中读取
        
        Line Input #2, textline
        
        If textline = "Revision 2017" Then
            
            bNewRevision = True
            
        Else
            
            bNewRevision = False
            
        End If
        
        Do While Not EOF(2)                                                     'EOF为文尾测试函数
            
            If q <> 0 Or bNewRevision Then
                Line Input #2, textline                                         '将读入的1行存到变量TextLine中
            End If
            SkinLabel2(q).Caption = textline                                    '读条形码
            
            Line Input #2, textline                                             '以下跳出
            
            If bNewRevision Then
                Line Input #2, textline
            End If
            
            Line Input #2, textline
            Line Input #2, textline
            Line Input #2, textline
            Line Input #2, textline
            
            Line Input #2, textline
            SkinLabel11(q).Caption = textline
            
            Line Input #2, textline
            SkinLabel8(q).Caption = Mid(textline, 1, 7)
            SkinLabel9(q).Caption = Mid(textline, 8, 11)
            
            Line Input #2, textline                                             '将读入的8行存到变量TextLine中
            SkinLabel10(q).Caption = textline
            
            q = q + 1                                                           '循环
            
        Loop
        
        Close #2
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        ''''''''''''''''''''''''''''''''''''读取数据'''''''''''''''''''''''''''''''''''''''
        m = 0
        
        Open App.Path & "\sys\adjust1.txt" For Input As #3
        
        Do While Not EOF(3)                                                     'EOF为文尾测试函数
            
            Line Input #3, textline                                             '将读入的1行存到变量TextLine中
            
            adjust1(m) = Mid(textline, 5, 4)
            
            m = m + 1                                                           '循环
            
        Loop
        
        Close 3#
        
        t = 0
        
        Open App.Path & "\sys\adjust2.txt" For Input As #6                      '读校准2的数据
        
        Do While Not EOF(6)                                                     'EOF为文尾测试函数
            
            Line Input #6, textline                                             '将读入的1行存到变量TextLine中
            
            adjust2(t) = Mid(textline, 5, 4)
            
            t = t + 1                                                           '循环
            
        Loop
        
        Close 6#
        
        Open App.Path & "\sys\hope1.txt" For Input As #7                        '读希望1的值
        
        Line Input #7, textline                                                 '将读入的1行存到变量TextLine中
        
        hope1 = Mid(textline, 1, 4)
        
        Close 7#
        
        Open App.Path & "\sys\hope2.txt" For Input As #8                        '读希望2的值
        
        Line Input #8, textline                                                 '将读入的1行存到变量TextLine中
        
        hope2 = Mid(textline, 1, 4)
        
        Close 8#
        
        For c = 0 To 59
            
            x = Val(Format(HEX_to_DEC(Mid(Text4.Text, c * 12 + 5, 4)), "0000")) '上传的原始值
            
            media = x                                                           '暂存测量数据，用于后续阈值判断，2012-5-20
            
            If SkinLabel2(c).Caption <> "" And x > yuzhidown Then               '条形码不为空且原始值大于阈值下限值进行滤波处理
                
                Open App.Path & "\data\" & SkinLabel2(c) & ".txt" For Input As #1
                
                Line Input #1, textline                                         '以下跳出不读
                If textline = "Revision 2017" Then
                    Line Input #1, textline
                    Line Input #1, textline
                    Line Input #1, textline
                End If
                Line Input #1, textline
                Line Input #1, textline
                Line Input #1, textline
                Line Input #1, textline
                Line Input #1, textline
                Line Input #1, textline
                Line Input #1, textline
                
                Do While Not EOF(1)                                             'EOF为文尾测试函数
                    
                    Line Input #1, textline                                     '将读入的一行存到变量TextLine中
                    
                    R2(c).Add Val(Mid(textline, 1, 4))
                    
                Loop
                
                Close #1
                
                x1 = Val(adjust1(c))
                
                x2 = Val(adjust2(c))
                
                If (x1 = x2) Then x1 = x2 + 1
                
                y1 = Val(hope1)
                
                y2 = Val(hope2)
                
                'y = CInt(((y1 - y2) / (x1 - x2)) * (x - x2)) + y2
                
                yy = CLng(((y1 - y2) / (x1 - x2)) * (x - x2)) + y2
                
                If (yy < 0) Then
                    
                    yy = 0
                    
                End If
                
                If (yy > 9999) Then
                    
                    yy = 9999
                    
                End If
                
                If (R2(c).Count > 4) Then
                    
                    j = R2(c).Count
                    
                    'y = CInt((y + R2(c)(j - 4) + R2(c)(j - 3) + R2(c)(j - 2) + R2(c)(j - 1)) / 5) '5次均值滤波,2011-6-20修改
                    
                End If
                
                x = yy
                
            End If
            
            Text10.Text = Format(x, "0000")                                     '格式化数据
            
            Text3.Text = Text3.Text + Text10.Text
            
            Text3.Text = Text3.Text + Format(HEX_to_DEC(Mid(Text4.Text, c * 12 + 9, 4)), "0000")
            
            Text3.Text = Text3.Text + Format(HEX_to_DEC(Mid(Text4.Text, c * 12 + 13, 4)), "0000")
            
            If SkinLabel2(c).Caption <> "" Then                                 '条形码不为空且原始值大于阈值下限值进行滤波处理
                
                If media > yuzhidown Then
                    
                    Open App.Path & "\data\" & SkinLabel2(c) & ".txt" For Append As #1
                    
                    Print #1, Mid(Text3.Text, 1, 4); " "; Mid(Text3.Text, 5, 4); " "; Mid(Text3.Text, 9, 4); " "; Format(Now, "mm-dd hh:mm:ss")
                    
                    Close #1
                    
                    Shape1(c).Visible = False
                    
                    Picture1(c).ToolTipText = ""
                    
                Else
                    
                    Shape1(c).Visible = True
                    
                    Picture1(c).ToolTipText = "该瓶位状态异常"
                    
                End If
                
            End If
            
            Text3.Text = ""
            
            Text10.Text = ""
            
        Next c
        
        ''''''''''For d = 0 To 59  '保存颜色值数据
        
        ''''''''''If SkinLabel2(d).Caption <> "" Then  '保存数据到data文件夹里
        
        '''''''''''Open App.Path & "\data\" & d + 1 & "\" & SkinLabel2(d) & ".txt" For Append As #1
        
        '''''''''Print #1, Mid(Text3.Text, d * 12 + 1, 4); " "; Mid(Text3.Text, d * 12 + 5, 4); " "; Mid(Text3.Text, d * 12 + 9, 4); " "; Format(Now, "mm-dd hh:mm:ss")
        
        '''''''''Close #1
        
        '''''''''End If
        
        '''''''''Next d
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        
        ''''''''''''''''''''''''''''''''''''数据处理'''''''''''''''''''''''''''''''''''''''
        Dim nUpValCount As Integer
        Dim nIndex As Integer
        Dim bChangePoint As Boolean
        '        Dim Max1 As Integer
        '        Dim Max2 As Integer
        '        Dim Max3 As Integer
        '        Dim Min1 As Integer
        '        Dim Min2 As Integer
        '        Dim Min3 As Integer
        '        Dim Swap As Integer
        Dim Temp As Integer
        
        For b = 0 To 59                                                         '对保存在data文件夹里数据进行处理
            
            If SkinLabel2(b).Caption <> "" Then                                 '条形码不为空的进行处理
                
                Open App.Path & "\data\" & SkinLabel2(b) & ".txt" For Input As #1 '开始读数据
                
                Line Input #1, textline                                         '以下跳出不读
                If textline = "Revision 2017" Then
                    Line Input #1, textline
                    Line Input #1, textline
                    Line Input #1, textline
                End If
                Line Input #1, textline
                Line Input #1, textline
                Line Input #1, textline
                Line Input #1, textline
                Line Input #1, textline
                Line Input #1, textline
                Line Input #1, textline
                
                Do While Not EOF(1)                                             'EOF为文尾测试函数
                    
                    Line Input #1, textline                                     '将读入的一行存到变量TextLine中
                    
                    R1(b).Add Val(Mid(textline, 1, 4))
                    
                Loop
                
                Close #1
                
                If (SkinLabel10(b).Caption = 1) Then                            '只处理正在测量的
                    
                    nUpValCount = 0
                    
                    For j = 1 To R1(b).Count
                        
                        '续12个数据大于上限值。阳性
                        If R1(b)(j) > yuzhiup Then
                            
                            nUpValCount = nUpValCount + 1
                            
                            If nUpValCount > 12 Then
                                
                                Picture1(b).Picture = LoadPicture(App.Path + "\pic\6.jpg") '连续5个点斜率递增大于设定值
                                
                                SkinLabel10(b).Caption = 2                      '有菌,红色
                                
                                Form15.Show
                                
                                GoTo NextLoop
                                
                            End If
                            
                        Else
                            
                            nUpValCount = 0
                            
                        End If
                        
                        
                        If j >= 75 Then                                         '10小时以后，连续15个（1差值）大于0。阳性
                            
                            If (R1(b)(j) - R1(b)(j - 1) > 0) And (R1(b)(j - 1) - R1(b)(j - 2) > 0) And (R1(b)(j - 2) - R1(b)(j - 3) > 0) And (R1(b)(j - 3) - R1(b)(j - 4) > 0) And (R1(b)(j - 4) - R1(b)(j - 5) > 0) _
                                And (R1(b)(j - 5) - R1(b)(j - 6) > 0) And (R1(b)(j - 6) - R1(b)(j - 7) > 0) And (R1(b)(j - 7) - R1(b)(j - 8)) > 0 And (R1(b)(j - 8) - R1(b)(j - 9) > 0) And (R1(b)(j - 9) - R1(b)(j - 10) > 0) _
                                And (R1(b)(j - 10) - R1(b)(j - 11) > 0) And (R1(b)(j - 11) - R1(b)(j - 12) > 0) And (R1(b)(j - 12) - R1(b)(j - 13) > 0) And (R1(b)(j - 13) - R1(b)(j - 14) > 0) And (R1(b)(j - 14) - R1(b)(j - 15) > 0) Then
                                'If (R1(b)(j) - R1(b)(j - 1) > 0) And (R1(b)(j - 1) - R1(b)(j - 2) > 0) And (R1(b)(j - 2) - R1(b)(j - 3) > 0) And (R1(b)(j - 3) - R1(b)(j - 4) > 0) And (R1(b)(j - 4) - R1(b)(j - 5)) > 0 And (R1(b)(j - 5) - R1(b)(j - 6)) > 0 And (R1(b)(j - 6) - R1(b)(j - 7)) > 0 And (R1(b)(j - 7) - R1(b)(j - 8)) > 0 And (R1(b)(j - 8) - R1(b)(j - 9)) > 0 And (R1(b)(j - 9) - R1(b)(j - 10)) > 0 Then   '曲线变红
                                
                                Picture1(b).Picture = LoadPicture(App.Path + "\pic\6.jpg")
                                
                                SkinLabel10(b).Caption = 2
                                
                                Form15.Show
                                
                                GoTo NextLoop
                                
                            End If
                            
                        End If
                        
                        '*********************************************************************************************************
                        
                        'Else
                        If j >= 18 Then                                         '2小时后，连续6个差值的差值（5个数据）大于0。阳性
                            
                            If ((R1(b)(j) - R1(b)(j - 1)) >= 1 And (R1(b)(j - 1) - R1(b)(j - 2)) >= 1 And (R1(b)(j - 2) - R1(b)(j - 3)) >= 1 And (R1(b)(j - 3) - R1(b)(j - 4)) >= 1 And (R1(b)(j - 4) - R1(b)(j - 5)) >= 1 And (R1(b)(j) - R1(b)(j - 1)) - (R1(b)(j - 1) - R1(b)(j - 2))) >= 1 And ((R1(b)(j - 1) - R1(b)(j - 2)) - (R1(b)(j - 2) - R1(b)(j - 3))) >= 1 And ((R1(b)(j - 2) - R1(b)(j - 3)) - (R1(b)(j - 3) - R1(b)(j - 4))) >= 1 And ((R1(b)(j - 3) - R1(b)(j - 4)) - (R1(b)(j - 4) - R1(b)(j - 5))) >= 1 Then '
                                'If ((R1(b)(j) - R1(b)(j - 1)) - (R1(b)(j - 1) - R1(b)(j - 2))) > 1 And ((R1(b)(j - 1) - R1(b)(j - 2)) - (R1(b)(j - 2) - R1(b)(j - 3))) > 1 And ((R1(b)(j - 2) - R1(b)(j - 3)) - (R1(b)(j - 3) - R1(b)(j - 4))) > 0 Then '
                                
                                Picture1(b).Picture = LoadPicture(App.Path + "\pic\6.jpg")
                                
                                SkinLabel10(b).Caption = 2
                                
                                Form15.Show
                                
                                GoTo NextLoop
                                
                            End If
                            
                        End If
                        
                        '*********************************************************************************************************
                        '                        If j >= 169 Then                                        '24小时以后，连续15个（2差值之和、）大于0。阳性。
                        '
                        '                            If (R1(b)(j) - R1(b)(j - 2) > 0) And (R1(b)(j - 2) - R1(b)(j - 4) > 0) And (R1(b)(j - 4) - R1(b)(j - 6) > 0) And (R1(b)(j - 6) - R1(b)(j - 8) > 0) And (R1(b)(j - 8) - R1(b)(j - 10) > 0) And (R1(b)(j - 10) - R1(b)(j - 12) > 0) And (R1(b)(j - 12) - R1(b)(j - 14) > 0) And (R1(b)(j - 14) - R1(b)(j - 16)) > 0 And (R1(b)(j - 16) - R1(b)(j - 18) > 0) And (R1(b)(j - 18) - R1(b)(j - 20) > 0) And (R1(b)(j - 20) - R1(b)(j - 22) > 0) And (R1(b)(j - 22) - R1(b)(j - 24) > 0) Then
                        '
                        '                                Picture1(b).Picture = LoadPicture(App.Path + "\pic\6.jpg")
                        '
                        '                                SkinLabel10(b).Caption = 2
                        '
                        '                                Form15.Show
                        '
                        '                                GoTo NextLoop
                        '
                        '                            End If
                        '
                        '                        End If
                        
                        '**********************************************************************************************************
                        '24小时后，连续144个差值，去除3个最高值和3个最低值，132个差值之和大于380。阳性
                        '48小时后，连续144个差值，去除3个最高值和3个最低值，132个差值之和大于250。阳性
                        '72小时后，连续144个差值，去除3个最高值和3个最低值，132个差值之和大于150。阳性
                        
                        If j >= 289 Then
                            
                            '                            Max1 = R1(b)(j) - R1(b)(j - 1)
                            '                            Max2 = R1(b)(j - 1) - R1(b)(j - 2)
                            '                            Max3 = R1(b)(j - 2) - R1(b)(j - 3)
                            '                            Min1 = R1(b)(j) - R1(b)(j - 1)
                            '                            Min2 = R1(b)(j - 1) - R1(b)(j - 2)
                            '                            Min3 = R1(b)(j - 2) - R1(b)(j - 3)
                            '
                            '                            For nIndex = 3 To 143
                            '
                            '                                Temp = R1(b)(j - nIndex) - R1(b)(j - nIndex - 1)
                            '
                            '                                If Temp > Max1 Then
                            '                                    Swap = Max1
                            '                                    Max1 = Temp
                            '                                    Temp = Swap
                            '                                End If
                            '
                            '                                If Temp > Max2 Then
                            '                                    Swap = Max2
                            '                                    Max2 = Temp
                            '                                    Temp = Swap
                            '                                End If
                            '
                            '                                If Temp > Max3 Then
                            '                                    Swap = Max3
                            '                                    Max3 = Temp
                            '                                    Temp = Swap
                            '                                End If
                            '
                            '                                Temp = R1(b)(j - nIndex) - R1(b)(j - nIndex - 1)
                            '
                            '                                If Temp < Min1 Then
                            '                                    Swap = Min1
                            '                                    Min1 = Temp
                            '                                    Temp = Swap
                            '                                End If
                            '
                            '                                If Temp < Min2 Then
                            '                                    Swap = Min2
                            '                                    Min2 = Temp
                            '                                    Temp = Swap
                            '                                End If
                            '
                            '                                If Temp < Min3 Then
                            '                                    Swap = Min3
                            '                                    Min3 = Temp
                            '                                    Temp = Swap
                            '                                End If
                            '
                            '                            Next nIndex
                            
                            bChangePoint = False
                            
                            Temp = 0
                            
                            For nIndex = 0 To 143
                                
                                '这个阈值暂时设置为50 有待商榷
                                
                                If Abs(R1(b)(j - 145 + nIndex) + R1(b)(j - 143 + nIndex) - 2 * R1(b)(j - 144 + nIndex)) > 50 Then
                                    
                                    If bChangePoint Then
                                        
                                        Temp = Temp + R1(b)(j - 144 + nIndex) - R1(b)(j - 145 + nIndex)
                                        
                                    Else
                                        
                                        bChangePoint = True
                                        
                                    End If
                                    
                                Else
                                    
                                    bChangePoint = False
                                    
                                End If
                                
                            Next nIndex
                            
                            If bChangePoint Then
                                
                                Temp = Temp + R1(b)(j) - R1(b)(j - 1)
                                
                            End If
                            
                            Temp = R1(b)(j) - R1(b)(j - 144) - Temp
                            
                            If (Temp >= 380) Or (j >= 433 And Temp >= 250) Or (j >= 577 And Temp >= 150) Then
                                
                                Picture1(b).Picture = LoadPicture(App.Path + "\pic\6.jpg")
                                
                                SkinLabel10(b).Caption = 2
                                
                                Form15.Show
                                
                                GoTo NextLoop
                                
                            End If
                            
                        ElseIf j >= 145 Then
                            
                            '                            Max1 = R1(b)(j) - R1(b)(j - 1)
                            '                            Max2 = R1(b)(j - 1) - R1(b)(j - 2)
                            '                            Max3 = R1(b)(j - 2) - R1(b)(j - 3)
                            '                            Min1 = R1(b)(j) - R1(b)(j - 1)
                            '                            Min2 = R1(b)(j - 1) - R1(b)(j - 2)
                            '                            Min3 = R1(b)(j - 2) - R1(b)(j - 3)
                            '
                            '                            For nIndex = 3 To 107
                            '
                            '                                Temp = R1(b)(j - nIndex) - R1(b)(j - nIndex - 1)
                            '
                            '                                If Temp > Max1 Then
                            '                                    Swap = Max1
                            '                                    Max1 = Temp
                            '                                    Temp = Swap
                            '                                End If
                            '
                            '                                If Temp > Max2 Then
                            '                                    Swap = Max2
                            '                                    Max2 = Temp
                            '                                    Temp = Swap
                            '                                End If
                            '
                            '                                If Temp > Max3 Then
                            '                                    Swap = Max3
                            '                                    Max3 = Temp
                            '                                    Temp = Swap
                            '                                End If
                            '
                            '                                Temp = R1(b)(j - nIndex) - R1(b)(j - nIndex - 1)
                            '
                            '                                If Temp < Min1 Then
                            '                                    Swap = Min1
                            '                                    Min1 = Temp
                            '                                    Temp = Swap
                            '                                End If
                            '
                            '                                If Temp < Min2 Then
                            '                                    Swap = Min2
                            '                                    Min2 = Temp
                            '                                    Temp = Swap
                            '                                End If
                            '
                            '                                If Temp < Min3 Then
                            '                                    Swap = Min3
                            '                                    Min3 = Temp
                            '                                    Temp = Swap
                            '                                End If
                            '
                            '                            Next nIndex
                            
                            bChangePoint = False
                            
                            Temp = 0
                            
                            For nIndex = 0 To 107
                                
                                '这个阈值暂时设置为50 有待商榷
                                
                                If Abs(R1(b)(j - 109 + nIndex) + R1(b)(j - 107 + nIndex) - 2 * R1(b)(j - 108 + nIndex)) > 50 Then
                                    
                                    If bChangePoint Then
                                        
                                        Temp = Temp + R1(b)(j - 108 + nIndex) - R1(b)(j - 109 + nIndex)
                                        
                                    Else
                                        
                                        bChangePoint = True
                                        
                                    End If
                                    
                                Else
                                    
                                    bChangePoint = False
                                    
                                End If
                                
                            Next nIndex
                            
                            If bChangePoint Then
                                
                                Temp = Temp + R1(b)(j) - R1(b)(j - 1)
                                
                            End If
                            
                            Temp = R1(b)(j) - R1(b)(j - 108) - Temp
                            
                            'Temp = R1(b)(j) - R1(b)(j - 108) - Max1 - Max2 - Max3 - Min1 - Min2 - Min3
                            
                            If Temp >= 380 Then
                                
                                Picture1(b).Picture = LoadPicture(App.Path + "\pic\6.jpg")
                                
                                SkinLabel10(b).Caption = 2
                                
                                Form15.Show
                                
                                GoTo NextLoop
                                
                            End If
                            
                        End If
                        
NextLoop:
                        
                    Next j
                    
                End If
                
            End If
            
        Next b
        
        For t = 0 To 59                                                         '培养状态处理
            
            If SkinLabel2(t).Caption <> "" Then                                 '条形码不为空
                
                If SkinLabel10(t).Caption = 1 Or SkinLabel10(t).Caption = 2 Then '测量未完成
                    
                    If DateDiff("h", Mid(SkinLabel8(t).Caption, 1, 4) + "-" + SkinLabel9(t).Caption, Now) > Val(SkinLabel11(t).Caption) * 24 Then
                        
                        If SkinLabel10(t).Caption = 1 Then
                            
                            Picture1(t).Picture = LoadPicture(App.Path + "\pic\2.jpg") '绿色-->绿色×
                            
                            SkinLabel10(t).Caption = 3
                            
                            Form15.Show
                            
                        ElseIf SkinLabel10(t).Caption = 2 Then                  '此前是有菌未完成
                            
                            Picture1(t).Picture = LoadPicture(App.Path + "\pic\3.jpg") '红色-->红色×
                            
                            SkinLabel10(t).Caption = 4
                            
                        End If
                        
                    End If
                    
                End If
                
            End If
            
        Next t
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        ''''''''''''''''''''''''''''重写系统文件'''''''''''''''''''''''''''''''''''''''''''
        Open App.Path & "\sys\sys.txt" For Output As #2                         '重建sys文件
        
        Print #2, "Revision 2017"                                               '文件版本
        
        For e = 0 To 59
            
            Print #2, SkinLabel2(e).Caption                                     '条形码
            Print #2, SkinLabel3(e).Caption                                     '姓名
            Print #2, SkinLabel78(e).Caption                                    'ID
            Print #2, SkinLabel4(e).Caption                                     '性别
            Print #2, SkinLabel5(e).Caption                                     '年龄
            Print #2, SkinLabel6(e).Caption                                     '科室
            Print #2, SkinLabel7(e).Caption                                     '培养瓶种类
            Print #2, SkinLabel11(e).Caption                                    '培养时间
            Print #2, SkinLabel8(e).Caption + SkinLabel9(e).Caption             '时间:月日+时分
            Print #2, SkinLabel10(e).Caption                                    '培养状态
            
        Next e
        
        Close #2
        
        AllStatesStatistic
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        '''''''''''''''''''''''''''''''处理之后动作''''''''''''''''''''''''''''''''''''''''
        'Text3.Text = ""  '保存完之后文本里数据清空
        
        Text4.Text = ""
        
        command(0) = &H84
        
        MSComm1.Output = command                                                '发命令给下位机,通知下次传送数据(132)
        
        command(0) = &HFF                                                       '清空命令
        
        releaseLock
        
        Exit Sub
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        
        '''''''''''''''''''''''''''''''接收校准1数据'''''''''''''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 12 And adjust1_flag = 1 And adjust2_flag = 0) Then '接收校准1数据正确
        
        adjust1_flag = 0                                                        '标志位清零
        
        For c = 0 To 2                                                          '处理后的数据放到text9文本里
            
            Text9.Text = Text9.Text + Format(HEX_to_DEC(Mid(Text4.Text, c * 4 + 1, 4)), "0000")
            
        Next c
        
        read1(s1) = Text9.Text
        
        t = 0
        
        Open App.Path & "\sys\adjust2.txt" For Input As #6                      '读校准2的数据
        
        Do While Not EOF(6)                                                     'EOF为文尾测试函数
            
            Line Input #6, textline                                             '将读入的1行存到变量TextLine中
            
            read2(t) = Mid(textline, 5, 4)
            
            t = t + 1                                                           '循环
            
        Loop
        
        Close 6#
        
        If (Val(Mid(read1(s1), 1, 4)) - Val(Mid(read2(s1), 1, 4)) <= 0) Then
            
            answer = MsgBox("提示：数据有错,请重新放好孔位测量!", 48, "信息提示")
            
            If answer = 1 Then                                                  '重新校准1
                
                Text1.Text = ""
                
                Text4.Text = ""
                
                Text9.Text = ""
                
                Unload Form9
                
                releaseLock
                
                Exit Sub
                
            End If
            
        End If
        
        SkinLabel57.Caption = Val(Mid(read1(s1), 1, 4))                         '显示校准1的数据
        
        Open App.Path & "\sys\adjust1.txt" For Output As #3                     '保存数据到adjust1文件里
        
        For d = 0 To 59
            
            Print #3, Format((d + 1), "00") & "#:" & Mid(read1(d), 1, 4); Mid(read1(d), 5, 4); Mid(read1(d), 9, 4)
            
        Next d
        
        Close #3
        
        Text1.Text = ""                                                         '读完数据文本清空
        
        Text4.Text = ""
        
        Text9.Text = ""
        
        Unload Form9
        
        releaseLock
        
        Exit Sub
        ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        
        '''''''''''''''''''''''''''''''接收校准2数据'''''''''''''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 12 And adjust1_flag = 0 And adjust2_flag = 1) Then '接收校准2的数据正确
        
        adjust2_flag = 0                                                        '标志位清零
        
        For c = 0 To 2                                                          '处理后的数据放到text9文本里
            
            Text9.Text = Text9.Text + Format(HEX_to_DEC(Mid(Text4.Text, c * 4 + 1, 4)), "0000")
            
        Next c
        
        read2(s2) = Text9.Text
        
        m = 0
        
        Open App.Path & "\sys\adjust1.txt" For Input As #3                      '读校准1的数据
        
        Do While Not EOF(3)                                                     'EOF为文尾测试函数
            
            Line Input #3, textline                                             '将读入的1行存到变量TextLine中
            
            read1(m) = Mid(textline, 5, 4)
            
            m = m + 1                                                           '循环
            
        Loop
        
        Close 3#
        
        If (Val(Mid(read2(s2), 1, 4)) - Val(Mid(read1(s2), 1, 4)) >= 0) Then
            
            answer = MsgBox("提示：数据有错,请重新放好孔位测量!", 48, "信息提示")
            
            If answer = 1 Then                                                  '重新校准2
                
                Text2.Text = ""
                
                Text4.Text = ""
                
                Text9.Text = ""
                
                Unload Form9
                
                releaseLock
                
                Exit Sub
                
            End If
            
        End If
        
        SkinLabel59.Caption = Val(Mid(read2(s2), 1, 4))                         '显示校准2的数据
        
        Open App.Path & "\sys\adjust2.txt" For Output As #6                     '保存数据到adjust2文件里
        
        For d = 0 To 59
            
            Print #6, Format((d + 1), "00") & "#:" & Mid(read2(d), 1, 4); Mid(read2(d), 5, 4); Mid(read2(d), 9, 4)
            
        Next d
        
        Close #6
        
        Text2.Text = ""                                                         '
        
        Text4.Text = ""
        
        Text9.Text = ""
        
        Unload Form9
        
        releaseLock
        
        Exit Sub
        
        ''''''''''''''''''''''''''''''''''''''清空数据'''''''''''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 2 And Text4.Text = "85") Then
        
        Text4.Text = ""
        
        Unload Form10
        
        releaseLock
        
        Exit Sub
        
        ''''''''''''''''''''''''''接收下位机数据''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 2 And Text4.Text = "88") Then
        
        Timer1.Enabled = False
        
        Timer2.Enabled = True
        
        SkinLabel61.Caption = "培养箱已连接..."
        
        command(0) = &H84                                                       '初始化时发送传送数据命令(132)
        
        MSComm1.Output = command
        
        command(0) = &HFF                                                       '清空命令
        
        Text4.Text = ""
        
        releaseLock
        
        Exit Sub
        
        ''''''''''''''''''''''''''''''''''''''电机故障'''''''''''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 2 And Text4.Text = "FB") Then
        
        SkinLabel61.Caption = "电机故障"
        
        Text4.Text = ""
        
        releaseLock
        
        Exit Sub
        
        ''''''''''''''''''''''''''''''''''''温度控制故障'''''''''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 2 And Text4.Text = "FC") Then
        
        SkinLabel61.Caption = "温度控制故障"
        
        Text4.Text = ""
        
        releaseLock
        
        Exit Sub
        
        '''''''''''''''''''''''''''''''''''温度传感器故障'''''''''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 2 And Text4.Text = "FD") Then
        
        SkinLabel61.Caption = "温度传感器故障"
        
        Text4.Text = ""
        
        releaseLock
        
        Exit Sub
        
        '''''''''''''''''''''''''''''''''''RS485网络故障'''''''''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 2 And Text4.Text = "FE") Then
        
        SkinLabel61.Caption = "正在进行操作，通信中断..."
        
        Text4.Text = ""
        
        releaseLock
        
        Exit Sub
        
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    End If
    
    releaseLock
    
End Sub

Private Sub Timer1_Timer()                                                      '定时器1，循环发送命令，直到下位机响应
    
    command(0) = &H88
    
    MSComm1.Output = command
    
    command(0) = &HFF                                                           '清空命令
    
End Sub

Private Sub Timer2_Timer()                                                      '定时器2
    
    Dim m As Integer
    
    Dim k As Integer
    
    time_count = time_count + 1
    
    ''''''''''''''''''''''''''''''''''读系统文件'''''''''''''''''''''''''''''''''''''''
    m = 0                                                                       '开始读入病人各项信息
    
    Dim bNewRevision As Boolean
    
    Open App.Path & "\sys\sys.txt" For Input As #2                              '在文件中读取
    
    Line Input #2, textline
    
    If textline = "Revision 2017" Then
        
        bNewRevision = True
        
    Else
        
        bNewRevision = False
        
    End If
    
    Do While Not EOF(2)                                                         'EOF为文尾测试函数
        
        If m <> 0 Or bNewRevision Then
            Line Input #2, textline                                             '将读入的1行存到变量TextLine中
        End If
        
        Line Input #2, textline
        
        If bNewRevision Then
            Line Input #2, textline
        End If
        
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        
        Line Input #2, textline                                                 '将读入的8行存到变量TextLine中
        SkinLabel10(m).Caption = textline                                       '读培养状态
        
        m = m + 1                                                               '循环
        
    Loop
    
    Close #2
    
    AllStatesStatistic
    
    If Check1.Value = 1 And (time_count = 3 Or time_count = 8 Or time_count = 13) Then '
        
        For k = 0 To 59
            
            If Val(SkinLabel10(k).Caption) = 2 Or Val(SkinLabel10(k).Caption) = 3 Or Val(SkinLabel10(k).Caption) = 4 Then '正在测量中的培养瓶有呈阳性的，发生报警
                
                'Call PlayBeep '上位机报警
                
                command(0) = &H8B                                               '下位机报警命令
                
                MSComm1.Output = command
                
                command(0) = &HFF                                               '清空命令
                
                Exit Sub
                
            End If
            
        Next k
        
    End If
    
    If Check1.Value = 0 Or time_count = 4 Or time_count = 9 Or time_count = 14 Then '持续一分钟
        
        command(0) = &H8A                                                       '清除下位机报警命令
        
        MSComm1.Output = command
        
        command(0) = &HFF                                                       '清空命令
        
    End If
    
    If time_count = 15 Then
        
        time_count = 0
        
        If DataReceiver_flag = 0 And Interface_flag = 0 Then                    '没接收到下位机数据
            
            Text4.Text = ""
            
            SkinLabel61.Caption = "培养箱未连接..."
            
            Timer1.Enabled = True
            
            Timer2.Enabled = False
            
            Form2.Enabled = False
            
            Interface_flag = 1                                                  '界面提示标志位
            
            Form11.Show
            
        ElseIf DataReceiver_flag = 1 And Interface_flag = 0 Then                '接收到下位机数据
            
            DataReceiver_flag = 0
            
        End If
        
    End If
    
End Sub

Public Sub AllStatesStatistic()
    
    Dim k As Integer
    
    Dim nRunning As Integer
    
    Dim nPostive As Integer
    
    Dim nNegative As Integer
    
    Dim nEmptey As Integer
    
    nRunning = 0
    nPostive = 0
    nNegative = 0
    nEmptey = 0
    
    Form16.strPositive = ""
    Form16.strNegative = ""
    
    For k = 0 To 59
        
        If Val(SkinLabel10(k).Caption) = 2 Or Val(SkinLabel10(k).Caption) = 4 Then
            
            nPostive = nPostive + 1
            
            Form16.strPositive = Form16.strPositive & k + 1 & "# "
            
        ElseIf Val(SkinLabel10(k).Caption) = 1 Then
            
            nRunning = nRunning + 1
            
        ElseIf Val(SkinLabel10(k).Caption) = 3 Then
            
            nNegative = nNegative + 1
            
            Form16.strNegative = Form16.strNegative & k + 1 & "# "
            
        Else
            
            nEmptey = nEmptey + 1
            
        End If
        
    Next k
    
    SkinLabel71.Caption = nRunning
    SkinLabel72.Caption = nPostive
    SkinLabel73.Caption = nNegative
    SkinLabel74.Caption = nEmptey
    
    If nPostive = 0 Then
        
        Command19.Enabled = False
        
    Else
        
        Command19.Enabled = True
        
    End If
    
    If nNegative = 0 Then
        
        Command21.Enabled = False
        
    Else
        
        Command21.Enabled = True
        
    End If
    
End Sub

