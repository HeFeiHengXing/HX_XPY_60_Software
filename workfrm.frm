VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "Richtx32.ocx"
Begin VB.Form Form2 
   BackColor       =   &H8000000A&
   Caption         =   "ѪҺϸ��������"
   ClientHeight    =   11070
   ClientLeft      =   1845
   ClientTop       =   555
   ClientWidth     =   15285
   Icon            =   "workfrm.frx":0000
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   ScaleHeight     =   11070
   ScaleWidth      =   15285
   StartUpPosition =   2  '��Ļ����
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
      TabCaption(0)   =   "��������"
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
      TabCaption(1)   =   "ϵͳ����"
      TabPicture(1)   =   "workfrm.frx":686E
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame21"
      Tab(1).Control(1)=   "Frame18"
      Tab(1).Control(2)=   "Frame20"
      Tab(1).Control(3)=   "Frame19"
      Tab(1).Control(4)=   "Timer2"
      Tab(1).Control(5)=   "Timer1"
      Tab(1).Control(6)=   "Frame16"
      Tab(1).Control(7)=   "Text10"
      Tab(1).Control(8)=   "Text9"
      Tab(1).Control(9)=   "Text6"
      Tab(1).Control(10)=   "Text5"
      Tab(1).Control(11)=   "Text4"
      Tab(1).Control(12)=   "Text3"
      Tab(1).Control(13)=   "Frame8"
      Tab(1).Control(14)=   "Frame6"
      Tab(1).Control(15)=   "MSComm1"
      Tab(1).Control(16)=   "WindowsMediaPlayer1"
      Tab(1).ControlCount=   17
      TabCaption(2)   =   "��ѯͳ��"
      TabPicture(2)   =   "workfrm.frx":688A
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame12"
      Tab(2).Control(1)=   "Frame14"
      Tab(2).Control(2)=   "Frame13"
      Tab(2).Control(3)=   "SystemGraph1"
      Tab(2).Control(4)=   "CommonDialog1"
      Tab(2).Control(5)=   "Frame11"
      Tab(2).Control(6)=   "Frame10"
      Tab(2).ControlCount=   7
      Begin VB.Frame Frame21 
         Caption         =   "��������"
         Height          =   1500
         Left            =   -72480
         TabIndex        =   935
         Top             =   5760
         Width           =   3615
         Begin VB.CommandButton Command18 
            Caption         =   "ȷ��"
            Height          =   375
            Left            =   2400
            TabIndex        =   945
            Top             =   840
            Width           =   735
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel76 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":68A6
            TabIndex        =   944
            Top             =   840
            Width           =   1335
         End
         Begin VB.CheckBox Check1 
            Caption         =   "Check1"
            Height          =   255
            Left            =   2640
            TabIndex        =   943
            Top             =   360
            Value           =   1  'Checked
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel75 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":6912
            TabIndex        =   942
            Top             =   360
            Width           =   1335
         End
      End
      Begin VB.Frame Frame18 
         Caption         =   "�����¶�"
         Height          =   1600
         Left            =   -72480
         TabIndex        =   934
         Top             =   1560
         Width           =   3615
         Begin VB.CommandButton Command5 
            Caption         =   "��"
            Height          =   195
            Left            =   1800
            TabIndex        =   939
            Top             =   840
            Width           =   255
         End
         Begin VB.CommandButton Command6 
            Caption         =   "��"
            Height          =   195
            Left            =   1800
            TabIndex        =   938
            Top             =   1080
            Width           =   255
         End
         Begin VB.CommandButton Command7 
            Caption         =   "ȷ��"
            Height          =   375
            Left            =   2400
            TabIndex        =   936
            Top             =   960
            Width           =   750
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel21 
            Height          =   255
            Left            =   1440
            OleObjectBlob   =   "workfrm.frx":697E
            TabIndex        =   937
            Top             =   960
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel20 
            Height          =   255
            Left            =   840
            OleObjectBlob   =   "workfrm.frx":69E0
            TabIndex        =   940
            Top             =   960
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel19 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":6A3E
            TabIndex        =   941
            Top             =   480
            Width           =   1095
         End
      End
      Begin VB.Frame Frame12 
         Caption         =   "ɾ���ļ�"
         Height          =   1095
         Left            =   -73200
         TabIndex        =   930
         Top             =   720
         Width           =   4695
         Begin VB.TextBox Text12 
            Height          =   285
            Left            =   720
            TabIndex        =   932
            Top             =   600
            Width           =   2415
         End
         Begin VB.CommandButton Command14 
            Caption         =   "ȷ��"
            Height          =   375
            Left            =   3600
            TabIndex        =   931
            Top             =   600
            Width           =   750
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel41 
            Height          =   375
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":6AA8
            TabIndex        =   933
            Top             =   240
            Width           =   2175
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   "ƿλ״̬"
         Height          =   1935
         Left            =   480
         TabIndex        =   921
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
            TabIndex        =   956
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
            TabIndex        =   955
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
            TabIndex        =   954
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
            TabIndex        =   953
            Top             =   360
            Width           =   525
         End
         Begin VB.CommandButton Command21 
            Caption         =   "ȡƿ"
            Height          =   375
            Left            =   5760
            TabIndex        =   952
            Top             =   1080
            Width           =   750
         End
         Begin VB.CommandButton Command19 
            Caption         =   "ȡƿ"
            Height          =   375
            Left            =   5760
            TabIndex        =   951
            Top             =   480
            Width           =   750
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel74 
            Height          =   255
            Left            =   2280
            OleObjectBlob   =   "workfrm.frx":7B34
            TabIndex        =   929
            Top             =   1200
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel73 
            Height          =   255
            Left            =   5040
            OleObjectBlob   =   "workfrm.frx":7B92
            TabIndex        =   928
            Top             =   1200
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel72 
            Height          =   255
            Left            =   5040
            OleObjectBlob   =   "workfrm.frx":7BF0
            TabIndex        =   927
            Top             =   600
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel71 
            Height          =   255
            Left            =   2280
            OleObjectBlob   =   "workfrm.frx":7C4E
            TabIndex        =   926
            Top             =   600
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel70 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":7CAC
            TabIndex        =   925
            Top             =   1200
            Width           =   1215
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel63 
            Height          =   270
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":7D16
            TabIndex        =   924
            Top             =   600
            Width           =   1335
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel62 
            Height          =   255
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":7D7E
            TabIndex        =   923
            Top             =   1200
            Width           =   1335
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel13 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":7DE6
            TabIndex        =   922
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
         Caption         =   "��������ʱ��"
         Height          =   2000
         Left            =   -72480
         TabIndex        =   913
         Top             =   3480
         Width           =   3615
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel77 
            Height          =   255
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":8084
            TabIndex        =   947
            Top             =   960
            Width           =   375
         End
         Begin VB.CommandButton Command20 
            Caption         =   "ȷ��"
            Height          =   375
            Left            =   2400
            TabIndex        =   916
            Top             =   1440
            Width           =   750
         End
         Begin VB.TextBox Text14 
            Height          =   285
            Left            =   2160
            TabIndex        =   915
            Top             =   600
            Width           =   735
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel67 
            Height          =   375
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":80E4
            TabIndex        =   914
            Top             =   600
            Width           =   1815
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel68 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8158
            TabIndex        =   917
            Top             =   960
            Width           =   1695
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel69 
            Height          =   255
            Left            =   1920
            OleObjectBlob   =   "workfrm.frx":81C8
            TabIndex        =   918
            Top             =   960
            Width           =   615
         End
      End
      Begin VB.Frame Frame19 
         Caption         =   "��ֵ����"
         Height          =   2200
         Left            =   -72480
         TabIndex        =   903
         Top             =   7560
         Width           =   3615
         Begin VB.TextBox Text13 
            Height          =   285
            Left            =   1920
            TabIndex        =   911
            Top             =   1080
            Width           =   615
         End
         Begin VB.CommandButton Command16 
            Caption         =   "ȷ��"
            Height          =   375
            Left            =   2520
            TabIndex        =   909
            Top             =   1680
            Width           =   750
         End
         Begin VB.TextBox Text11 
            Height          =   285
            Left            =   1920
            TabIndex        =   905
            Top             =   360
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel53 
            Height          =   255
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":8226
            TabIndex        =   904
            Top             =   360
            Width           =   1335
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel55 
            Height          =   255
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":8292
            TabIndex        =   906
            Top             =   720
            Width           =   1335
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel54 
            Height          =   255
            Left            =   1920
            OleObjectBlob   =   "workfrm.frx":82FE
            TabIndex        =   907
            Top             =   720
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel64 
            Height          =   255
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":835C
            TabIndex        =   908
            Top             =   1080
            Width           =   1335
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel65 
            Height          =   255
            Left            =   1920
            OleObjectBlob   =   "workfrm.frx":83C8
            TabIndex        =   910
            Top             =   1440
            Width           =   615
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel66 
            Height          =   255
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":8426
            TabIndex        =   912
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
         Caption         =   "����״̬"
         Height          =   1935
         Left            =   11760
         TabIndex        =   900
         Top             =   8520
         Width           =   3015
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel61 
            Height          =   255
            Left            =   480
            OleObjectBlob   =   "workfrm.frx":8492
            TabIndex        =   902
            Top             =   600
            Width           =   2175
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel18 
            Height          =   255
            Left            =   2280
            OleObjectBlob   =   "workfrm.frx":84F0
            TabIndex        =   948
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel17 
            Height          =   255
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":8552
            TabIndex        =   949
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel16 
            Height          =   255
            Left            =   480
            OleObjectBlob   =   "workfrm.frx":85B0
            TabIndex        =   950
            Top             =   1200
            Width           =   1095
         End
      End
      Begin VB.Frame Frame16 
         Caption         =   "�ָ���������"
         Height          =   1700
         Left            =   -66240
         TabIndex        =   894
         Top             =   6120
         Width           =   3615
         Begin VB.CommandButton Command17 
            Caption         =   "ȷ��"
            Height          =   375
            Left            =   2640
            TabIndex        =   899
            Top             =   960
            Width           =   750
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel60 
            Height          =   255
            Left            =   120
            OleObjectBlob   =   "workfrm.frx":861A
            TabIndex        =   898
            Top             =   600
            Width           =   2535
         End
      End
      Begin VB.TextBox Text10 
         Height          =   375
         Left            =   -61440
         TabIndex        =   893
         Top             =   6480
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.TextBox Text9 
         Height          =   285
         Left            =   -61440
         TabIndex        =   892
         Top             =   6000
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.Frame Frame14 
         Caption         =   "ͳ������"
         Height          =   4575
         Left            =   -66360
         TabIndex        =   885
         Top             =   2160
         Width           =   4695
         Begin VB.CommandButton Command13 
            Caption         =   "��ӡ"
            Height          =   375
            Left            =   3600
            TabIndex        =   887
            Top             =   3960
            Width           =   750
         End
         Begin RichTextLib.RichTextBox RichTextBox1 
            Height          =   3375
            Left            =   360
            TabIndex        =   886
            Top             =   360
            Width           =   3950
            _ExtentX        =   6959
            _ExtentY        =   5953
            _Version        =   393217
            TextRTF         =   $"workfrm.frx":8696
         End
      End
      Begin VB.Frame Frame13 
         Caption         =   "ͳ����ʾ"
         Height          =   1215
         Left            =   -66360
         TabIndex        =   762
         Top             =   720
         Width           =   4695
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel44 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":8733
            TabIndex        =   884
            Top             =   360
            Width           =   2055
         End
         Begin VB.CommandButton Command12 
            Caption         =   "����ͳ������"
            Height          =   375
            Left            =   2760
            TabIndex        =   763
            Top             =   720
            Width           =   1695
         End
      End
      Begin ѪҺ������60ƿ.SystemGraph SystemGraph1 
         Height          =   2775
         Left            =   -72000
         TabIndex        =   761
         Top             =   6960
         Width           =   9015
         _ExtentX        =   15901
         _ExtentY        =   4895
         MaxScale        =   0
      End
      Begin VB.TextBox Text6 
         Height          =   285
         Left            =   -61320
         TabIndex        =   760
         Top             =   4560
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.TextBox Text5 
         Height          =   375
         Left            =   -61320
         TabIndex        =   759
         Top             =   3960
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   -61440
         MultiLine       =   -1  'True
         TabIndex        =   758
         Top             =   3480
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   -61440
         MultiLine       =   -1  'True
         TabIndex        =   757
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
         Caption         =   "������Ϣ"
         Height          =   3975
         Left            =   -73200
         TabIndex        =   740
         Top             =   2880
         Width           =   4695
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel82 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":87A7
            TabIndex        =   1020
            Top             =   240
            Width           =   1935
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel81 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8805
            TabIndex        =   1019
            Top             =   240
            Width           =   1095
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel80 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8879
            TabIndex        =   1018
            Top             =   840
            Width           =   2535
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel79 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":88D7
            TabIndex        =   1017
            Top             =   840
            Width           =   975
         End
         Begin VB.CommandButton Command11 
            Caption         =   "�����ļ���ӡ"
            Height          =   495
            Left            =   3120
            TabIndex        =   891
            Top             =   3360
            Width           =   1335
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel46 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8953
            TabIndex        =   890
            Top             =   3600
            Width           =   1365
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel45 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":89B1
            TabIndex        =   889
            Top             =   3600
            Width           =   975
         End
         Begin RichTextLib.RichTextBox RichTextBox2 
            Height          =   2895
            Left            =   2640
            TabIndex        =   888
            Top             =   240
            Visible         =   0   'False
            Width           =   1815
            _ExtentX        =   3201
            _ExtentY        =   5106
            _Version        =   393217
            TextRTF         =   $"workfrm.frx":8A19
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel40 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8AB6
            TabIndex        =   756
            Top             =   3240
            Width           =   2295
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel39 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8B14
            TabIndex        =   755
            Top             =   3240
            Width           =   975
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel38 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8B7C
            TabIndex        =   754
            Top             =   2880
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel37 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8BDA
            TabIndex        =   753
            Top             =   2880
            Width           =   975
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel36 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8C42
            TabIndex        =   752
            Top             =   2520
            Width           =   2415
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel35 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8CA0
            TabIndex        =   751
            Top             =   2520
            Width           =   975
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel34 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8D0E
            TabIndex        =   750
            Top             =   2160
            Width           =   1815
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel33 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8D6C
            TabIndex        =   749
            Top             =   2160
            Width           =   975
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel32 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8DE0
            TabIndex        =   748
            Top             =   1800
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel31 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8E3E
            TabIndex        =   747
            Top             =   1800
            Width           =   1095
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel30 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8EB2
            TabIndex        =   746
            Top             =   1440
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel29 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8F10
            TabIndex        =   745
            Top             =   1440
            Width           =   975
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel28 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":8F84
            TabIndex        =   744
            Top             =   1080
            Width           =   2055
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel27 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":8FE2
            TabIndex        =   743
            Top             =   1080
            Width           =   975
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel26 
            Height          =   255
            Left            =   1200
            OleObjectBlob   =   "workfrm.frx":9056
            TabIndex        =   742
            Top             =   525
            Width           =   1935
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel25 
            Height          =   255
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":90B4
            TabIndex        =   741
            Top             =   525
            Width           =   975
         End
      End
      Begin VB.Frame Frame10 
         Caption         =   "��ѯ��ʾ"
         Height          =   855
         Left            =   -73200
         TabIndex        =   737
         Top             =   1920
         Width           =   4695
         Begin VB.CommandButton Command10 
            Caption         =   "������ʷ����"
            Height          =   375
            Left            =   2760
            TabIndex        =   739
            Top             =   240
            Width           =   1815
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel24 
            Height          =   375
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":9122
            TabIndex        =   738
            Top             =   360
            Width           =   2175
         End
      End
      Begin VB.Frame Frame8 
         Caption         =   "У׼"
         Height          =   1935
         Left            =   -66240
         TabIndex        =   733
         Top             =   3720
         Width           =   3615
         Begin VB.CommandButton Command22 
            Caption         =   "У׼����"
            Height          =   375
            Left            =   600
            TabIndex        =   1021
            Top             =   1320
            Width           =   1050
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel57 
            Height          =   255
            Left            =   2400
            OleObjectBlob   =   "workfrm.frx":9198
            TabIndex        =   896
            Top             =   960
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel56 
            Height          =   255
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":91F6
            TabIndex        =   895
            Top             =   960
            Width           =   1695
         End
         Begin VB.CommandButton Command8 
            Caption         =   "ȷ��"
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
            OleObjectBlob   =   "workfrm.frx":9266
            TabIndex        =   734
            Top             =   480
            Width           =   1695
         End
      End
      Begin VB.Frame Frame6 
         Caption         =   "����/��������"
         Height          =   1695
         Left            =   -66240
         TabIndex        =   726
         Top             =   1560
         Width           =   3615
         Begin VB.PictureBox Picture3 
            AutoSize        =   -1  'True
            Height          =   525
            Left            =   2760
            Picture         =   "workfrm.frx":92D6
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   732
            Top             =   960
            Width           =   525
         End
         Begin VB.CommandButton Command4 
            Caption         =   "����"
            Height          =   375
            Left            =   1440
            TabIndex        =   731
            Top             =   1080
            Width           =   750
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel15 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":96CE
            TabIndex        =   730
            Top             =   1200
            Width           =   975
         End
         Begin VB.PictureBox Picture2 
            AutoSize        =   -1  'True
            Height          =   525
            Left            =   2760
            Picture         =   "workfrm.frx":9736
            ScaleHeight     =   465
            ScaleWidth      =   465
            TabIndex        =   729
            Top             =   360
            Width           =   525
         End
         Begin VB.CommandButton Command3 
            Caption         =   "����"
            Height          =   375
            Left            =   1440
            TabIndex        =   728
            Top             =   480
            Width           =   750
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel14 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":9B2E
            TabIndex        =   727
            Top             =   600
            Width           =   975
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "�ڼ��ѯ"
         Height          =   1935
         Left            =   7920
         TabIndex        =   724
         Top             =   8520
         Width           =   3375
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel12 
            Height          =   255
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":9B96
            TabIndex        =   920
            Top             =   360
            Width           =   1695
         End
         Begin VB.TextBox Text15 
            Height          =   390
            Left            =   360
            TabIndex        =   919
            Top             =   720
            Width           =   2415
         End
         Begin VB.CommandButton Command2 
            Caption         =   "��ѯ"
            Height          =   375
            Left            =   2280
            TabIndex        =   725
            Top             =   1320
            Width           =   750
         End
      End
      Begin VB.Frame Frame3 
         BackColor       =   &H00C0C000&
         Caption         =   "������"
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
            Picture         =   "workfrm.frx":9C00
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
            Picture         =   "workfrm.frx":9FF8
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
            Picture         =   "workfrm.frx":A3F0
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
            Picture         =   "workfrm.frx":A7E8
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
            Picture         =   "workfrm.frx":ABE0
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
            Picture         =   "workfrm.frx":AFD8
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
            Picture         =   "workfrm.frx":B3D0
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
            Picture         =   "workfrm.frx":B7C8
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
            Picture         =   "workfrm.frx":BBC0
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
            Picture         =   "workfrm.frx":BFB8
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
            Picture         =   "workfrm.frx":C3B0
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
            Picture         =   "workfrm.frx":C7A8
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
            Picture         =   "workfrm.frx":CBA0
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
            Picture         =   "workfrm.frx":CF98
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
            Picture         =   "workfrm.frx":D390
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
            Picture         =   "workfrm.frx":D788
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
            Picture         =   "workfrm.frx":DB80
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
            Picture         =   "workfrm.frx":DF78
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
            Picture         =   "workfrm.frx":E370
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
            Picture         =   "workfrm.frx":E768
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
            OleObjectBlob   =   "workfrm.frx":EB60
            TabIndex        =   264
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   41
            Left            =   1800
            OleObjectBlob   =   "workfrm.frx":EBC4
            TabIndex        =   265
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   42
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":EC28
            TabIndex        =   266
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   43
            Left            =   4680
            OleObjectBlob   =   "workfrm.frx":EC8C
            TabIndex        =   267
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   44
            Left            =   6120
            OleObjectBlob   =   "workfrm.frx":ECF0
            TabIndex        =   268
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   45
            Left            =   7560
            OleObjectBlob   =   "workfrm.frx":ED54
            TabIndex        =   269
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   46
            Left            =   9000
            OleObjectBlob   =   "workfrm.frx":EDB8
            TabIndex        =   270
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   47
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":EE1C
            TabIndex        =   271
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   48
            Left            =   11880
            OleObjectBlob   =   "workfrm.frx":EE80
            TabIndex        =   272
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   49
            Left            =   13320
            OleObjectBlob   =   "workfrm.frx":EEE4
            TabIndex        =   273
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   50
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":EF48
            TabIndex        =   274
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   51
            Left            =   1800
            OleObjectBlob   =   "workfrm.frx":EFAC
            TabIndex        =   275
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   52
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":F010
            TabIndex        =   276
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   53
            Left            =   4680
            OleObjectBlob   =   "workfrm.frx":F074
            TabIndex        =   277
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   54
            Left            =   6120
            OleObjectBlob   =   "workfrm.frx":F0D8
            TabIndex        =   278
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   55
            Left            =   7560
            OleObjectBlob   =   "workfrm.frx":F13C
            TabIndex        =   279
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   56
            Left            =   9000
            OleObjectBlob   =   "workfrm.frx":F1A0
            TabIndex        =   280
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   57
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":F204
            TabIndex        =   281
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   58
            Left            =   11880
            OleObjectBlob   =   "workfrm.frx":F268
            TabIndex        =   282
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   59
            Left            =   13320
            OleObjectBlob   =   "workfrm.frx":F2CC
            TabIndex        =   283
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":F330
            TabIndex        =   324
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":F38E
            TabIndex        =   325
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   42
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":F3EC
            TabIndex        =   326
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   43
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":F44A
            TabIndex        =   327
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":F4A8
            TabIndex        =   328
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":F506
            TabIndex        =   329
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":F564
            TabIndex        =   330
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":F5C2
            TabIndex        =   331
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":F620
            TabIndex        =   332
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":F67E
            TabIndex        =   333
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":F6DC
            TabIndex        =   334
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   51
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":F73A
            TabIndex        =   335
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":F798
            TabIndex        =   336
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":F7F6
            TabIndex        =   337
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   54
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":F854
            TabIndex        =   338
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":F8B2
            TabIndex        =   339
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":F910
            TabIndex        =   340
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":F96E
            TabIndex        =   341
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":F9CC
            TabIndex        =   342
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":FA2A
            TabIndex        =   343
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":FA88
            TabIndex        =   364
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":FAE6
            TabIndex        =   365
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":FB44
            TabIndex        =   366
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":FBA2
            TabIndex        =   367
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":FC00
            TabIndex        =   368
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":FC5E
            TabIndex        =   369
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":FCBC
            TabIndex        =   370
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":FD1A
            TabIndex        =   371
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":FD78
            TabIndex        =   372
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":FDD6
            TabIndex        =   373
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":FE34
            TabIndex        =   374
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   51
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":FE92
            TabIndex        =   375
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":FEF0
            TabIndex        =   376
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":FF4E
            TabIndex        =   377
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":FFAC
            TabIndex        =   378
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1000A
            TabIndex        =   379
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":10068
            TabIndex        =   380
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":100C6
            TabIndex        =   381
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":10124
            TabIndex        =   382
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   59
            Left            =   9120
            OleObjectBlob   =   "workfrm.frx":10182
            TabIndex        =   383
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":101E0
            TabIndex        =   404
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1023E
            TabIndex        =   405
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1029C
            TabIndex        =   406
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":102FA
            TabIndex        =   407
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":10358
            TabIndex        =   408
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   45
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":103B6
            TabIndex        =   409
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":10414
            TabIndex        =   410
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":10472
            TabIndex        =   411
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   48
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":104D0
            TabIndex        =   412
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1052E
            TabIndex        =   413
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1058C
            TabIndex        =   414
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":105EA
            TabIndex        =   415
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":10648
            TabIndex        =   416
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   53
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":106A6
            TabIndex        =   417
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   54
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":10704
            TabIndex        =   418
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   55
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":10762
            TabIndex        =   419
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":107C0
            TabIndex        =   420
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1081E
            TabIndex        =   421
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1087C
            TabIndex        =   422
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":108DA
            TabIndex        =   423
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   40
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":10938
            TabIndex        =   444
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":10996
            TabIndex        =   445
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":109F4
            TabIndex        =   446
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   43
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":10A52
            TabIndex        =   447
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   44
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":10AB0
            TabIndex        =   448
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":10B0E
            TabIndex        =   449
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":10B6C
            TabIndex        =   450
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":10BCA
            TabIndex        =   451
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   48
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":10C28
            TabIndex        =   452
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":10C86
            TabIndex        =   453
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":10CE4
            TabIndex        =   454
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   51
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":10D42
            TabIndex        =   455
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":10DA0
            TabIndex        =   456
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   53
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":10DFE
            TabIndex        =   457
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":10E5C
            TabIndex        =   458
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   55
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":10EBA
            TabIndex        =   459
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":10F18
            TabIndex        =   460
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":10F76
            TabIndex        =   461
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":10FD4
            TabIndex        =   462
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   59
            Left            =   9360
            OleObjectBlob   =   "workfrm.frx":11032
            TabIndex        =   463
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":11090
            TabIndex        =   484
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":110EE
            TabIndex        =   485
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1114C
            TabIndex        =   486
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":111AA
            TabIndex        =   487
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":11208
            TabIndex        =   488
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":11266
            TabIndex        =   489
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":112C4
            TabIndex        =   490
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":11322
            TabIndex        =   491
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":11380
            TabIndex        =   492
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":113DE
            TabIndex        =   493
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1143C
            TabIndex        =   494
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1149A
            TabIndex        =   495
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":114F8
            TabIndex        =   496
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":11556
            TabIndex        =   497
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":115B4
            TabIndex        =   498
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":11612
            TabIndex        =   499
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":11670
            TabIndex        =   500
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":116CE
            TabIndex        =   501
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   58
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":1172C
            TabIndex        =   502
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1178A
            TabIndex        =   503
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":117E8
            TabIndex        =   524
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":11846
            TabIndex        =   525
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   42
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":118A4
            TabIndex        =   526
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   43
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":11902
            TabIndex        =   527
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":11960
            TabIndex        =   528
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":119BE
            TabIndex        =   529
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":11A1C
            TabIndex        =   530
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":11A7A
            TabIndex        =   531
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":11AD8
            TabIndex        =   532
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":11B36
            TabIndex        =   533
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":11B94
            TabIndex        =   534
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":11BF2
            TabIndex        =   535
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":11C50
            TabIndex        =   536
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":11CAE
            TabIndex        =   537
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   54
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":11D0C
            TabIndex        =   538
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":11D6A
            TabIndex        =   539
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":11DC8
            TabIndex        =   540
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   57
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":11E26
            TabIndex        =   541
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":11E84
            TabIndex        =   542
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":11EE2
            TabIndex        =   543
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   40
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":11F40
            TabIndex        =   564
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":11F9E
            TabIndex        =   565
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":11FFC
            TabIndex        =   566
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   43
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":1205A
            TabIndex        =   567
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":120B8
            TabIndex        =   568
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":12116
            TabIndex        =   569
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":12174
            TabIndex        =   570
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":121D2
            TabIndex        =   571
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":12230
            TabIndex        =   572
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1228E
            TabIndex        =   573
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":122EC
            TabIndex        =   574
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1234A
            TabIndex        =   575
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":123A8
            TabIndex        =   576
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":12406
            TabIndex        =   577
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   54
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":12464
            TabIndex        =   578
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   55
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":124C2
            TabIndex        =   579
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   56
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":12520
            TabIndex        =   580
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1257E
            TabIndex        =   581
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":125DC
            TabIndex        =   582
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1263A
            TabIndex        =   583
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   40
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":12698
            TabIndex        =   604
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":126F6
            TabIndex        =   605
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":12754
            TabIndex        =   606
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":127B2
            TabIndex        =   607
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   44
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":12810
            TabIndex        =   608
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1286E
            TabIndex        =   609
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":128CC
            TabIndex        =   610
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1292A
            TabIndex        =   611
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":12988
            TabIndex        =   612
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   49
            Left            =   9360
            OleObjectBlob   =   "workfrm.frx":129E6
            TabIndex        =   613
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   50
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":12A44
            TabIndex        =   614
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   51
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":12AA2
            TabIndex        =   615
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":12B00
            TabIndex        =   616
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   53
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":12B5E
            TabIndex        =   617
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   54
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":12BBC
            TabIndex        =   618
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":12C1A
            TabIndex        =   619
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":12C78
            TabIndex        =   620
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":12CD6
            TabIndex        =   621
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":12D34
            TabIndex        =   622
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   59
            Left            =   9360
            OleObjectBlob   =   "workfrm.frx":12D92
            TabIndex        =   623
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":12DF0
            TabIndex        =   644
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":12E4E
            TabIndex        =   645
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":12EAC
            TabIndex        =   646
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":12F0A
            TabIndex        =   647
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":12F68
            TabIndex        =   648
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":12FC6
            TabIndex        =   649
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":13024
            TabIndex        =   650
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":13082
            TabIndex        =   651
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":130E0
            TabIndex        =   652
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1313E
            TabIndex        =   653
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1319C
            TabIndex        =   654
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   51
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":131FA
            TabIndex        =   655
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   52
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":13258
            TabIndex        =   656
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":132B6
            TabIndex        =   657
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":13314
            TabIndex        =   658
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   55
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":13372
            TabIndex        =   659
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":133D0
            TabIndex        =   660
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1342E
            TabIndex        =   661
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   58
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":1348C
            TabIndex        =   662
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":134EA
            TabIndex        =   663
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":13548
            TabIndex        =   704
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":135A6
            TabIndex        =   705
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":13604
            TabIndex        =   706
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":13662
            TabIndex        =   707
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":136C0
            TabIndex        =   708
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1371E
            TabIndex        =   709
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   46
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":1377C
            TabIndex        =   710
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":137DA
            TabIndex        =   711
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":13838
            TabIndex        =   712
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":13896
            TabIndex        =   713
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":138F4
            TabIndex        =   714
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":13952
            TabIndex        =   715
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   52
            Left            =   2400
            OleObjectBlob   =   "workfrm.frx":139B0
            TabIndex        =   716
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   53
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":13A0E
            TabIndex        =   717
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":13A6C
            TabIndex        =   718
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":13ACA
            TabIndex        =   719
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":13B28
            TabIndex        =   720
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":13B86
            TabIndex        =   721
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":13BE4
            TabIndex        =   722
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":13C42
            TabIndex        =   723
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":13CA0
            TabIndex        =   804
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":13CFE
            TabIndex        =   805
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":13D5C
            TabIndex        =   806
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":13DBA
            TabIndex        =   807
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":13E18
            TabIndex        =   808
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":13E76
            TabIndex        =   809
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":13ED4
            TabIndex        =   810
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":13F32
            TabIndex        =   811
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":13F90
            TabIndex        =   812
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   49
            Left            =   9360
            OleObjectBlob   =   "workfrm.frx":13FEE
            TabIndex        =   813
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1404C
            TabIndex        =   814
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":140AA
            TabIndex        =   815
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":14108
            TabIndex        =   816
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":14166
            TabIndex        =   817
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":141C4
            TabIndex        =   818
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":14222
            TabIndex        =   819
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":14280
            TabIndex        =   820
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":142DE
            TabIndex        =   821
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1433C
            TabIndex        =   822
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   59
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1439A
            TabIndex        =   823
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   40
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":143F8
            TabIndex        =   864
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   41
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":14456
            TabIndex        =   865
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   42
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":144B4
            TabIndex        =   866
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   43
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":14512
            TabIndex        =   867
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   44
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":14570
            TabIndex        =   868
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   45
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":145CE
            TabIndex        =   869
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   46
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1462C
            TabIndex        =   870
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   47
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1468A
            TabIndex        =   871
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   48
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":146E8
            TabIndex        =   872
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   49
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":14746
            TabIndex        =   873
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   50
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":147A4
            TabIndex        =   874
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":14802
            TabIndex        =   875
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   52
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":14860
            TabIndex        =   876
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   53
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":148BE
            TabIndex        =   877
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   54
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1491C
            TabIndex        =   878
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   55
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1497A
            TabIndex        =   879
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   56
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":149D8
            TabIndex        =   880
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   57
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":14A36
            TabIndex        =   881
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   58
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":14A94
            TabIndex        =   882
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   59
            Left            =   9120
            OleObjectBlob   =   "workfrm.frx":14AF2
            TabIndex        =   883
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   40
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":14B50
            TabIndex        =   997
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   41
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":14BAE
            TabIndex        =   998
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   42
            Left            =   3120
            OleObjectBlob   =   "workfrm.frx":14C0C
            TabIndex        =   999
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   43
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":14C6A
            TabIndex        =   1000
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   44
            Left            =   6000
            OleObjectBlob   =   "workfrm.frx":14CC8
            TabIndex        =   1001
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   45
            Left            =   7200
            OleObjectBlob   =   "workfrm.frx":14D26
            TabIndex        =   1002
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   46
            Left            =   8880
            OleObjectBlob   =   "workfrm.frx":14D84
            TabIndex        =   1003
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   47
            Left            =   10200
            OleObjectBlob   =   "workfrm.frx":14DE2
            TabIndex        =   1004
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   48
            Left            =   11640
            OleObjectBlob   =   "workfrm.frx":14E40
            TabIndex        =   1005
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   49
            Left            =   13200
            OleObjectBlob   =   "workfrm.frx":14E9E
            TabIndex        =   1006
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   50
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":14EFC
            TabIndex        =   1007
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   51
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":14F5A
            TabIndex        =   1008
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   52
            Left            =   3000
            OleObjectBlob   =   "workfrm.frx":14FB8
            TabIndex        =   1009
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   53
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":15016
            TabIndex        =   1010
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   54
            Left            =   6000
            OleObjectBlob   =   "workfrm.frx":15074
            TabIndex        =   1011
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   55
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":150D2
            TabIndex        =   1012
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   56
            Left            =   8880
            OleObjectBlob   =   "workfrm.frx":15130
            TabIndex        =   1013
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   57
            Left            =   10320
            OleObjectBlob   =   "workfrm.frx":1518E
            TabIndex        =   1014
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   58
            Left            =   11640
            OleObjectBlob   =   "workfrm.frx":151EC
            TabIndex        =   1015
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   59
            Left            =   13200
            OleObjectBlob   =   "workfrm.frx":1524A
            TabIndex        =   1016
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
      End
      Begin VB.Frame Frame2 
         BackColor       =   &H00C0C000&
         Caption         =   "�ڶ���"
         Height          =   2175
         Left            =   360
         TabIndex        =   222
         Top             =   3360
         Width           =   14535
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":152A8
            TabIndex        =   624
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":15306
            TabIndex        =   584
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":15364
            TabIndex        =   544
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":153C2
            TabIndex        =   504
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   20
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":15420
            TabIndex        =   464
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":1547E
            TabIndex        =   424
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":154DC
            TabIndex        =   384
            Top             =   120
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   20
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1553A
            TabIndex        =   344
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   20
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":15598
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
            Picture         =   "workfrm.frx":155F6
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
            Picture         =   "workfrm.frx":159EE
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
            Picture         =   "workfrm.frx":15DE6
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
            Picture         =   "workfrm.frx":161DE
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
            Picture         =   "workfrm.frx":165D6
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
            Picture         =   "workfrm.frx":169CE
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
            Picture         =   "workfrm.frx":16DC6
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
            Picture         =   "workfrm.frx":171BE
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
            Picture         =   "workfrm.frx":175B6
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
            Picture         =   "workfrm.frx":179AE
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
            Picture         =   "workfrm.frx":17DA6
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
            Picture         =   "workfrm.frx":1819E
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
            Picture         =   "workfrm.frx":18596
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
            Picture         =   "workfrm.frx":1898E
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
            Picture         =   "workfrm.frx":18D86
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
            Picture         =   "workfrm.frx":1917E
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
            Picture         =   "workfrm.frx":19576
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
            Picture         =   "workfrm.frx":1996E
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
            Picture         =   "workfrm.frx":19D66
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
            Picture         =   "workfrm.frx":1A15E
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
            OleObjectBlob   =   "workfrm.frx":1A556
            TabIndex        =   223
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   21
            Left            =   1800
            OleObjectBlob   =   "workfrm.frx":1A5BA
            TabIndex        =   224
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   22
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":1A61E
            TabIndex        =   225
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   23
            Left            =   4680
            OleObjectBlob   =   "workfrm.frx":1A682
            TabIndex        =   226
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   24
            Left            =   6120
            OleObjectBlob   =   "workfrm.frx":1A6E6
            TabIndex        =   227
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   25
            Left            =   7560
            OleObjectBlob   =   "workfrm.frx":1A74A
            TabIndex        =   228
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   26
            Left            =   9000
            OleObjectBlob   =   "workfrm.frx":1A7AE
            TabIndex        =   229
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   27
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":1A812
            TabIndex        =   230
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   28
            Left            =   11880
            OleObjectBlob   =   "workfrm.frx":1A876
            TabIndex        =   231
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   29
            Left            =   13320
            OleObjectBlob   =   "workfrm.frx":1A8DA
            TabIndex        =   232
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   30
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":1A93E
            TabIndex        =   233
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   31
            Left            =   1800
            OleObjectBlob   =   "workfrm.frx":1A9A2
            TabIndex        =   234
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   32
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":1AA06
            TabIndex        =   235
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   33
            Left            =   4680
            OleObjectBlob   =   "workfrm.frx":1AA6A
            TabIndex        =   236
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   34
            Left            =   6120
            OleObjectBlob   =   "workfrm.frx":1AACE
            TabIndex        =   237
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   35
            Left            =   7560
            OleObjectBlob   =   "workfrm.frx":1AB32
            TabIndex        =   238
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   36
            Left            =   9000
            OleObjectBlob   =   "workfrm.frx":1AB96
            TabIndex        =   239
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   37
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":1ABFA
            TabIndex        =   240
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   38
            Left            =   11880
            OleObjectBlob   =   "workfrm.frx":1AC5E
            TabIndex        =   241
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   39
            Left            =   13320
            OleObjectBlob   =   "workfrm.frx":1ACC2
            TabIndex        =   242
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1AD26
            TabIndex        =   305
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1AD84
            TabIndex        =   306
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1ADE2
            TabIndex        =   307
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1AE40
            TabIndex        =   308
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1AE9E
            TabIndex        =   309
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   26
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":1AEFC
            TabIndex        =   310
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1AF5A
            TabIndex        =   311
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1AFB8
            TabIndex        =   312
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1B016
            TabIndex        =   313
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1B074
            TabIndex        =   314
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   31
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1B0D2
            TabIndex        =   315
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   32
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":1B130
            TabIndex        =   316
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1B18E
            TabIndex        =   317
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1B1EC
            TabIndex        =   318
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   35
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1B24A
            TabIndex        =   319
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1B2A8
            TabIndex        =   320
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1B306
            TabIndex        =   321
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1B364
            TabIndex        =   322
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1B3C2
            TabIndex        =   323
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1B420
            TabIndex        =   345
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1B47E
            TabIndex        =   346
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1B4DC
            TabIndex        =   347
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1B53A
            TabIndex        =   348
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1B598
            TabIndex        =   349
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1B5F6
            TabIndex        =   350
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1B654
            TabIndex        =   351
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1B6B2
            TabIndex        =   352
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1B710
            TabIndex        =   353
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1B76E
            TabIndex        =   354
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1B7CC
            TabIndex        =   355
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1B82A
            TabIndex        =   356
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1B888
            TabIndex        =   357
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1B8E6
            TabIndex        =   358
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1B944
            TabIndex        =   359
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1B9A2
            TabIndex        =   360
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1BA00
            TabIndex        =   361
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1BA5E
            TabIndex        =   362
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1BABC
            TabIndex        =   363
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1BB1A
            TabIndex        =   385
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   22
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":1BB78
            TabIndex        =   386
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   23
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":1BBD6
            TabIndex        =   387
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   24
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":1BC34
            TabIndex        =   388
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   25
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1BC92
            TabIndex        =   389
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   26
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":1BCF0
            TabIndex        =   390
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   27
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1BD4E
            TabIndex        =   391
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1BDAC
            TabIndex        =   392
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1BE0A
            TabIndex        =   393
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1BE68
            TabIndex        =   394
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   31
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1BEC6
            TabIndex        =   395
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1BF24
            TabIndex        =   396
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   33
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":1BF82
            TabIndex        =   397
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   34
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":1BFE0
            TabIndex        =   398
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   35
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1C03E
            TabIndex        =   399
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1C09C
            TabIndex        =   400
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1C0FA
            TabIndex        =   401
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1C158
            TabIndex        =   402
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   375
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1C1B6
            TabIndex        =   403
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   21
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1C214
            TabIndex        =   425
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1C272
            TabIndex        =   426
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   23
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":1C2D0
            TabIndex        =   427
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   24
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":1C32E
            TabIndex        =   428
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   25
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1C38C
            TabIndex        =   429
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1C3EA
            TabIndex        =   430
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1C448
            TabIndex        =   431
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   28
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":1C4A6
            TabIndex        =   432
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1C504
            TabIndex        =   433
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1C562
            TabIndex        =   434
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1C5C0
            TabIndex        =   435
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1C61E
            TabIndex        =   436
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1C67C
            TabIndex        =   437
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1C6DA
            TabIndex        =   438
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   35
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1C738
            TabIndex        =   439
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1C796
            TabIndex        =   440
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1C7F4
            TabIndex        =   441
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1C852
            TabIndex        =   442
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1C8B0
            TabIndex        =   443
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1C90E
            TabIndex        =   465
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1C96C
            TabIndex        =   466
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   23
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":1C9CA
            TabIndex        =   467
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1CA28
            TabIndex        =   468
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1CA86
            TabIndex        =   469
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1CAE4
            TabIndex        =   470
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1CB42
            TabIndex        =   471
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1CBA0
            TabIndex        =   472
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1CBFE
            TabIndex        =   473
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1CC5C
            TabIndex        =   474
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1CCBA
            TabIndex        =   475
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1CD18
            TabIndex        =   476
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   33
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":1CD76
            TabIndex        =   477
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1CDD4
            TabIndex        =   478
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   35
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1CE32
            TabIndex        =   479
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1CE90
            TabIndex        =   480
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1CEEE
            TabIndex        =   481
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1CF4C
            TabIndex        =   482
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1CFAA
            TabIndex        =   483
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   21
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1D008
            TabIndex        =   505
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1D066
            TabIndex        =   506
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1D0C4
            TabIndex        =   507
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1D122
            TabIndex        =   508
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1D180
            TabIndex        =   509
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1D1DE
            TabIndex        =   510
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1D23C
            TabIndex        =   511
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1D29A
            TabIndex        =   512
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1D2F8
            TabIndex        =   513
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1D356
            TabIndex        =   514
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1D3B4
            TabIndex        =   515
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1D412
            TabIndex        =   516
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1D470
            TabIndex        =   517
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1D4CE
            TabIndex        =   518
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1D52C
            TabIndex        =   519
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1D58A
            TabIndex        =   520
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1D5E8
            TabIndex        =   521
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1D646
            TabIndex        =   522
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1D6A4
            TabIndex        =   523
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1D702
            TabIndex        =   545
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1D760
            TabIndex        =   546
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1D7BE
            TabIndex        =   547
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1D81C
            TabIndex        =   548
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   25
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1D87A
            TabIndex        =   549
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1D8D8
            TabIndex        =   550
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   27
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1D936
            TabIndex        =   551
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1D994
            TabIndex        =   552
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1D9F2
            TabIndex        =   553
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1DA50
            TabIndex        =   554
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1DAAE
            TabIndex        =   555
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1DB0C
            TabIndex        =   556
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1DB6A
            TabIndex        =   557
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1DBC8
            TabIndex        =   558
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1DC26
            TabIndex        =   559
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1DC84
            TabIndex        =   560
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   37
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1DCE2
            TabIndex        =   561
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   38
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":1DD40
            TabIndex        =   562
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1DD9E
            TabIndex        =   563
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1DDFC
            TabIndex        =   585
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   22
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":1DE5A
            TabIndex        =   586
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1DEB8
            TabIndex        =   587
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   24
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":1DF16
            TabIndex        =   588
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   25
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":1DF74
            TabIndex        =   589
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1DFD2
            TabIndex        =   590
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   27
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1E030
            TabIndex        =   591
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   28
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":1E08E
            TabIndex        =   592
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1E0EC
            TabIndex        =   593
            Top             =   240
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1E14A
            TabIndex        =   594
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   31
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1E1A8
            TabIndex        =   595
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   32
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":1E206
            TabIndex        =   596
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1E264
            TabIndex        =   597
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   34
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":1E2C2
            TabIndex        =   598
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1E320
            TabIndex        =   599
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1E37E
            TabIndex        =   600
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   37
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1E3DC
            TabIndex        =   601
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1E43A
            TabIndex        =   602
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1E498
            TabIndex        =   603
            Top             =   1200
            Visible         =   0   'False
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   21
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1E4F6
            TabIndex        =   625
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1E554
            TabIndex        =   626
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1E5B2
            TabIndex        =   627
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1E610
            TabIndex        =   628
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1E66E
            TabIndex        =   629
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1E6CC
            TabIndex        =   630
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   27
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1E72A
            TabIndex        =   631
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1E788
            TabIndex        =   632
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1E7E6
            TabIndex        =   633
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1E844
            TabIndex        =   634
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   31
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1E8A2
            TabIndex        =   635
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   32
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":1E900
            TabIndex        =   636
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1E95E
            TabIndex        =   637
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1E9BC
            TabIndex        =   638
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1EA1A
            TabIndex        =   639
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1EA78
            TabIndex        =   640
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   37
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1EAD6
            TabIndex        =   641
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1EB34
            TabIndex        =   642
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1EB92
            TabIndex        =   643
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   20
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1EBF0
            TabIndex        =   684
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1EC4E
            TabIndex        =   685
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1ECAC
            TabIndex        =   686
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1ED0A
            TabIndex        =   687
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1ED68
            TabIndex        =   688
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1EDC6
            TabIndex        =   689
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1EE24
            TabIndex        =   690
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1EE82
            TabIndex        =   691
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1EEE0
            TabIndex        =   692
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1EF3E
            TabIndex        =   693
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1EF9C
            TabIndex        =   694
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1EFFA
            TabIndex        =   695
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1F058
            TabIndex        =   696
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1F0B6
            TabIndex        =   697
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1F114
            TabIndex        =   698
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1F172
            TabIndex        =   699
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1F1D0
            TabIndex        =   700
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   37
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":1F22E
            TabIndex        =   701
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1F28C
            TabIndex        =   702
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1F2EA
            TabIndex        =   703
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   20
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1F348
            TabIndex        =   784
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   21
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":1F3A6
            TabIndex        =   785
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1F404
            TabIndex        =   786
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1F462
            TabIndex        =   787
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1F4C0
            TabIndex        =   788
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1F51E
            TabIndex        =   789
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1F57C
            TabIndex        =   790
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1F5DA
            TabIndex        =   791
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   28
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":1F638
            TabIndex        =   792
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1F696
            TabIndex        =   793
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1F6F4
            TabIndex        =   794
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1F752
            TabIndex        =   795
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   32
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":1F7B0
            TabIndex        =   796
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1F80E
            TabIndex        =   797
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1F86C
            TabIndex        =   798
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1F8CA
            TabIndex        =   799
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1F928
            TabIndex        =   800
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1F986
            TabIndex        =   801
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1F9E4
            TabIndex        =   802
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1FA42
            TabIndex        =   803
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   20
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1FAA0
            TabIndex        =   844
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   21
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1FAFE
            TabIndex        =   845
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   22
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1FB5C
            TabIndex        =   846
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   23
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1FBBA
            TabIndex        =   847
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   24
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1FC18
            TabIndex        =   848
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   25
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":1FC76
            TabIndex        =   849
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   26
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":1FCD4
            TabIndex        =   850
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   27
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":1FD32
            TabIndex        =   851
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   28
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":1FD90
            TabIndex        =   852
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   29
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":1FDEE
            TabIndex        =   853
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   30
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":1FE4C
            TabIndex        =   854
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   31
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":1FEAA
            TabIndex        =   855
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   32
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":1FF08
            TabIndex        =   856
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   33
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":1FF66
            TabIndex        =   857
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   34
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":1FFC4
            TabIndex        =   858
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   35
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":20022
            TabIndex        =   859
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   36
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":20080
            TabIndex        =   860
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   37
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":200DE
            TabIndex        =   861
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   38
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2013C
            TabIndex        =   862
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   39
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2019A
            TabIndex        =   863
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   20
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":201F8
            TabIndex        =   977
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   21
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":20256
            TabIndex        =   978
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   22
            Left            =   3120
            OleObjectBlob   =   "workfrm.frx":202B4
            TabIndex        =   979
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   23
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":20312
            TabIndex        =   980
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   24
            Left            =   6000
            OleObjectBlob   =   "workfrm.frx":20370
            TabIndex        =   981
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   25
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":203CE
            TabIndex        =   982
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   26
            Left            =   8880
            OleObjectBlob   =   "workfrm.frx":2042C
            TabIndex        =   983
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   27
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":2048A
            TabIndex        =   984
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   28
            Left            =   11760
            OleObjectBlob   =   "workfrm.frx":204E8
            TabIndex        =   985
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   29
            Left            =   13200
            OleObjectBlob   =   "workfrm.frx":20546
            TabIndex        =   986
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   30
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":205A4
            TabIndex        =   987
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   31
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":20602
            TabIndex        =   988
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   32
            Left            =   3120
            OleObjectBlob   =   "workfrm.frx":20660
            TabIndex        =   989
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   33
            Left            =   4200
            OleObjectBlob   =   "workfrm.frx":206BE
            TabIndex        =   990
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   34
            Left            =   5880
            OleObjectBlob   =   "workfrm.frx":2071C
            TabIndex        =   991
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   35
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":2077A
            TabIndex        =   992
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   36
            Left            =   8880
            OleObjectBlob   =   "workfrm.frx":207D8
            TabIndex        =   993
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   37
            Left            =   10320
            OleObjectBlob   =   "workfrm.frx":20836
            TabIndex        =   994
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   38
            Left            =   11760
            OleObjectBlob   =   "workfrm.frx":20894
            TabIndex        =   995
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   39
            Left            =   13200
            OleObjectBlob   =   "workfrm.frx":208F2
            TabIndex        =   996
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
      End
      Begin VB.Frame Frame1 
         BackColor       =   &H00C0C000&
         Caption         =   "��һ��"
         Height          =   2175
         Left            =   360
         TabIndex        =   1
         Top             =   600
         Width           =   14535
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   0
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":20950
            TabIndex        =   957
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":209AE
            TabIndex        =   824
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   0
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":20A0C
            TabIndex        =   764
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20A6A
            TabIndex        =   664
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":20AC8
            TabIndex        =   218
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20B26
            TabIndex        =   202
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20B84
            TabIndex        =   182
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20BE2
            TabIndex        =   162
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   16
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":20C40
            TabIndex        =   158
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20C9E
            TabIndex        =   142
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20CFC
            TabIndex        =   122
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20D5A
            TabIndex        =   102
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20DB8
            TabIndex        =   82
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20E16
            TabIndex        =   62
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   0
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":20E74
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
            Picture         =   "workfrm.frx":20ED2
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
            Picture         =   "workfrm.frx":212CA
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
            Picture         =   "workfrm.frx":216C2
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
            Picture         =   "workfrm.frx":21ABA
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
            Picture         =   "workfrm.frx":21EB2
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
            Picture         =   "workfrm.frx":222AA
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
            Picture         =   "workfrm.frx":226A2
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
            Picture         =   "workfrm.frx":22A9A
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
            Picture         =   "workfrm.frx":22E92
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
            Picture         =   "workfrm.frx":2328A
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
            Picture         =   "workfrm.frx":23682
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
            Picture         =   "workfrm.frx":23A7A
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
            Picture         =   "workfrm.frx":23E72
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
            Picture         =   "workfrm.frx":2426A
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
            Picture         =   "workfrm.frx":24662
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
            Picture         =   "workfrm.frx":24A5A
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
            Picture         =   "workfrm.frx":24E52
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
            Picture         =   "workfrm.frx":2524A
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
            Picture         =   "workfrm.frx":25642
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
            Picture         =   "workfrm.frx":25A3A
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
            OleObjectBlob   =   "workfrm.frx":25E32
            TabIndex        =   2
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   1
            Left            =   1800
            OleObjectBlob   =   "workfrm.frx":25E94
            TabIndex        =   3
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   2
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":25EF6
            TabIndex        =   4
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   3
            Left            =   4680
            OleObjectBlob   =   "workfrm.frx":25F58
            TabIndex        =   5
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   4
            Left            =   6120
            OleObjectBlob   =   "workfrm.frx":25FBA
            TabIndex        =   6
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   5
            Left            =   7560
            OleObjectBlob   =   "workfrm.frx":2601C
            TabIndex        =   7
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   6
            Left            =   9000
            OleObjectBlob   =   "workfrm.frx":2607E
            TabIndex        =   8
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   7
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":260E0
            TabIndex        =   9
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   8
            Left            =   11880
            OleObjectBlob   =   "workfrm.frx":26142
            TabIndex        =   10
            Top             =   240
            Width           =   255
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   9
            Left            =   13320
            OleObjectBlob   =   "workfrm.frx":261A4
            TabIndex        =   11
            Top             =   240
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   10
            Left            =   360
            OleObjectBlob   =   "workfrm.frx":26208
            TabIndex        =   13
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   11
            Left            =   1800
            OleObjectBlob   =   "workfrm.frx":2626C
            TabIndex        =   14
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   12
            Left            =   3240
            OleObjectBlob   =   "workfrm.frx":262D0
            TabIndex        =   15
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   13
            Left            =   4680
            OleObjectBlob   =   "workfrm.frx":26334
            TabIndex        =   16
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   14
            Left            =   6120
            OleObjectBlob   =   "workfrm.frx":26398
            TabIndex        =   17
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   15
            Left            =   7560
            OleObjectBlob   =   "workfrm.frx":263FC
            TabIndex        =   18
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   16
            Left            =   9000
            OleObjectBlob   =   "workfrm.frx":26460
            TabIndex        =   19
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   17
            Left            =   10440
            OleObjectBlob   =   "workfrm.frx":264C4
            TabIndex        =   20
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   18
            Left            =   11880
            OleObjectBlob   =   "workfrm.frx":26528
            TabIndex        =   21
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
            Height          =   255
            Index           =   19
            Left            =   13320
            OleObjectBlob   =   "workfrm.frx":2658C
            TabIndex        =   22
            Top             =   1200
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":265F0
            TabIndex        =   43
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2664E
            TabIndex        =   44
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":266AC
            TabIndex        =   45
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2670A
            TabIndex        =   46
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":26768
            TabIndex        =   47
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":267C6
            TabIndex        =   48
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   7
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":26824
            TabIndex        =   49
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":26882
            TabIndex        =   50
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":268E0
            TabIndex        =   51
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":2693E
            TabIndex        =   52
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2699C
            TabIndex        =   53
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   12
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":269FA
            TabIndex        =   54
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":26A58
            TabIndex        =   55
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":26AB6
            TabIndex        =   56
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   15
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":26B14
            TabIndex        =   57
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":26B72
            TabIndex        =   58
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":26BD0
            TabIndex        =   59
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   18
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":26C2E
            TabIndex        =   60
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":26C8C
            TabIndex        =   61
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":26CEA
            TabIndex        =   63
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":26D48
            TabIndex        =   64
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":26DA6
            TabIndex        =   65
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":26E04
            TabIndex        =   66
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":26E62
            TabIndex        =   67
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":26EC0
            TabIndex        =   68
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":26F1E
            TabIndex        =   69
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":26F7C
            TabIndex        =   70
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":26FDA
            TabIndex        =   71
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":27038
            TabIndex        =   72
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":27096
            TabIndex        =   73
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":270F4
            TabIndex        =   74
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":27152
            TabIndex        =   75
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":271B0
            TabIndex        =   76
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2720E
            TabIndex        =   77
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2726C
            TabIndex        =   78
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":272CA
            TabIndex        =   79
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":27328
            TabIndex        =   80
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
            Height          =   375
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":27386
            TabIndex        =   81
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":273E4
            TabIndex        =   83
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   2
            Left            =   2400
            OleObjectBlob   =   "workfrm.frx":27442
            TabIndex        =   84
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":274A0
            TabIndex        =   85
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":274FE
            TabIndex        =   86
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2755C
            TabIndex        =   87
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":275BA
            TabIndex        =   88
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":27618
            TabIndex        =   89
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":27676
            TabIndex        =   90
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":276D4
            TabIndex        =   91
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":27732
            TabIndex        =   92
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":27790
            TabIndex        =   93
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":277EE
            TabIndex        =   94
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   13
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":2784C
            TabIndex        =   95
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   14
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":278AA
            TabIndex        =   96
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":27908
            TabIndex        =   97
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":27966
            TabIndex        =   98
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":279C4
            TabIndex        =   99
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":27A22
            TabIndex        =   100
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":27A80
            TabIndex        =   101
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":27ADE
            TabIndex        =   103
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   2
            Left            =   2400
            OleObjectBlob   =   "workfrm.frx":27B3C
            TabIndex        =   104
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":27B9A
            TabIndex        =   105
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":27BF8
            TabIndex        =   106
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":27C56
            TabIndex        =   107
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":27CB4
            TabIndex        =   108
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":27D12
            TabIndex        =   109
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":27D70
            TabIndex        =   110
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":27DCE
            TabIndex        =   111
            Top             =   360
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   10
            Left            =   720
            OleObjectBlob   =   "workfrm.frx":27E2C
            TabIndex        =   112
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":27E8A
            TabIndex        =   113
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":27EE8
            TabIndex        =   114
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   13
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":27F46
            TabIndex        =   115
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":27FA4
            TabIndex        =   116
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":28002
            TabIndex        =   117
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   16
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":28060
            TabIndex        =   118
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":280BE
            TabIndex        =   119
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2811C
            TabIndex        =   120
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2817A
            TabIndex        =   121
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":281D8
            TabIndex        =   123
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":28236
            TabIndex        =   124
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":28294
            TabIndex        =   125
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":282F2
            TabIndex        =   126
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":28350
            TabIndex        =   127
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":283AE
            TabIndex        =   128
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2840C
            TabIndex        =   129
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   8
            Left            =   8160
            OleObjectBlob   =   "workfrm.frx":2846A
            TabIndex        =   130
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":284C8
            TabIndex        =   131
            Top             =   480
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":28526
            TabIndex        =   132
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":28584
            TabIndex        =   133
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   12
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":285E2
            TabIndex        =   134
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":28640
            TabIndex        =   135
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2869E
            TabIndex        =   136
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   15
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":286FC
            TabIndex        =   137
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2875A
            TabIndex        =   138
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":287B8
            TabIndex        =   139
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   18
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":28816
            TabIndex        =   140
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
            Height          =   375
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":28874
            TabIndex        =   141
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":288D2
            TabIndex        =   143
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":28930
            TabIndex        =   144
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":2898E
            TabIndex        =   145
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":289EC
            TabIndex        =   146
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":28A4A
            TabIndex        =   147
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":28AA8
            TabIndex        =   148
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":28B06
            TabIndex        =   149
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":28B64
            TabIndex        =   150
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":28BC2
            TabIndex        =   151
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":28C20
            TabIndex        =   152
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":28C7E
            TabIndex        =   153
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":28CDC
            TabIndex        =   154
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":28D3A
            TabIndex        =   155
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":28D98
            TabIndex        =   156
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   375
            Index           =   15
            Left            =   5520
            OleObjectBlob   =   "workfrm.frx":28DF6
            TabIndex        =   157
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":28E54
            TabIndex        =   159
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   18
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":28EB2
            TabIndex        =   160
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":28F10
            TabIndex        =   161
            Top             =   1320
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   1
            Left            =   1440
            OleObjectBlob   =   "workfrm.frx":28F6E
            TabIndex        =   163
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":28FCC
            TabIndex        =   164
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":2902A
            TabIndex        =   165
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":29088
            TabIndex        =   166
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":290E6
            TabIndex        =   167
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":29144
            TabIndex        =   168
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":291A2
            TabIndex        =   169
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":29200
            TabIndex        =   170
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   9
            Left            =   9360
            OleObjectBlob   =   "workfrm.frx":2925E
            TabIndex        =   171
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":292BC
            TabIndex        =   172
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   11
            Left            =   1680
            OleObjectBlob   =   "workfrm.frx":2931A
            TabIndex        =   173
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   12
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":29378
            TabIndex        =   174
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   13
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":293D6
            TabIndex        =   175
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":29434
            TabIndex        =   176
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":29492
            TabIndex        =   177
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   16
            Left            =   6480
            OleObjectBlob   =   "workfrm.frx":294F0
            TabIndex        =   178
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   17
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":2954E
            TabIndex        =   179
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   18
            Left            =   8400
            OleObjectBlob   =   "workfrm.frx":295AC
            TabIndex        =   180
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
            Height          =   375
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2960A
            TabIndex        =   181
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":29668
            TabIndex        =   183
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":296C6
            TabIndex        =   184
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":29724
            TabIndex        =   185
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":29782
            TabIndex        =   186
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":297E0
            TabIndex        =   187
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2983E
            TabIndex        =   188
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2989C
            TabIndex        =   189
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":298FA
            TabIndex        =   190
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":29958
            TabIndex        =   191
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":299B6
            TabIndex        =   192
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":29A14
            TabIndex        =   193
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":29A72
            TabIndex        =   194
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":29AD0
            TabIndex        =   195
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":29B2E
            TabIndex        =   196
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":29B8C
            TabIndex        =   197
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":29BEA
            TabIndex        =   198
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   17
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":29C48
            TabIndex        =   199
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":29CA6
            TabIndex        =   200
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
            Height          =   375
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":29D04
            TabIndex        =   201
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":29D62
            TabIndex        =   203
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   2
            Left            =   2400
            OleObjectBlob   =   "workfrm.frx":29DC0
            TabIndex        =   204
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   3
            Left            =   3360
            OleObjectBlob   =   "workfrm.frx":29E1E
            TabIndex        =   205
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":29E7C
            TabIndex        =   206
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":29EDA
            TabIndex        =   207
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":29F38
            TabIndex        =   208
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":29F96
            TabIndex        =   209
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   8
            Left            =   8160
            OleObjectBlob   =   "workfrm.frx":29FF4
            TabIndex        =   210
            Top             =   360
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2A052
            TabIndex        =   211
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":2A0B0
            TabIndex        =   212
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2A10E
            TabIndex        =   213
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2A16C
            TabIndex        =   214
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":2A1CA
            TabIndex        =   215
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2A228
            TabIndex        =   216
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   375
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2A286
            TabIndex        =   217
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2A2E4
            TabIndex        =   219
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2A342
            TabIndex        =   220
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2A3A0
            TabIndex        =   221
            Top             =   1320
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2A3FE
            TabIndex        =   665
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2A45C
            TabIndex        =   666
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":2A4BA
            TabIndex        =   667
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2A518
            TabIndex        =   668
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2A576
            TabIndex        =   669
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   6
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2A5D4
            TabIndex        =   670
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2A632
            TabIndex        =   671
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   8
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2A690
            TabIndex        =   672
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2A6EE
            TabIndex        =   673
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":2A74C
            TabIndex        =   674
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2A7AA
            TabIndex        =   675
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   12
            Left            =   2640
            OleObjectBlob   =   "workfrm.frx":2A808
            TabIndex        =   676
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   13
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":2A866
            TabIndex        =   677
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2A8C4
            TabIndex        =   678
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2A922
            TabIndex        =   679
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2A980
            TabIndex        =   680
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2A9DE
            TabIndex        =   681
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2AA3C
            TabIndex        =   682
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2AA9A
            TabIndex        =   683
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2AAF8
            TabIndex        =   765
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2AB56
            TabIndex        =   766
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   3
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":2ABB4
            TabIndex        =   767
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   4
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2AC12
            TabIndex        =   768
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2AC70
            TabIndex        =   769
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   6
            Left            =   6240
            OleObjectBlob   =   "workfrm.frx":2ACCE
            TabIndex        =   770
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   7
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2AD2C
            TabIndex        =   771
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   8
            Left            =   8160
            OleObjectBlob   =   "workfrm.frx":2AD8A
            TabIndex        =   772
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   9
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2ADE8
            TabIndex        =   773
            Top             =   240
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":2AE46
            TabIndex        =   774
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2AEA4
            TabIndex        =   775
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2AF02
            TabIndex        =   776
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   13
            Left            =   3600
            OleObjectBlob   =   "workfrm.frx":2AF60
            TabIndex        =   777
            Top             =   1080
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   14
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":2AFBE
            TabIndex        =   778
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2B01C
            TabIndex        =   779
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2B07A
            TabIndex        =   780
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   17
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":2B0D8
            TabIndex        =   781
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2B136
            TabIndex        =   782
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel42 
            Height          =   255
            Index           =   19
            Left            =   9360
            OleObjectBlob   =   "workfrm.frx":2B194
            TabIndex        =   783
            Top             =   1200
            Visible         =   0   'False
            Width           =   375
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   1
            Left            =   1440
            OleObjectBlob   =   "workfrm.frx":2B1F2
            TabIndex        =   825
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   2
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2B250
            TabIndex        =   826
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   3
            Left            =   3360
            OleObjectBlob   =   "workfrm.frx":2B2AE
            TabIndex        =   827
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   4
            Left            =   4320
            OleObjectBlob   =   "workfrm.frx":2B30C
            TabIndex        =   828
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   5
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2B36A
            TabIndex        =   829
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   6
            Left            =   6240
            OleObjectBlob   =   "workfrm.frx":2B3C8
            TabIndex        =   830
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   7
            Left            =   7200
            OleObjectBlob   =   "workfrm.frx":2B426
            TabIndex        =   831
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   8
            Left            =   8160
            OleObjectBlob   =   "workfrm.frx":2B484
            TabIndex        =   832
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   9
            Left            =   9120
            OleObjectBlob   =   "workfrm.frx":2B4E2
            TabIndex        =   833
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   10
            Left            =   600
            OleObjectBlob   =   "workfrm.frx":2B540
            TabIndex        =   834
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   11
            Left            =   1440
            OleObjectBlob   =   "workfrm.frx":2B59E
            TabIndex        =   835
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   12
            Left            =   2520
            OleObjectBlob   =   "workfrm.frx":2B5FC
            TabIndex        =   836
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   13
            Left            =   3480
            OleObjectBlob   =   "workfrm.frx":2B65A
            TabIndex        =   837
            Top             =   1080
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   14
            Left            =   4440
            OleObjectBlob   =   "workfrm.frx":2B6B8
            TabIndex        =   838
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   15
            Left            =   5400
            OleObjectBlob   =   "workfrm.frx":2B716
            TabIndex        =   839
            Top             =   1080
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   16
            Left            =   6360
            OleObjectBlob   =   "workfrm.frx":2B774
            TabIndex        =   840
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   17
            Left            =   7320
            OleObjectBlob   =   "workfrm.frx":2B7D2
            TabIndex        =   841
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   18
            Left            =   8280
            OleObjectBlob   =   "workfrm.frx":2B830
            TabIndex        =   842
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel43 
            Height          =   255
            Index           =   19
            Left            =   9240
            OleObjectBlob   =   "workfrm.frx":2B88E
            TabIndex        =   843
            Top             =   1200
            Visible         =   0   'False
            Width           =   495
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   1
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2B8EC
            TabIndex        =   958
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   2
            Left            =   3120
            OleObjectBlob   =   "workfrm.frx":2B94A
            TabIndex        =   959
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   3
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":2B9A8
            TabIndex        =   960
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   4
            Left            =   6000
            OleObjectBlob   =   "workfrm.frx":2BA06
            TabIndex        =   961
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   5
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":2BA64
            TabIndex        =   962
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   6
            Left            =   8880
            OleObjectBlob   =   "workfrm.frx":2BAC2
            TabIndex        =   963
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   7
            Left            =   10320
            OleObjectBlob   =   "workfrm.frx":2BB20
            TabIndex        =   964
            Top             =   720
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   8
            Left            =   11760
            OleObjectBlob   =   "workfrm.frx":2BB7E
            TabIndex        =   965
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   9
            Left            =   13200
            OleObjectBlob   =   "workfrm.frx":2BBDC
            TabIndex        =   966
            Top             =   600
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   10
            Left            =   240
            OleObjectBlob   =   "workfrm.frx":2BC3A
            TabIndex        =   967
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   11
            Left            =   1560
            OleObjectBlob   =   "workfrm.frx":2BC98
            TabIndex        =   968
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   12
            Left            =   3120
            OleObjectBlob   =   "workfrm.frx":2BCF6
            TabIndex        =   969
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   13
            Left            =   4560
            OleObjectBlob   =   "workfrm.frx":2BD54
            TabIndex        =   970
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   14
            Left            =   6000
            OleObjectBlob   =   "workfrm.frx":2BDB2
            TabIndex        =   971
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   15
            Left            =   7440
            OleObjectBlob   =   "workfrm.frx":2BE10
            TabIndex        =   972
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   16
            Left            =   8880
            OleObjectBlob   =   "workfrm.frx":2BE6E
            TabIndex        =   973
            Top             =   1680
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   17
            Left            =   10320
            OleObjectBlob   =   "workfrm.frx":2BECC
            TabIndex        =   974
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   18
            Left            =   11760
            OleObjectBlob   =   "workfrm.frx":2BF2A
            TabIndex        =   975
            Top             =   1560
            Visible         =   0   'False
            Width           =   135
         End
         Begin ACTIVESKINLibCtl.SkinLabel SkinLabel78 
            Height          =   255
            Index           =   19
            Left            =   13200
            OleObjectBlob   =   "workfrm.frx":2BF88
            TabIndex        =   976
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
         TabIndex        =   946
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
      TabIndex        =   901
      Top             =   4200
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   495
      Left            =   4680
      TabIndex        =   897
      Top             =   4200
      Width           =   1215
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'Option Explicit
Private Sub Check1_Click()
    
    If (Check1.Value = 0) Then
        
        WindowsMediaPlayer1.Close
        
        command(0) = &H8A                                                       '�����λ����������
        
        MSComm1.Output = command
        
        command(0) = &HFF                                                       '�������
        
    End If
    
End Sub

Private Sub Command19_Click()
    
    Form2.Enabled = False
    
    Form16.bPositive = True
    
    Form16.Text1.Text = Form16.strPositive
    
    Form16.SkinLabel1.Caption = "��ȡ��ȫ������"
    
    Form16.Picture1.Picture = LoadPicture(App.Path + "\pic\6.jpg")
    
    Form16.Show
    
End Sub

Private Sub Command21_Click()
    
    Form2.Enabled = False
    
    Form16.bPositive = False
    
    Form16.Text1.Text = Form16.strNegative
    
    Form16.SkinLabel1.Caption = "��ȡ��ȫ������"
    
    Form16.Picture1.Picture = LoadPicture(App.Path + "\pic\2.jpg")
    
    Form16.Show
    
End Sub

Private Sub Command22_Click()
    
    Dim t        As Integer

    Dim textline As String
    
    Command22.Enabled = False
    xzsjxs.Text1.Text = ""
    xzsjxs.Caption = "У����ֵ���� "                                            '+ App.Path & "\sys\adjust1.txt"
    xzsjxs.Show
    t = 0
    
    Open App.Path & "\sys\adjust1.txt" For Input As #3
    
    Do While Not EOF(3)                                                         'EOFΪ��β���Ժ���
        
        Line Input #3, textline                                                 '�������1�д浽����TextLine��
        
        xzsjxs.Text1.Text = xzsjxs.Text1.Text + Format(t + 1, "0#") + "#:" + Mid(textline, 5, 12) + Chr(13) + Chr(10)
        
        t = t + 1                                                               'ѭ��
        
    Loop
    
    Close #3
    
    Command22.Enabled = True
    
End Sub

Private Sub Form_Load()                                                         '��ʼ��������Ϣ�ʹ���
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '�������
    
    Skin1.LoadSkin App.Path + "\Skins\3.skn"
    
    Skin1.ApplySkin Me.hWnd                                                     'ʹ��Ƥ��
    
    On Error GoTo err1
    
    Dim k As Integer                                                            'k�ڴ���Ϊѭ������
    
    ''''''''''''''''''''''''''''''��������ı���ʼ��'''''''''''''''''''''''''''''''''''
    
    Command4.Enabled = False                                                    '���а�ť����
    Command8.Enabled = False                                                    'У׼1��ť����
    Command11.Enabled = False                                                   '��ӡ��ť������
    Command13.Enabled = False                                                   '��ӡ��ť������
    
    Text3.Text = ""                                                             '��ʱ�洢��λ���ϴ�������
    Text4.Text = ""                                                             '��ʱ�洢��λ���ϴ�������
    Text9.Text = ""                                                             '��ʱ�洢��λ���ϴ�������
    Text10.Text = ""                                                            '��ʱ�洢��λ���ϴ�������
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''''''���ڳ�ʼ������'''''''''''''''''''''''''''''''''''''
    
    intPort = 1                                                                 'ʹ��ͨѶ�˿�1
    strSet = "1200,n,8,1"                                                       '���ò�����1200bit/s,��Ч�飬8λ���ݣ�1λֹͣλ
    MSComm1.InputLen = 0                                                        '��ȡ���ջ������������ַ�
    MSComm1.InBufferSize = 1024                                                 '���ý��ջ�����Ϊ1024�ֽ�
    MSComm1.OutBufferSize = 512                                                 '���÷��ͻ�����Ϊ512�ֽ�
    MSComm1.SThreshold = 0                                                      '�������¼�
    MSComm1.RThreshold = 1                                                      'ÿ1���ַ������ջ����������������¼�
    MSComm1.InBufferCount = 0                                                   '����������Ļ���������
    MSComm1.OutBufferCount = 0                                                  '����������Ļ���������
    MSComm1.InputMode = 1                                                       '�����ƽ���
    
    If Not MSComm1.PortOpen Then                                                '���ڹرմ�ʱ��
        
        MSComm1.CommPort = intPort                                              '���ô���1
        MSComm1.settings = strSet                                               '������1200bit/s,��Ч�飬8λ���ݣ�1λֹͣλ
        MSComm1.PortOpen = True                                                 '���ڴ�
        
    End If
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''''''''''''''''''���벡�˸�����Ϣ''''''''''''''''''''''''''''''''''''''''
    
    k = 0                                                                       '��ʼ���벡�˸�����Ϣ
    
    Dim bNewRevision As Boolean
    
    Open App.Path & "\sys\sys.txt" For Input As #2                              '���ļ��ж�ȡ
    
    Line Input #2, textline
    
    If textline = "Revision 2017" Then
        
        bNewRevision = True
        
    Else
        
        bNewRevision = False
        
    End If
    
    Do While Not EOF(2)                                                         'EOFΪ��β���Ժ���
        
        If k <> 0 Or bNewRevision Then
            Line Input #2, textline                                             '�������1�д浽����TextLine��

        End If

        SkinLabel2(k).Caption = textline                                        '��������
        
        Line Input #2, textline                                                 '�������2�д浽����TextLine��
        SkinLabel3(k).Caption = textline                                        '������
        
        If bNewRevision Then
            Line Input #2, textline                                             '�������2�д浽����TextLine��
            SkinLabel78(k).Caption = textline                                   '��ID
        Else
            SkinLabel78(k).Caption = ""
        End If                                                                  '��ID
        
        Line Input #2, textline                                                 '�������3�д浽����TextLine��
        SkinLabel4(k).Caption = textline                                        '���Ա�
        
        Line Input #2, textline                                                 '�������4�д浽����TextLine��
        SkinLabel5(k).Caption = textline                                        '������
        
        Line Input #2, textline                                                 '�������5�д浽����TextLine��
        SkinLabel6(k).Caption = textline                                        '������
        
        Line Input #2, textline                                                 '�������6�д浽����TextLine��
        SkinLabel7(k).Caption = textline                                        '������ƿ����
        
        Line Input #2, textline                                                 '�������7�д浽����TextLine��
        SkinLabel11(k).Caption = textline                                       '������ʱ��
        
        Line Input #2, textline                                                 '�������8�д浽����TextLine��
        SkinLabel8(k).Caption = Mid(textline, 1, 7)                             '��ʱ��:����
        SkinLabel9(k).Caption = Mid(textline, 8, 11)                            '��ʱ��:����+ʱ��
        SkinLabel42(k).Caption = Mid(textline, 1, 4)                            '��ʱ��:���
        SkinLabel43(k).Caption = Mid(textline, 6, 2)                            '��ʱ��:�·�
        
        Line Input #2, textline                                                 '�������9�д浽����TextLine��
        SkinLabel10(k).Caption = textline                                       '������״̬
        
        If textline = 1 Then                                                    '1--�̣���ʾ�޾���������δ���
            
            Picture1(k).Picture = LoadPicture(App.Path + "\pic\5.jpg")
            
        ElseIf textline = 2 Then                                                '2--�죬��ʾ�о���������δ���
            
            Picture1(k).Picture = LoadPicture(App.Path + "\pic\6.jpg")
            
        ElseIf textline = 3 Then                                                '3--�̡�����ʾ�������
            
            Picture1(k).Picture = LoadPicture(App.Path + "\pic\2.jpg")
            
        ElseIf textline = 4 Then                                                '4--�������ʾ�������
            
            Picture1(k).Picture = LoadPicture(App.Path + "\pic\3.jpg")
            
        End If
        
        k = k + 1                                                               'ѭ��
        
    Loop
    
    Close #2
    
    AllStatesStatistic
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''''��ȡ������Ƶ·��'''''''''''''''''''''''''''''''''''''
    
    If Dir(App.Path & "\sys\warning.txt") <> "" Then
        
        Open App.Path & "\sys\warning.txt" For Input As #13
        
        Line Input #13, textline                                                '���������ݴ浽����textLine��
        
        warning = textline                                                      '��ʾ���õ�����ʱ��
        
        Close #13
        
    Else
        
        warning = App.Path & "\music\warning.mp3"
        
        getFileWriteLock
        
        Open App.Path & "\sys\warning.txt" For Output As #13
        
        Print #13, warning                                                      '��ʾ���õ�����ʱ��
        
        Close #13
        
        releaseFileWriteLock
        
    End If
    
    If Dir(warning) = "" Then
        
        warning = App.Path & "\music\warning.mp3"
        
    End If
    
    WindowsMediaPlayer1.settings.setMode "loop", True
    
    ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''��ȡ�ļ��е���ֵ����ʾ''''''''''''''''''''''''''''''''''
    
    Open App.Path & "\sys\threshold.txt" For Input As #9                        '���ļ��ж�ȡ��ֵ
    
    Line Input #9, textline                                                     '���������ݴ浽����TextLine��
    
    SkinLabel54.Caption = textline                                              '��ʾ����ֵ
    
    Line Input #9, textline                                                     '���������ݴ浽����TextLine��
    
    SkinLabel65.Caption = textline                                              '��ʾ����ֵ
    
    Close #9
    
    yuzhiup = Val(SkinLabel54.Caption)                                          '��ֵ����ֵ������ȫ�ֱ�����
    
    yuzhidown = Val(SkinLabel65.Caption)                                        '��ֵ����ֵ������ȫ�ֱ�����
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''��ȡ�ļ��е��¶�ֵ����ʾ'''''''''''''''''''''''''''''''''
    
    Open App.Path & "\temp\temp.txt" For Input As #10                           '���ļ��ж�������¶�ֵ
    
    Line Input #10, textline                                                    '���������ݴ浽����TextLine��
    
    SkinLabel20.Caption = textline                                              '��ʾ�¶�ֵ
    
    Close #10
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''����/��������״̬��ʾ��ʼ��''''''''''''''''''''''''''''''''
    
    Picture2.Picture = LoadPicture(App.Path + "\pic\4.jpg")                     '����״̬��ʼ����ʾ
    
    Picture3.Picture = LoadPicture(App.Path + "\pic\4.jpg")                     '����״̬��ʾ��ʼ��
    
    'Picture4.Picture = LoadPicture(App.Path + "\pic\4.jpg")                     '����״̬��ʼ����ʾ
    
    'Picture5.Picture = LoadPicture(App.Path + "\pic\4.jpg")                     '����״̬��ʾ��ʼ��
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''��λ������λ������״̬��ʼ�������յ���λ�������״̬����''''''''''''''
    
    SkinLabel61.Caption = "δ����..."
    
    command(0) = &H84                                                           '��ʼ��ʱ���ʹ�����������(132)
    
    MSComm1.Output = command
    
    command(0) = &HFF                                                           '�������
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''''��ʾĬ������ʱ��'''''''''''''''''''''''''''''''''''''
    
    Open App.Path & "\sys\settime.txt" For Input As #11
    
    Line Input #11, textline                                                    '���������ݴ浽����textLine��
    
    SkinLabel69.Caption = textline                                              '��ʾУ׼2ϣ����ֵ
    
    Close #11
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''''''������''''''''''''''''''''''''''''''''''''''''''''
    
err1:
    
    If Err.Number = 8005 Then
        
        answer = MsgBox("�ô����ѱ�ռ��", "64", "��Ϣ��ʾ")
        
    End If
    
    If Err.Number = 8002 Then
        
        answer = MsgBox("���ڲ����ڣ�", "64", "��Ϣ��ʾ")
        
    End If
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
End Sub

Private Sub Form_Unload(Cancel As Integer)                                      '�˳�����ʱж�����д���
    
    'If MsgBox("�������ڲ������Ƿ�ȷ���˳���", vbInformation + vbYesNo, "��ʾ") = vbNo Then '��ж�أ���������
    
    Cancel = True
    
    'Else
    
    Unload Form3                                                                'ж�ز������洰��
    Unload Form4                                                                'ж����Ϣ������洰��
    Unload Form5                                                                'ж�ط�������ƿ���洰��
    Unload Form6                                                                'ж��ȡ������ƿ���洰��
    Unload Form7                                                                'ж�ز�ѯ���洰��
    Unload Form8                                                                'ж�ذ�ʱ��ͳ�����Ͻ��洰��
    Unload Form9                                                                'ж�ؽ���������ʾ���洰��
    Unload Form10                                                               'ж��ɾ��������ʾ���洰��
    Unload Form11                                                               'ж�����ݽ�����ʾ���洰��
    Unload Form12                                                               'ж��ͳ�Ʒ�ʽѡ����ʾ���洰��
    Unload Form13                                                               'ж�ذ�����ͳ�����Ͻ��洰��
    Unload Form14                                                               'ж�ذ�����ƿ����ͳ�����Ͻ��洰��
    Unload Form1                                                                'ж�ػ�ӭ���洰��
    Unload Form2                                                                'ж�ر�����
    
    'End If
    
End Sub

Private Sub Picture1_Click(Index As Integer)                                    '����ͼƬ��ť�������������
    
    Select Case Index                                                           'ȷ����λ
        
        Case 0
        
            n = 0                                                                   'ѡ��1�ſ�λ
        
        Case 1
        
            n = 1                                                                   'ѡ��2�ſ�λ
        
        Case 2
        
            n = 2                                                                   'ѡ��3�ſ�λ
        
        Case 3
        
            n = 3                                                                   'ѡ��4�ſ�λ
        
        Case 4
        
            n = 4                                                                   'ѡ��5�ſ�λ
        
        Case 5
        
            n = 5                                                                   'ѡ��6�ſ�λ
        
        Case 6
        
            n = 6                                                                   'ѡ��7�ſ�λ
        
        Case 7
        
            n = 7                                                                   'ѡ��8�ſ�λ
        
        Case 8
        
            n = 8                                                                   'ѡ��9�ſ�λ
        
        Case 9
        
            n = 9                                                                   'ѡ��10�ſ�λ
        
        Case 10
        
            n = 10                                                                  'ѡ��11�ſ�λ
        
        Case 11
        
            n = 11                                                                  'ѡ��12�ſ�λ
        
        Case 12
        
            n = 12                                                                  'ѡ��13�ſ�λ
        
        Case 13
        
            n = 13                                                                  'ѡ��14�ſ�λ
        
        Case 14
        
            n = 14                                                                  'ѡ��15�ſ�λ
        
        Case 15
        
            n = 15                                                                  'ѡ��16�ſ�λ
        
        Case 16
        
            n = 16                                                                  'ѡ��17�ſ�λ
        
        Case 17
        
            n = 17                                                                  'ѡ��18�ſ�λ
        
        Case 18
        
            n = 18                                                                  'ѡ��19�ſ�λ
        
        Case 19
        
            n = 19                                                                  'ѡ��20�ſ�λ
        
        Case 20
        
            n = 20                                                                  'ѡ��21�ſ�λ
        
        Case 21
        
            n = 21                                                                  'ѡ��22�ſ�λ
        
        Case 22
        
            n = 22                                                                  'ѡ��23�ſ�λ
        
        Case 23
        
            n = 23                                                                  'ѡ��24�ſ�λ
        
        Case 24
        
            n = 24                                                                  'ѡ��25�ſ�λ
        
        Case 25
        
            n = 25                                                                  'ѡ��26�ſ�λ
        
        Case 26
        
            n = 26                                                                  'ѡ��27�ſ�λ
        
        Case 27
        
            n = 27                                                                  'ѡ��28�ſ�λ
        
        Case 28
        
            n = 28                                                                  'ѡ��29�ſ�λ
        
        Case 29
        
            n = 29                                                                  'ѡ��30�ſ�λ
        
        Case 30
        
            n = 30                                                                  'ѡ��31�ſ�λ
        
        Case 31
        
            n = 31                                                                  'ѡ��31�ſ�λ
        
        Case 32
        
            n = 32                                                                  'ѡ��33�ſ�λ
        
        Case 33
        
            n = 33                                                                  'ѡ��34�ſ�λ
        
        Case 34
        
            n = 34                                                                  'ѡ��35�ſ�λ
        
        Case 35
        
            n = 35                                                                  'ѡ��36�ſ�λ
        
        Case 36
        
            n = 36                                                                  'ѡ��37�ſ�λ
        
        Case 37
        
            n = 37                                                                  'ѡ��38�ſ�λ
        
        Case 38
        
            n = 38                                                                  'ѡ��39�ſ�λ
        
        Case 39
        
            n = 39                                                                  'ѡ��40�ſ�λ
        
        Case 40
        
            n = 40                                                                  'ѡ��41�ſ�λ
        
        Case 41
        
            n = 41                                                                  'ѡ��42�ſ�λ
        
        Case 42
        
            n = 42                                                                  'ѡ��43�ſ�λ
        
        Case 43
        
            n = 43                                                                  'ѡ��44�ſ�λ
        
        Case 44
        
            n = 44                                                                  'ѡ��45�ſ�λ
        
        Case 45
        
            n = 45                                                                  'ѡ��46�ſ�λ
        
        Case 46
        
            n = 46                                                                  'ѡ��47�ſ�λ
        
        Case 47
        
            n = 47                                                                  'ѡ��48�ſ�λ
        
        Case 48
        
            n = 48                                                                  'ѡ��49�ſ�λ
        
        Case 49
        
            n = 49                                                                  'ѡ��50�ſ�λ
        
        Case 50
        
            n = 50                                                                  'ѡ��51�ſ�λ
        
        Case 51
        
            n = 51                                                                  'ѡ��52�ſ�λ
        
        Case 52
        
            n = 52                                                                  'ѡ��53�ſ�λ
        
        Case 53
        
            n = 53                                                                  'ѡ��54�ſ�λ
        
        Case 54
        
            n = 54                                                                  'ѡ��55�ſ�λ
        
        Case 55
        
            n = 55                                                                  'ѡ��56�ſ�λ
        
        Case 56
        
            n = 56                                                                  'ѡ��57�ſ�λ
        
        Case 57
        
            n = 57                                                                  'ѡ��58�ſ�λ
        
        Case 58
        
            n = 58                                                                  'ѡ��59�ſ�λ
        
        Case 59
        
            n = 59                                                                  'ѡ��60�ſ�λ
        
    End Select
    
    Form2.Enabled = False                                                       '�����������
    Form3.Show                                                                  '�����������
    
End Sub

Private Sub Command2_Click()                                                    'ͨ���������ѯ��Ϣ
    
    Dim textline As String
    
    'Form2.Enabled = False                                                       '�����������
    'Form7.Show                                                                  '������ҽ���
    
    Dim r        As Integer                                                            'r�ڴ���Ϊ��λ��־λ
    
    Dim m        As Integer                                                            'm�ڴ���Ϊ��λ��־λ
    
    If Text15.Text = "" Then
        
        answer = MsgBox("��ʾ��û������������!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      '��������������
            
            Text15.Enabled = True
            
            Exit Sub
            
        End If
        
    End If
    
    r = 0                                                                       '��ʼ���벡�˸�����Ϣ
    
    Dim bNewRevision As Boolean
    
    Open App.Path & "\sys\sys.txt" For Input As #2                              '���ļ��ж�ȡ
    
    Line Input #2, textline
    
    If textline = "Revision 2017" Then
        
        bNewRevision = True
        
    Else
        
        bNewRevision = False
        
    End If
    
    Do While Not EOF(2)
        
        If r <> 0 Or bNewRevision Then
            Line Input #2, textline                                             '�������1�д浽����TextLine��

        End If

        SkinLabel2(r).Caption = textline                                        '��������
        
        Line Input #2, textline                                                 '������������
        
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
        
        r = r + 1                                                               'ѭ��
        
    Loop
    
    Close #2
    
    For m = 0 To 59
        
        If SkinLabel2(m) = Text15.Text Then                                     '�鵽��Ҫ������������
            
            n = m
            
            Form2.Enabled = False                                               '�����������
            
            Form3.Show
            
            Exit Sub
            
        End If
        
    Next m
    
    answer = MsgBox("��ʾ����ǰ������������д���������Ѳ���", 48, "��Ϣ��ʾ")
    
    If answer = 1 Then                                                          '��������������
        
        Text15.Text = ""
        
        Exit Sub
        
    End If
    
End Sub

Private Sub Command3_Click()                                                    '��������ʹ��λ������ͣ��״̬
    
    Timer1.Enabled = False
    Timer2.Enabled = False
    
    Picture2.Picture = LoadPicture(App.Path + "\pic\6.jpg")                     'ͣ����־
    Picture3.Picture = LoadPicture(App.Path + "\pic\4.jpg")
    
    'SkinLabel13.Caption = "��λ�����ڵ���״̬"                                  '״̬��ʾ
    
    command(0) = &H82                                                           '����ͣ������(130)
    
    MSComm1.Output = command
    
    command(0) = &HFF                                                           '�������
    
    Command3.Enabled = False                                                    '���԰�ť����
    Command4.Enabled = True                                                     '���а�ť����
    Command8.Enabled = True                                                     'У׼1��ť����
    
End Sub

Private Sub Command4_Click()                                                    '��������ʹ��λ����������״̬
    
    Timer1.Enabled = True
    Timer2.Enabled = False
    
    Picture2.Picture = LoadPicture(App.Path + "\pic\4.jpg")                     '���б�־
    Picture3.Picture = LoadPicture(App.Path + "\pic\5.jpg")
    
    'SkinLabel13.Caption = "��λ����������״̬"                                  '״̬��ʾ
    
    command(0) = &H83                                                           '������������(131)
    
    MSComm1.Output = command
    
    command(0) = &HFF                                                           '�������
    
    Command4.Enabled = False                                                    '���а�ť����
    Command3.Enabled = True                                                     '���԰�ť����
    Command8.Enabled = False                                                    'У׼1��ť����
    
End Sub

Private Sub Command5_Click()                                                    '�¶ȼ�0.1�����ť
    
    SkinLabel20.Caption = SkinLabel20.Caption + 0.1                             '�¶��ۼ�0.1��
    
    If Val(SkinLabel20.Caption) > 40 Then                                       '�¶�ֵ���ò��ܴ���40��,������ʾ����
        
        answer = MsgBox("��ʾ�������¶�ֵ����40��!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      'ȷ��֮��Ĭ��Ϊ40��
            
            SkinLabel20.Caption = 40                                            '�¶��������Ϊ40��
            
            Exit Sub
            
        End If
        
    End If
    
End Sub

Private Sub Command6_Click()                                                    '�¶ȼ�0.1�����ť
    
    SkinLabel20.Caption = SkinLabel20.Caption - 0.1                             '�¶��ۼ�0.1��
    
    If Val(SkinLabel20.Caption) < 30 Then                                       '�¶�ֵ���ò���С��30�ȶ�,С����ʾ����
        
        answer = MsgBox("��ʾ�������¶�ֵС��30��!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      'ȷ��֮��Ĭ��Ϊ30��
            
            SkinLabel20.Caption = 30                                            '�¶��������Ϊ30��
            
            Exit Sub
            
        End If
        
    End If
    
End Sub

Private Sub Command7_Click()                                                    '�����¶�����
    
    command(0) = CInt(Val(SkinLabel20.Caption) * 10 - 150)                      'ת�����͵���λ��
    
    getFileWriteLock
    
    Open App.Path & "\temp\temp.txt" For Output As #10                          '�������õ��¶�ֵ
    
    Print #10, SkinLabel20.Caption
    
    Close #10
    
    releaseFileWriteLock
    
    MSComm1.Output = command                                                    '�����¶�ֵ
    
    command(0) = &HFF                                                           '�������
    
    answer = MsgBox("��ʾ���¶�ֵ�ѷ�������λ��!", 48, "��Ϣ��ʾ")
    
    If answer = 1 Then                                                          'ȷ��
        
        Exit Sub
        
    End If
    
End Sub

Private Sub Command8_Click()
    
    Dim e        As Integer                                                            'e�ڴ���Ϊѭ������
    
    Dim textline As String
    
    If Text1.Text = "" Then                                                     'û�������λ
        
        answer = MsgBox("��ʾ��û�������λ!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      '���������λ
            
            Text1.Enabled = True
            
            Exit Sub
            
        End If
        
    End If
    
    If Val(Text1.Text) < 1 Or Val(Text1.Text) > 60 Then
        
        answer = MsgBox("��ʾ��������1-60֮�������!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then
            
            Text1.Text = ""                                                     '�ı����
            
            Text1.Enabled = True
            
            Exit Sub
            
        End If
        
    Else
        
        Form2.Enabled = False                                                   '�����������
        
        adjust1_flag = 1                                                        '�����ϴ���У׼1���ݱ�־λ��Ч
        
        ''''''''''''''''''''''''''''''��У׼1������''''''''''''''''''''''''''''''''''''''''''
        e = 0
        
        Open App.Path & "\sys\adjust1.txt" For Input As #3                      '���ļ��ж�ȡ
        
        Do While Not EOF(3)                                                     'EOFΪ��β���Ժ���
            
            Line Input #3, textline
            
            read1(e) = Mid(textline, 5, 12)
            
            e = e + 1                                                           'ѭ��
            
        Loop
        
        Close #3
        
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        s1 = Val(Text1.Text) - 1                                                '����s1�ſ�λ��У׼
        
        Select Case s1
            
            Case 0
            
                command(0) = &H3D
            
                MSComm1.Output = command                                            '��1��ƿ��У׼1(61)
            
                command(0) = &H3D
            
                MSComm1.Output = command                                            '��1��ƿ��У׼1(61)
            
                command(0) = &HFF                                                   '�������
            
            Case 1
            
                command(0) = &H3E
            
                MSComm1.Output = command                                            '��2��ƿ��У׼1(61)
            
                command(0) = &H3E
            
                MSComm1.Output = command                                            '��2��ƿ��У׼1(62)
            
                command(0) = &HFF                                                   '�������
            
            Case 2
            
                command(0) = &H3F
            
                MSComm1.Output = command                                            '��3��ƿ��У׼1(63)
            
                command(0) = &H3F
            
                MSComm1.Output = command                                            '��3��ƿ��У׼1(63)
            
                command(0) = &HFF                                                   '�������
            
            Case 3
            
                command(0) = &H40
            
                MSComm1.Output = command                                            '��4��ƿ��У׼1(64)
            
                command(0) = &H40
            
                MSComm1.Output = command                                            '��4��ƿ��У׼1(64)
            
                command(0) = &HFF                                                   '�������
            
            Case 4
            
                command(0) = &H41
            
                MSComm1.Output = command                                            '��5��ƿ��У׼1(65)
            
                command(0) = &H41
            
                MSComm1.Output = command                                            '��5��ƿ��У׼1(65)
            
                command(0) = &HFF                                                   '�������
            
            Case 5
            
                command(0) = &H42
            
                MSComm1.Output = command                                            '��6��ƿ��У׼1(66)
            
                command(0) = &H42
            
                MSComm1.Output = command                                            '��6��ƿ��У׼1(66)
            
                command(0) = &HFF                                                   '�������
            
            Case 6
            
                command(0) = &H43
            
                MSComm1.Output = command                                            '��7��ƿ��У׼1(67)
            
                command(0) = &H43
            
                MSComm1.Output = command                                            '��7��ƿ��У׼1(67)
            
                command(0) = &HFF                                                   '�������
            
            Case 7
            
                command(0) = &H44
            
                MSComm1.Output = command                                            '��8��ƿ��У׼1(68)
            
                command(0) = &H44
            
                MSComm1.Output = command                                            '��8��ƿ��У׼1(68)
            
                command(0) = &HFF                                                   '�������
            
            Case 8
            
                command(0) = &H45
            
                MSComm1.Output = command                                            '��9��ƿ��У׼1(69)
            
                command(0) = &H45
            
                MSComm1.Output = command                                            '��9��ƿ��У׼1(69)
            
                command(0) = &HFF                                                   '�������
            
            Case 9
            
                command(0) = &H46
            
                MSComm1.Output = command                                            '��10��ƿ��У׼1(70)
            
                command(0) = &H46
            
                MSComm1.Output = command                                            '��10��ƿ��У׼1(70)
            
                command(0) = &HFF                                                   '�������
            
            Case 10
            
                command(0) = &H47
            
                MSComm1.Output = command                                            '��11��ƿ��У׼1(71)
            
                command(0) = &H47
            
                MSComm1.Output = command                                            '��11��ƿ��У׼1(71)
            
                command(0) = &HFF                                                   '�������
            
            Case 11
            
                command(0) = &H48
            
                MSComm1.Output = command                                            '��12��ƿ��У׼1(72)
            
                command(0) = &H48
            
                MSComm1.Output = command                                            '��12��ƿ��У׼1(72)
            
                command(0) = &HFF                                                   '�������
            
            Case 12
            
                command(0) = &H49
            
                MSComm1.Output = command                                            '��13��ƿ��У׼1(73)
            
                command(0) = &H49
            
                MSComm1.Output = command                                            '��13��ƿ��У׼1(73)
            
                command(0) = &HFF                                                   '�������
            
            Case 13
            
                command(0) = &H4A
            
                MSComm1.Output = command                                            '��14��ƿ��У׼1(74)
            
                command(0) = &H4A
            
                MSComm1.Output = command                                            '��14��ƿ��У׼1(74)
            
                command(0) = &HFF                                                   '�������
            
            Case 14
            
                command(0) = &H4B
            
                MSComm1.Output = command                                            '��15��ƿ��У׼1(75)
            
                command(0) = &H4B
            
                MSComm1.Output = command                                            '��15��ƿ��У׼1(75)
            
                command(0) = &HFF                                                   '�������
            
            Case 15
            
                command(0) = &H4C
            
                MSComm1.Output = command                                            '��16��ƿ��У׼1(76)
            
                command(0) = &H4C
            
                MSComm1.Output = command                                            '��16��ƿ��У׼1(76)
            
                command(0) = &HFF                                                   '�������
            
            Case 16
            
                command(0) = &H4D
            
                MSComm1.Output = command                                            '��17��ƿ��У׼1(77)
            
                command(0) = &H4D
            
                MSComm1.Output = command                                            '��17��ƿ��У׼1(77)
            
                command(0) = &HFF                                                   '�������
            
            Case 17
            
                command(0) = &H4E
            
                MSComm1.Output = command                                            '��18��ƿ��У׼1(78)
            
                command(0) = &H4E
            
                MSComm1.Output = command                                            '��18��ƿ��У׼1(78)
            
                command(0) = &HFF                                                   '�������
            
            Case 18
            
                command(0) = &H4F
            
                MSComm1.Output = command                                            '��19��ƿ��У׼1(79)
            
                command(0) = &H4F
            
                MSComm1.Output = command                                            '��19��ƿ��У׼1(79)
            
                command(0) = &HFF                                                   '�������
            
            Case 19
            
                command(0) = &H50
            
                MSComm1.Output = command                                            '��20��ƿ��У׼1(80)
            
                command(0) = &H50
            
                MSComm1.Output = command                                            '��20��ƿ��У׼1(80)
            
                command(0) = &HFF                                                   '�������
            
            Case 20
            
                command(0) = &H51
            
                MSComm1.Output = command                                            '��21��ƿ��У׼1(81)
            
                command(0) = &H51
            
                MSComm1.Output = command                                            '��21��ƿ��У׼1(81)
            
                command(0) = &HFF                                                   '�������
            
            Case 21
            
                command(0) = &H52
            
                MSComm1.Output = command                                            '��22��ƿ��У׼1(82)
            
                command(0) = &H52
            
                MSComm1.Output = command                                            '��22��ƿ��У׼1(82)
            
                command(0) = &HFF                                                   '�������
            
            Case 22
            
                command(0) = &H53
            
                MSComm1.Output = command                                            '��23��ƿ��У׼1(83)
            
                command(0) = &H53
            
                MSComm1.Output = command                                            '��23��ƿ��У׼1(83)
            
                command(0) = &HFF                                                   '�������
            
            Case 23
            
                command(0) = &H54
            
                MSComm1.Output = command                                            '��24��ƿ��У׼2(84)
            
                command(0) = &H54
            
                MSComm1.Output = command                                            '��24��ƿ��У׼2(84)
            
                command(0) = &HFF                                                   '�������
            
            Case 24
            
                command(0) = &H55
            
                MSComm1.Output = command                                            '��25��ƿ��У׼1(85)
            
                command(0) = &H55
            
                MSComm1.Output = command                                            '��25��ƿ��У׼1(85)
            
                command(0) = &HFF                                                   '�������
            
            Case 25
            
                command(0) = &H56
            
                MSComm1.Output = command                                            '��26��ƿ��У׼1(86)
            
                command(0) = &H56
            
                MSComm1.Output = command                                            '��26��ƿ��У׼1(86)
            
                command(0) = &HFF                                                   '�������
            
            Case 26
            
                command(0) = &H57
            
                MSComm1.Output = command                                            '��27��ƿ��У׼1(87)
            
                command(0) = &H57
            
                MSComm1.Output = command                                            '��27��ƿ��У׼1(87)
            
                command(0) = &HFF                                                   '�������
            
            Case 27
            
                command(0) = &H58
            
                MSComm1.Output = command                                            '��28��ƿ��У׼1(88)
            
                command(0) = &H58
            
                MSComm1.Output = command                                            '��28��ƿ��У׼1(88)
            
                command(0) = &HFF                                                   '�������
            
            Case 28
            
                command(0) = &H59
            
                MSComm1.Output = command                                            '��29��ƿ��У׼1(89)
            
                command(0) = &H59
            
                MSComm1.Output = command                                            '��29��ƿ��У׼1(89)
            
                command(0) = &HFF                                                   '�������
            
            Case 29
            
                command(0) = &H5A
            
                MSComm1.Output = command                                            '��30��ƿ��У׼1(90)
            
                command(0) = &H5A
            
                MSComm1.Output = command                                            '��30��ƿ��У׼1(90)
            
                command(0) = &HFF                                                   '�������
            
            Case 30
            
                command(0) = &H5B
            
                MSComm1.Output = command                                            '��31��ƿ��У׼1(91)
            
                command(0) = &H5B
            
                MSComm1.Output = command                                            '��31��ƿ��У׼1(91)
            
                command(0) = &HFF                                                   '�������
            
            Case 31
            
                command(0) = &H5C
            
                MSComm1.Output = command                                            '��32��ƿ��У׼1(92)
            
                command(0) = &H5C
            
                MSComm1.Output = command                                            '��32��ƿ��У׼1(92)
            
                command(0) = &HFF                                                   '�������
            
            Case 32
            
                command(0) = &H5D
            
                MSComm1.Output = command                                            '��33��ƿ��У׼1(93)
            
                command(0) = &H5D
            
                MSComm1.Output = command                                            '��33��ƿ��У׼1(93)
            
                command(0) = &HFF                                                   '�������
            
            Case 33
            
                command(0) = &H5E
            
                MSComm1.Output = command                                            '��34��ƿ��У׼1(94)
            
                command(0) = &H5E
            
                MSComm1.Output = command                                            '��34��ƿ��У׼1(94)
            
                command(0) = &HFF                                                   '�������
            
            Case 34
            
                command(0) = &H5F
            
                MSComm1.Output = command                                            '��35��ƿ��У׼1(95)
            
                command(0) = &H5F
            
                MSComm1.Output = command                                            '��35��ƿ��У׼1(95)
            
                command(0) = &HFF                                                   '�������
            
            Case 35
            
                command(0) = &H60
            
                MSComm1.Output = command                                            '��36��ƿ��У׼1(96)
            
                command(0) = &H60
            
                MSComm1.Output = command                                            '��36��ƿ��У׼1(96)
            
                command(0) = &HFF                                                   '�������
            
            Case 36
            
                command(0) = &H61
            
                MSComm1.Output = command                                            '��37��ƿ��У׼1(97)
            
                command(0) = &H61
            
                MSComm1.Output = command                                            '��37��ƿ��У׼1(97)
            
                command(0) = &HFF                                                   '�������
            
            Case 37
            
                command(0) = &H62
            
                MSComm1.Output = command                                            '��38��ƿ��У׼1(98)
            
                command(0) = &H62
            
                MSComm1.Output = command                                            '��38��ƿ��У׼1(98)
            
                command(0) = &HFF                                                   '�������
            
            Case 38
            
                command(0) = &H63
            
                MSComm1.Output = command                                            '��39��ƿ��У׼1(99)
            
                command(0) = &H63
            
                MSComm1.Output = command                                            '��39��ƿ��У׼1(99)
            
                command(0) = &HFF                                                   '�������
            
            Case 39
            
                command(0) = &H64
            
                MSComm1.Output = command                                            '��40��ƿ��У׼1(100)
            
                command(0) = &H64
            
                MSComm1.Output = command                                            '��40��ƿ��У׼1(100)
            
                command(0) = &HFF                                                   '�������
            
            Case 40
            
                command(0) = &H65
            
                MSComm1.Output = command                                            '��41��ƿ��У׼1(101)
            
                command(0) = &H65
            
                MSComm1.Output = command                                            '��41��ƿ��У׼1(101)
            
                command(0) = &HFF                                                   '�������
            
            Case 41
            
                command(0) = &H66
            
                MSComm1.Output = command                                            '��42��ƿ��У׼1(102)
            
                command(0) = &H66
            
                MSComm1.Output = command                                            '��42��ƿ��У׼1(102)
            
                command(0) = &HFF                                                   '�������
            
            Case 42
            
                command(0) = &H67
            
                MSComm1.Output = command                                            '��43��ƿ��У׼1(103)
            
                command(0) = &H67
            
                MSComm1.Output = command                                            '��43��ƿ��У׼1(103)
            
                command(0) = &HFF                                                   '�������
            
            Case 43
            
                command(0) = &H68
            
                MSComm1.Output = command                                            '��44��ƿ��У׼1(104)
            
                command(0) = &H68
            
                MSComm1.Output = command                                            '��44��ƿ��У׼1(104)
            
                command(0) = &HFF                                                   '�������
            
            Case 44
            
                command(0) = &H69
            
                MSComm1.Output = command                                            '��45��ƿ��У׼1(105)
            
                command(0) = &H69
            
                MSComm1.Output = command                                            '��45��ƿ��У׼1(105)
            
                command(0) = &HFF                                                   '�������
            
            Case 45
            
                command(0) = &H6A
            
                MSComm1.Output = command                                            '��46��ƿ��У׼1(106)
            
                command(0) = &H6A
            
                MSComm1.Output = command                                            '��46��ƿ��У׼1(106)
            
                command(0) = &HFF                                                   '�������
            
            Case 46
            
                command(0) = &H6B
            
                MSComm1.Output = command                                            '��47��ƿ��У׼1(107)
            
                command(0) = &H6B
            
                MSComm1.Output = command                                            '��47��ƿ��У׼1(107)
            
                command(0) = &HFF                                                   '�������
            
            Case 47
            
                command(0) = &H6C
            
                MSComm1.Output = command                                            '��48��ƿ��У׼1(108)
            
                command(0) = &H6C
            
                MSComm1.Output = command                                            '��48��ƿ��У׼1(108)
            
                command(0) = &HFF                                                   '�������
            
            Case 48
            
                command(0) = &H6D
            
                MSComm1.Output = command                                            '��49��ƿ��У׼1(109)
            
                command(0) = &H6D
            
                MSComm1.Output = command                                            '��49��ƿ��У׼1(109)
            
                command(0) = &HFF                                                   '�������
            
            Case 49
            
                command(0) = &H6E
            
                MSComm1.Output = command                                            '��50��ƿ��У׼1(110)
            
                command(0) = &H6E
            
                MSComm1.Output = command                                            '��50��ƿ��У׼1(110)
            
                command(0) = &HFF                                                   '�������
            
            Case 50
            
                command(0) = &H6F
            
                MSComm1.Output = command                                            '��51��ƿ��У׼1(111)
            
                command(0) = &H6F
            
                MSComm1.Output = command                                            '��51��ƿ��У׼1(111)
            
                command(0) = &HFF                                                   '�������
            
            Case 51
            
                command(0) = &H70
            
                MSComm1.Output = command                                            '��52��ƿ��У׼1(112)
            
                command(0) = &H70
            
                MSComm1.Output = command                                            '��52��ƿ��У׼1(112)
            
                command(0) = &HFF                                                   '�������
            
            Case 52
            
                command(0) = &H71
            
                MSComm1.Output = command                                            '��53��ƿ��У׼1(113)
            
                command(0) = &H71
            
                MSComm1.Output = command                                            '��53��ƿ��У׼1(113)
            
                command(0) = &HFF                                                   '�������
            
            Case 53
            
                command(0) = &H72
            
                MSComm1.Output = command                                            '��54��ƿ��У׼1(114)
            
                command(0) = &H72
            
                MSComm1.Output = command                                            '��54��ƿ��У׼1(114)
            
                command(0) = &HFF                                                   '�������
            
            Case 54
            
                command(0) = &H73
            
                MSComm1.Output = command                                            '��55��ƿ��У׼1(115)
            
                command(0) = &H73
            
                MSComm1.Output = command                                            '��55��ƿ��У׼1(115)
            
                command(0) = &HFF                                                   '�������
            
            Case 55
            
                command(0) = &H74
            
                MSComm1.Output = command                                            '��56��ƿ��У׼1(116)
            
                command(0) = &H74
            
                MSComm1.Output = command                                            '��56��ƿ��У׼1(116)
            
                command(0) = &HFF                                                   '�������
            
            Case 56
            
                command(0) = &H75
            
                MSComm1.Output = command                                            '��57��ƿ��У׼1(117)
            
                command(0) = &H75
            
                MSComm1.Output = command                                            '��57��ƿ��У׼1(117)
            
                command(0) = &HFF                                                   '�������
            
            Case 57
            
                command(0) = &H76
            
                MSComm1.Output = command                                            '��58��ƿ��У׼1(118)
            
                command(0) = &H76
            
                MSComm1.Output = command                                            '��58��ƿ��У׼1(118)
            
                command(0) = &HFF                                                   '�������
            
            Case 58
            
                command(0) = &H77
            
                MSComm1.Output = command                                            '��59��ƿ��У׼1(119)
            
                command(0) = &H77
            
                MSComm1.Output = command                                            '��59��ƿ��У׼1(119)
            
                command(0) = &HFF                                                   '�������
            
            Case 59
            
                command(0) = &H78
            
                MSComm1.Output = command                                            '��60��ƿ��У׼1(120)
            
                command(0) = &H78
            
                MSComm1.Output = command                                            '��60��ƿ��У׼1(120)
            
                command(0) = &HFF                                                   '�������
            
        End Select
        
    End If
    
    Form9.Show                                                                  '�ȴ�����������ʾ����
    
End Sub

Private Sub Command10_Click()                                                   '������ʷ����
    
    On Error GoTo err2
    
    Dim fs       As New FileSystemObject                                              '�����ļ�ϵͳ����
    
    'Dim f As Object
    
    Dim textline As String
    
    Dim R3       As New Collection                                                    '���弯�ϱ���
    
    Dim TempO1   As New Collection
    
    Dim TempO2   As New Collection
    
    Dim TempO3   As New Collection
    
    Dim r        As Integer
    
    Dim m        As Integer
    
    State_Flag = 0                                                              '����״̬��־λ����
    
    With CommonDialog1
        
        .FileName = ""                                                          '���ϴα������ļ������
        
        .CancelError = False                                                    '���ȡ��ʱ������ӳ����
        
        .InitDir = App.Path & "\data"                                           '�򿪵�ǰdata�ļ���
        
        .DialogTitle = "��ѡ������"
        
        .Filter = "*.txt|*.TXT"                                                 '�ļ�����
        
        .ShowOpen                                                               '���ļ�
        
    End With
    
    Dim strLine As String
    
    Set fs = CreateObject("Scripting.FileSystemObject")                         '����SFO����
    
    Set f = fs.OpenTextFile(CommonDialog1.FileName, ForReading, True)           '����������
    
    strLine = f.ReadLine
    
    If (strLine <> "Revision 2017") Then
        SkinLabel26.Caption = strLine                                           '��������
        SkinLabel82.Caption = ""                                                'ƿ�׺�����
        SkinLabel80.Caption = ""                                                'ID
    Else
        SkinLabel82.Caption = f.ReadLine                                        'ƿ�׺�����
        SkinLabel26.Caption = f.ReadLine                                        '��������
        SkinLabel80.Caption = f.ReadLine                                        'ID

    End If

    SkinLabel28.Caption = f.ReadLine                                            '������
    SkinLabel30.Caption = Mid(f.ReadLine, 1, 1)                                 '���Ա�
    SkinLabel32.Caption = f.ReadLine                                            '������
    SkinLabel34.Caption = Mid(f.ReadLine, 1, 10)                                '������
    SkinLabel36.Caption = Mid(f.ReadLine, 1, 8)                                 '������ƿ
    SkinLabel38.Caption = Mid(f.ReadLine, 1, 2)                                 '������ʱ��
    SkinLabel40.Caption = Mid(f.ReadLine, 1, 19)                                '������ʱ��
    
    Form2.Enabled = False                                                       '�����������
    
    barcode_name = SkinLabel26.Caption
    
    cul_time = Val(SkinLabel38.Caption)
    
    time_start = Mid(SkinLabel40, 6, 5)
    
    'ת��Ϊx��ʱ���ļ��ʱ��
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
    
    r = 0                                                                       '��ʼ���벡�˸�����Ϣ
    
    Dim bNewRevision As Boolean
    
    Open App.Path & "\sys\sys.txt" For Input As #2                              '���ļ��ж�ȡ
    
    Line Input #2, textline
    
    If textline = "Revision 2017" Then
        
        bNewRevision = True
        
    Else
        
        bNewRevision = False
        
    End If
    
    Do While Not EOF(2)
        
        If r <> 0 Or bNewRevision Then
            Line Input #2, textline                                             '�������1�д浽����TextLine��

        End If

        SkinLabel2(r).Caption = textline                                        '��������
        
        Line Input #2, textline                                                 '��������
        
        If bNewRevision Then
            Line Input #2, textline

        End If
        
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        Line Input #2, textline
        
        Line Input #2, textline
        'SkinLabel11(r).Caption = textline '����ʱ��,��������
        
        Line Input #2, textline
        'SkinLabel9(r).Caption = Mid(textline, 8, 11) 'ʱ��:����+ʱ��,��������
        
        Line Input #2, textline
        SkinLabel10(r).Caption = textline                                       '������״̬
        
        r = r + 1                                                               'ѭ��
        
    Loop
    
    Close #2
    
    AllStatesStatistic
    
    Do While f.AtEndOfLine = False
    
        textline = f.ReadLine
        R3.Add Int(Mid(textline, 1, 4))                                       '������
        TempO1.Add Val(Mid(textline, 21, 5))
        TempO2.Add Val(Mid(textline, 27, 5))
        TempO3.Add Val(Mid(textline, 33, 5))
        
    Loop
    
    f.Close
    
    If Dir(App.Path & "\result\" & SkinLabel26.Caption & ".dat", vbDirectory) <> "" Then '����ɲ���
        
        Open App.Path & "\result\" & SkinLabel26.Caption & ".dat" For Input As #1 '��result�ļ��ж�ȡ�������
        
        Line Input #1, textline                                                 '�������1�д浽����TextLine��
        
        SkinLabel46.Caption = textline                                          '���������
        
        Line Input #1, textline                                                 '�������1�д浽����TextLine��
        
        n = Val(textline)
        
        Close #1
        
    Else                                                                        '��������
        
        For m = 0 To 59
            
            If SkinLabel2(m).Caption = SkinLabel26.Caption Then
                
                State_Flag = SkinLabel10(m).Caption                             '����״̬��־λ��ֵ
                
                n = m
                
                Exit For
                
            End If
            
        Next m                                                                  'ѭ��
        
        If State_Flag = 1 Or State_Flag = 3 Then
            
            SkinLabel46.Caption = "����"
            
        ElseIf State_Flag = 2 Or State_Flag = 4 Then
            
            SkinLabel46.Caption = "����"
            
        End If
        
    End If
    
    '''''''''''''''''''''''''''''''������ʾ��ӡ����''''''''''''''''''''''''''''''''''''''
    RichTextBox2.Text = "��ҽ��һ����ҽԺ" & (Chr(13) & Chr(10)) & "�����룺" & SkinLabel26.Caption & (Chr(13) & Chr(10)) & "������" & SkinLabel28.Caption & (Chr(13) & Chr(10)) & "ID��" & SkinLabel28.Caption & (Chr(13) & Chr(10)) & "�Ա�" & SkinLabel30.Caption & (Chr(13) & Chr(10)) & "���䣺" & SkinLabel32.Caption & (Chr(13) & Chr(10)) & "���ң�" & SkinLabel34.Caption & (Chr(13) & Chr(10)) & "����ƿ��" & SkinLabel36.Caption & (Chr(13) & Chr(10)) & "����ʱ�䣺" & SkinLabel38.Caption & (Chr(13) & Chr(10)) & "����ʱ��:" & SkinLabel40.Caption & (Chr(13) & Chr(10)) & "�������:" & SkinLabel46.Caption & (Chr(13) & Chr(10)) & "��ӡʱ��:" & Format(Now, "yyyy-mm-dd hh:mm")
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    Call SystemGraph1.DrawGraph(R3, TempO1, TempO2, TempO3, Val(SkinLabel38.Caption))
    
    Form2.Enabled = True                                                        '�����������
    
    Command11.Enabled = True                                                    '��ӡ��ť����
    
    Exit Sub
    
err2:
    
    Exit Sub
    
End Sub

Private Sub Command11_Click()
    
    Dim word As Object
    
    Dim a    As Object
    
    If Dir(App.Path & "\print\", vbDirectory) = "" Then
        
        MkDir App.Path & "\print\"                                              '�������ڴ�ӡ�ļ���
        
    End If
    
    getFileWriteLock
    
    Open App.Path & "\print\" & SkinLabel26.Caption & ".doc" For Output As #11  '��ӡ����
    
    Print #11, "�����룺" & SkinLabel26.Caption
    
    Print #11, "������" & SkinLabel28.Caption
    
    Print #11, "�Ա�" & SkinLabel30.Caption
    
    Print #11, "���䣺" & SkinLabel32.Caption
    
    Print #11, "���ң�" & SkinLabel34.Caption
    
    Print #11, "����ƿ��" & SkinLabel36.Caption
    
    Print #11, "����ʱ�䣺" & SkinLabel38.Caption
    
    Print #11, "����ʱ�䣺" & SkinLabel40.Caption
    
    Print #11, "���������" & SkinLabel46.Caption
    
    Close #11
    
    releaseFileWriteLock
    
    Set word = CreateObject("Word.Application")
    
    Set a = word.Documents.Open(App.Path & "\print\" & SkinLabel26.Caption & ".doc")
    
    word.Visible = True
    
End Sub

Private Sub Command12_Click()                                                   '����ͳ������
    
    Form2.Enabled = False                                                       '�����������
    
    Form12.Show                                                                 '����ͳ�ƽ���
    
End Sub

Private Sub Command13_Click()                                                   '��ӡͳ������
    
    Dim word As Object
    
    Dim a    As Object
    
    Set word = CreateObject("Word.Application")
    
    Set a = word.Documents.Open(App.Path & "\statistics\" & file1 & "-" & file2 & "\" & "ͳ�����" & ".txt")
    
    word.Visible = True
    
End Sub

Private Sub Command14_Click()                                                   'ɾ���ļ����ť
    
    If Text12.Text = "" Then                                                    'û������������
        
        answer = MsgBox("��ʾ��û������������!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      'ȷ��
            
            Text12.Enabled = True
            
            Exit Sub
            
        End If
        
    End If
    
    If Dir(App.Path & "\data\" & Text12.Text & ".txt", vbDirectory) = "" Then   '���ļ��в�����
        
        answer = MsgBox("��ʾ�����ļ��в�����!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      'ȷ��
            
            Text12.Text = ""
            
            Exit Sub
            
        End If
        
    End If
    
    If Dir(App.Path & "\result\" & Text12.Text & ".dat", vbDirectory) = "" Then '������������������
        
        answer = MsgBox("��ʾ��������������������!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then
            
            Text12.Text = ""
            
            Exit Sub
            
        End If
        
    Else                                                                        'ɾ��������
        
        answer = MsgBox("��ʾ���Ƿ�ȷ��ɾ�����ļ�!", 49, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      'ȷ��ɾ��
            
            Kill App.Path & "\result\" & Text12.Text & ".dat"                   'ɾ���ļ�
            
            Kill App.Path & "\data\" & Text12.Text & ".txt"
            
            answer = MsgBox("��ʾ�����ļ�����ɾ��!", 48, "��Ϣ��ʾ")
            
            If answer = 1 Then                                                  'ȷ��
                
                Text12.Text = ""
                
                Exit Sub
                
            End If
            
        ElseIf answer = 2 Then                                                  'ȡ��ɾ��
            
            Text12.Text = ""
            
            Exit Sub
            
        End If
        
    End If
    
End Sub

Private Sub Command16_Click()                                                   '������ֵ������
    
    If Text11.Text = "" Then                                                    '��ֵ����ֵΪ��
        
        answer = MsgBox("��ʾ��û����������ֵ��������!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      '������������ֵ
            
            Text11.Enabled = True
            
            Exit Sub
            
        End If
        
    ElseIf Text13.Text = "" Then                                                '��ֵ����ֵΪ��
        
        answer = MsgBox("��ʾ��û����������ֵ��������!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      '������������ֵ
            
            Text13.Enabled = True
            
            Exit Sub
            
        End If
        
    Else
        
        If (Val(Text11.Text) - Val(Text13.Text) <= 0) Then                      '������ֵ�д�
            
            answer = MsgBox("��ʾ��������ֵ�д�����������!", 48, "��Ϣ��ʾ")
            
            If answer = 1 Then                                                  '����������ֵ
                
                Text11.Text = ""
                
                Text13.Text = ""
                
                Text11.Enabled = True
                
                Text13.Enabled = True
                
                Exit Sub
                
            End If
            
        Else
            
            SkinLabel54.Caption = Text11.Text                                   '��ʾ
            
            SkinLabel65.Caption = Text13.Text                                   '��ʾ
            
            yuzhiup = Val(SkinLabel54.Caption)                                  '��ֵ����ֵ
            
            yuzhidown = Val(SkinLabel65.Caption)                                '��ֵ����ֵ
            
            getFileWriteLock
            
            Open App.Path & "\sys\threshold.txt" For Output As #9               '������ֵ
            
            Print #9, Format(Text11.Text, "0000")
            
            Print #9, Format(Text13.Text, "0000")
            
            Close #9
            
            releaseFileWriteLock
            
        End If
        
    End If
    
End Sub

Private Sub Command17_Click()                                                   'ɾ����λ������
    
    answer = MsgBox("��ʾ��ȷ�������Ǹ�λ!", 33, "��Ϣ��ʾ")
    
    If answer = 1 Then                                                          'ɾ��
        
        command(0) = &H85
        
        MSComm1.Output = command                                                'ɾ������(133)
        
        command(0) = &HFF                                                       '�������
        
        Form2.Enabled = False                                                   '�����������
        
        Timer1.Enabled = True
        
        Timer2.Enabled = False
        
        Form10.Show                                                             'ɾ��������ʾ����
        
        Exit Sub
        
    Else
        
        Exit Sub                                                                '��ɾ��
        
    End If
    
End Sub

Private Sub Command18_Click()                                                   '�������е�ֹͣ������ť
    
    On Error GoTo err3
    
    With CommonDialog1
        
        .FileName = ""                                                          '���ϴα������ļ������
        
        .CancelError = True                                                     '���ȡ��ʱ������ӳ����
        
        .InitDir = App.Path & "\music"                                          '�򿪵�ǰdata�ļ���
        
        .DialogTitle = "��ѡ����Ƶ�ļ�"
        
        .Filter = "��Ƶ�ļ� *.wma,*.mp3|*.WMA;*.MP3|�����ļ� (*.*)|*.*"         '�ļ�����
        
        .ShowOpen                                                               '���ļ�
        
    End With
    
    warning = CommonDialog1.FileName
    
    getFileWriteLock
    
    Open App.Path & "\sys\warning.txt" For Output As #13
    
    Print #13, warning                                                          '��ʾ���õ�����ʱ��
    
    Close #13
    
    releaseFileWriteLock
    
err3:
    
    Exit Sub
    
End Sub

Private Sub Command20_Click()                                                   '����Ĭ�ϵ�����ʱ��
    
    If Text14.Text = "" Then                                                    '����ʱ��Ϊ��
        
        answer = MsgBox("��ʾ��û�����������������!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      '������������ʱ��
            
            Text14.Enabled = True
            
            Exit Sub
            
        End If
        
    ElseIf (Val(Text14.Text) < 1 Or Val(Text14.Text) > 30) Then                 '���õ�����ʱ�䷶ΧΪ1-30
        
        answer = MsgBox("��ʾ��������1-30��Χ�ڵ���ֵ!", 48, "��Ϣ��ʾ")
        
        If answer = 1 Then                                                      '������������ʱ��
            
            Text14.Text = ""
            
            Text14.Enabled = True
            
            Exit Sub
            
        End If
        
    Else
        
        getFileWriteLock
        
        Open App.Path & "\sys\settime.txt" For Output As #11                    '�������õ�����ʱ��
        
        Print #11, Text14.Text
        
        Close #11
        
        releaseFileWriteLock
        
        SkinLabel69.Caption = Text14.Text                                       '��ʾ����ʱ��
        
    End If
    
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)                                 'У׼1ֻ���������ֺ�ʹ�ÿո�
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub

Private Sub Text11_KeyPress(KeyAscii As Integer)                                '��ֵ����ֵֻ���������ֺ�ʹ�ÿո�
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub

Private Sub Text13_KeyPress(KeyAscii As Integer)                                '��ֵ����ֵֻ���������ֺ�ʹ�ÿո�
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub

Private Sub Text14_KeyPress(KeyAscii As Integer)                                'Ĭ�ϵ�����ʱ��ֻ���������ֺ�ʹ�ÿո�
    
    If (KeyAscii > Asc("9") Or KeyAscii < Asc("0")) And KeyAscii <> 8 Then
        
        KeyAscii = 0
        
    End If
    
End Sub

Private Sub MSComm1_OnComm()                                                    '�����¼�
    
    getLock
    
    Dim textline          As String
    
    Dim a()               As Byte                                                             '��Ŵ���λ�����յ�������
    
    Dim strData           As String                                                           '��Ϊ�м��������
    
    Dim l                 As Integer                                                            '�ֽڳ���
    
    Dim t                 As Integer                                                            'ѭ������
    
    Dim m                 As Integer                                                            'ѭ������
    
    Dim e                 As Integer                                                            'ѭ������
    
    Dim b                 As Integer                                                            'ѭ������
    
    Dim c                 As Integer                                                            'ѭ������
    
    Dim d                 As Integer                                                            'ѭ������
    
    Dim j                 As Long                                                               'ѭ������
    
    Dim q                 As Integer                                                            'ѭ������
    
    Dim x                 As Integer                                                            '��Ϊ������
    
    Dim x1                As Integer                                                           '��Ϊ������
    
    Dim x2                As Integer                                                           '��Ϊ������
    
    Dim y                 As Integer                                                            '��Ϊ������
    
    Dim yy                As Long                                                              '��Ϊ��������2011-09-15������
    
    Dim y1                As Integer                                                           '��Ϊ������
    
    Dim y2                As Integer                                                           '��Ϊ������
    
    Dim Adjust_r(0 To 59) As Long
    
    Dim Adjust_g(0 To 59) As Long
    
    Dim Adjust_b(0 To 59) As Long
    
    Dim media             As Integer
    
    Dim red               As Long
    
    Dim green             As Long
    
    Dim blue              As Long
    
    Dim huv1              As Double
    
    Dim huv2              As Double
    
    Dim colorS1           As Double
    
    Dim colorS2           As Double
    
    Dim color_huv         As Long
    
    Dim color_temp        As Long
    
    Dim order1_diff       As Integer
    
    Dim order2_diff       As Integer
    
    Dim order3_diff       As Integer
    
    Dim R1(0 To 59)       As New Collection                                           '���ϱ�����
    
    Dim R2(0 To 59)       As New Collection                                           '���ϱ�����
    
    Dim O1(0 To 59)       As New Collection
    
    Dim O2(0 To 59)       As New Collection
    
    Dim O3(0 To 59)       As New Collection
    
    On Error Resume Next
    
    ''''''''''''''''''''''''''''''''''''�����ж��¼�'''''''''''''''''''''''''''''''''''''
    Select Case MSComm1.CommEvent                                               '���鴮���¼�
        
        Case comEventOverrun                                                        '���ջ��������
        
            Text4.Text = ""                                                         '��ս����ı�
        
            releaseLock
        
            Exit Sub
        
        Case comEvReceive                                                           '���ջ�����������
        
            a() = MSComm1.Input                                                     '����������������
        
            For l = 0 To UBound(a)                                                  '�����ʮ��������ʾ
            
                If Len(Hex(a(l))) = 1 Then
                
                    strData = strData & "0" & Hex(a(l))
                
                Else
                
                    strData = strData & Hex(a(l))
                
                End If
            
            Next
        
            Text4.Text = Text4.Text + strData                                       '�����������ݾ���������text4�ı���
        
    End Select
    
    ''''''''''''''''''''''''''''''''''���ݱ��沢����'''''''''''''''''''''''''''''''''''''
    If (Len(Text4.Text) = 724) Then
        
        'SkinLabel61.Caption = "������..."
        
        DataReceiver_flag = 1                                                   '�ж��Ƿ���յ���λ�����ݵı�־λ
        
        If Interface_flag = 1 Then
            
            Unload Form11
            
        End If
        
        Text5.Text = Format(HEX_to_DEC(Mid(Text4.Text, 1, 2)), "0000")          '�¶�ת����ĸ�4λ
        
        Text6.Text = Text5.Text + Format(HEX_to_DEC(Mid(Text4.Text, 3, 2)), "0000") '�¶�ת����4λ��ʾ
        
        SkinLabel17.Caption = Mid(Text6.Text, 4, 1) * 16 + Format(Mid(Text6.Text, 6, 3) / 16, "0.0") '��ʾ�¶�ֵ
        
        ''''''''''''''''''''''''''''''''''��ϵͳ�ļ�'''''''''''''''''''''''''''''''''''''''
        q = 0                                                                   '��ʼ���벡�˸�����Ϣ
        
        Dim bNewRevision As Boolean
        
        Open App.Path & "\sys\sys.txt" For Input As #2                          '���ļ��ж�ȡ
        
        Line Input #2, textline
        
        If textline = "Revision 2017" Then
            
            bNewRevision = True
            
        Else
            
            bNewRevision = False
            
        End If
        
        Do While Not EOF(2)                                                     'EOFΪ��β���Ժ���
            
            If q <> 0 Or bNewRevision Then
                Line Input #2, textline                                         '�������1�д浽����TextLine��

            End If

            SkinLabel2(q).Caption = textline                                    '��������
            
            Line Input #2, textline                                             '��������
            
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
            
            Line Input #2, textline                                             '�������8�д浽����TextLine��
            SkinLabel10(q).Caption = textline
            
            q = q + 1                                                           'ѭ��
            
        Loop
        
        Close #2
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        ''''''''''''''''''''''''''''''''''''��ȡ����'''''''''''''''''''''''''''''''''''''''
        m = 0
        
        Open App.Path & "\sys\adjust1.txt" For Input As #3
        
        Do While Not EOF(3)                                                     'EOFΪ��β���Ժ���
            
            Line Input #3, textline                                             '�������1�д浽����TextLine��
            
            adjust1(m) = Mid(textline, 5, 4)
            
            Adjust_r(m) = Val(Mid(textline, 5, 4))
            
            Adjust_g(m) = Val(Mid(textline, 9, 4))
            
            Adjust_b(m) = Val(Mid(textline, 13, 4))
            
            m = m + 1                                                           'ѭ��
            
        Loop
        
        Close 3#
        
        For c = 0 To 59
            
            x = Val(Format(HEX_to_DEC(Mid(Text4.Text, c * 12 + 5, 4)), "0000")) '�ϴ���ԭʼֵ
            
            media = x                                                           '�ݴ�������ݣ����ں�����ֵ�жϣ�2012-5-20
            
            color_temp = Adjust_r(c) + Adjust_g(c) + Adjust_b(c)
            red = color_temp * media / Adjust_r(c)
            green = color_temp * Val(Format(HEX_to_DEC(Mid(Text4.Text, c * 12 + 9, 4)), "0000")) / Adjust_g(c)
            blue = color_temp * Val(Format(HEX_to_DEC(Mid(Text4.Text, c * 12 + 13, 4)), "0000")) / Adjust_b(c)
            
            huv1 = CalcColorH(red, green, blue)
            
            colorS1 = CalcColorS(red, green, blue)
            
            color_huv = 13000 - CLng(GetAngleByPoint(colorS1 * Cos(huv1) - 0.5, colorS1 * Sin(huv1) + (Sqr(3#) / 2)) * 15000 / pi)
            
            If SkinLabel2(c).Caption <> "" And x > yuzhidown Then               '�����벻Ϊ����ԭʼֵ������ֵ����ֵ�����˲�����
                
                Open App.Path & "\data\" & SkinLabel2(c) & ".txt" For Input As #1
                
                Line Input #1, textline                                         '������������

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
                
                Do While Not EOF(1)                                             'EOFΪ��β���Ժ���
                    
                    Line Input #1, textline                                     '�������һ�д浽����TextLine��
                    
                    R2(c).Add Val(Mid(textline, 1, 4))
                    
                    O1(c).Add Val(Mid(textline, 21, 5))
                    
                    O2(c).Add Val(Mid(textline, 27, 5))
                    
                    O3(c).Add Val(Mid(textline, 33, 5))
                    
                Loop
                
                Close #1
                
            End If
            
            order1_diff = 0
            order2_diff = 0
            order3_diff = 0
            
            If (R2(c).Count > 3) Then
                
                order1_diff = color_huv - R2(c)(R2(c).Count - 3)
                order2_diff = order1_diff - O1(c)(R2(c).Count - 3)
                order3_diff = order2_diff - O2(c)(R2(c).Count - 3)
                
            End If
            
            Text10.Text = Format(color_huv, "0000")                             '��ʽ������
            
            Text3.Text = Text3.Text + Text10.Text
            
            Text3.Text = Text3.Text + Format(media, "0000")
            
            Text3.Text = Text3.Text + Format(Val(Format(HEX_to_DEC(Mid(Text4.Text, c * 12 + 9, 4)), "0000")), "0000")
            
            Text3.Text = Text3.Text + Format(Val(Format(HEX_to_DEC(Mid(Text4.Text, c * 12 + 13, 4)), "0000")), "0000")
            
            If (order1_diff < 0) Then
                
                Text3.Text = Text3.Text + Format(order1_diff, "0000")
                
            Else
                
                Text3.Text = Text3.Text + Format(order1_diff, "00000")
                
            End If
            
            If (order2_diff < 0) Then
                
                Text3.Text = Text3.Text + Format(order2_diff, "0000")
                
            Else
                
                Text3.Text = Text3.Text + Format(order2_diff, "00000")
                
            End If
            
            If (order3_diff < 0) Then
                
                Text3.Text = Text3.Text + Format(order3_diff, "0000")
                
            Else
                
                Text3.Text = Text3.Text + Format(order3_diff, "00000")
                
            End If
            
            If SkinLabel2(c).Caption <> "" Then                                 '�����벻Ϊ����ԭʼֵ������ֵ����ֵ�����˲�����
                
                If media > yuzhidown Then
                    
                    Open App.Path & "\data\" & SkinLabel2(c) & ".txt" For Append As #1
                    
                    Print #1, Mid(Text3.Text, 1, 4); " "; Mid(Text3.Text, 5, 4); " "; Mid(Text3.Text, 9, 4); " "; Mid(Text3.Text, 13, 4); " "; Mid(Text3.Text, 17, 5); " "; Mid(Text3.Text, 22, 5); " "; Mid(Text3.Text, 27, 5); " "; Format(Now, "mm-dd hh:mm:ss")
                    
                    Close #1
                    
                    Shape1(c).Visible = False
                    
                    Picture1(c).ToolTipText = ""
                    
                Else
                    
                    Shape1(c).Visible = True
                    
                    Picture1(c).ToolTipText = "��ƿλ״̬�쳣"
                    
                End If
                
            End If
            
            Text3.Text = ""
            
            Text10.Text = ""
            
        Next c
        
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        
        ''''''''''''''''''''''''''''''''''''���ݴ���'''''''''''''''''''''''''''''''''''''''
        Dim nUpValCount     As Integer

        Dim nIndex          As Integer

        Dim bChangePoint    As Boolean

        Dim Temp            As Integer
        
        Dim TempO1(0 To 59) As New Collection
        
        Dim TempO2(0 To 59) As New Collection
        
        Dim TempO3(0 To 59) As New Collection
        
        For b = 0 To 59                                                         '�Ա�����data�ļ��������ݽ��д���
            
            If SkinLabel2(b).Caption <> "" Then                                 '�����벻Ϊ�յĽ��д���
                
                Open App.Path & "\data\" & SkinLabel2(b) & ".txt" For Input As #1 '��ʼ������
                
                Line Input #1, textline                                         '������������

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
                
                Do While Not EOF(1)                                             'EOFΪ��β���Ժ���
                    
                    Line Input #1, textline                                     '�������һ�д浽����TextLine��
                    
                    R1(b).Add Val(Mid(textline, 1, 4))
                    
                    TempO1(b).Add Val(Mid(textline, 21, 5))
                    
                    TempO2(b).Add Val(Mid(textline, 27, 5))
                    
                    TempO3(b).Add Val(Mid(textline, 33, 5))
                    
                Loop
                
                Close #1
                
                If (SkinLabel10(b).Caption = 1) Then                            'ֻ�������ڲ�����
                    
                    nUpValCount = 0
                    
                    For j = 1 To R1(b).Count
                        
                        '��12�����ݴ�������ֵ������
                        If R1(b)(j) > yuzhiup Then
                            
                            nUpValCount = nUpValCount + 1
                            
                            If nUpValCount > 12 Then
                                
                                Picture1(b).Picture = LoadPicture(App.Path + "\pic\6.jpg") '����5����б�ʵ��������趨ֵ
                                
                                SkinLabel10(b).Caption = 2                      '�о�,��ɫ
                                
                                Form15.Show
                                
                                Exit For
                                
                            End If
                            
                        Else
                            
                            nUpValCount = 0
                            
                        End If
                        
                        If j > 20 Then                                          '����8�����״���0
                            
                            If (TempO2(b)(j) > 0 And TempO2(b)(j - 1) > 0 And TempO2(b)(j - 2) > 0 And TempO2(b)(j - 3) > 0 And TempO2(b)(j - 4) > 0 And TempO2(b)(j - 5) > 0 And TempO2(b)(j - 6) > 0 And TempO2(b)(j - 7) > 0 And TempO1(b)(j - 7) > 0 And TempO1(b)(j - 6) > 0 And TempO1(b)(j - 5) > 0 And TempO1(b)(j - 4) > 0 And TempO1(b)(j - 3) > 0 And TempO1(b)(j - 2) > 0 And TempO1(b)(j - 1) > 0 And TempO1(b)(j) > 0 And R1(b)(j) - R1(b)(j - 7) > 50) Then
                                
                                Picture1(b).Picture = LoadPicture(App.Path + "\pic\6.jpg")
                                
                                SkinLabel10(b).Caption = 2
                                
                                Form15.Show
                                
                                Exit For
                                
                            End If
                            
                        End If
                        
                        If j > 22 Then                                          '����10�����״��ڵ���0
                            
                            temp_pos = False
                            
                            If (TempO2(b)(j) > 0) And (TempO1(b)(j) > 0) Then
                                
                                temp_m = 0
                                temp_n = 0
                                
                                For q = 1 To 11
                                    
                                    If (TempO2(b)(j - q) > 0) And (TempO1(b)(j - q) > 0) Then
                                        
                                        temp_m = temp_m + 1
                                        
                                    ElseIf (TempO2(b)(j - q) < 0) Or (TempO1(b)(j - q) <= 0) Then
                                        
                                        Exit For
                                        
                                    Else
                                        
                                        temp_n = temp_n + 1
                                        
                                    End If
                                    
                                    If temp_n > 3 Then
                                        
                                        Exit For
                                        
                                    End If
                                    
                                    If temp_m > 7 And j - temp_n - temp_m > 12 And TempO1(b)(j - temp_n - temp_m) > 0 And R1(b)(j) - R1(b)(j - temp_n - temp_m) > 50 Then
                                        
                                        Picture1(b).Picture = LoadPicture(App.Path + "\pic\6.jpg")
                                        
                                        SkinLabel10(b).Caption = 2
                                        
                                        Form15.Show
                                        
                                        temp_pos = True
                                        
                                        Exit For
                                        
                                    End If
                                    
                                Next q
                                
                                If temp_pos Then
                                    
                                    Exit For
                                    
                                End If
                                
                            End If
                            
                        End If
                        
                        If j >= 289 Then
                            
                            bChangePoint = False
                            
                            Temp = 0
                            
                            For nIndex = 0 To 143
                                
                                '�����ֵ��ʱ����Ϊ50 �д���ȶ
                                
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
                                
                                Exit For
                                
                            End If
                            
                        ElseIf j >= 145 Then
                            
                            bChangePoint = False
                            
                            Temp = 0
                            
                            For nIndex = 0 To 107
                                
                                '�����ֵ��ʱ����Ϊ50 �д���ȶ
                                
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
                                
                                Exit For
                                
                            End If
                            
                        End If
                        
NextLoop:
                        
                    Next j
                    
                End If
                
            End If
            
        Next b
        
        For t = 0 To 59                                                         '����״̬����
            
            If SkinLabel2(t).Caption <> "" Then                                 '�����벻Ϊ��
                
                If SkinLabel10(t).Caption = 1 Or SkinLabel10(t).Caption = 2 Then '����δ���
                    
                    If DateDiff("h", Mid(SkinLabel8(t).Caption, 1, 4) + "-" + SkinLabel9(t).Caption, Now) > Val(SkinLabel11(t).Caption) * 24 Then
                        
                        If SkinLabel10(t).Caption = 1 Then
                            
                            Picture1(t).Picture = LoadPicture(App.Path + "\pic\2.jpg") '��ɫ-->��ɫ��
                            
                            SkinLabel10(t).Caption = 3
                            
                            Form15.Show
                            
                        ElseIf SkinLabel10(t).Caption = 2 Then                  '��ǰ���о�δ���
                            
                            Picture1(t).Picture = LoadPicture(App.Path + "\pic\3.jpg") '��ɫ-->��ɫ��
                            
                            SkinLabel10(t).Caption = 4
                            
                        End If
                        
                    End If
                    
                End If
                
            End If
            
        Next t

        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        ''''''''''''''''''''''''''''��дϵͳ�ļ�'''''''''''''''''''''''''''''''''''''''''''
        getFileWriteLock
        
        Open App.Path & "\sys\sys.txt" For Output As #2                         '�ؽ�sys�ļ�
        
        Print #2, "Revision 2017"                                               '�ļ��汾
        
        For e = 0 To 59
            
            Print #2, SkinLabel2(e).Caption                                     '������
            Print #2, SkinLabel3(e).Caption                                     '����
            Print #2, SkinLabel78(e).Caption                                    'ID
            Print #2, SkinLabel4(e).Caption                                     '�Ա�
            Print #2, SkinLabel5(e).Caption                                     '����
            Print #2, SkinLabel6(e).Caption                                     '����
            Print #2, SkinLabel7(e).Caption                                     '����ƿ����
            Print #2, SkinLabel11(e).Caption                                    '����ʱ��
            Print #2, SkinLabel8(e).Caption + SkinLabel9(e).Caption             'ʱ��:����+ʱ��
            Print #2, SkinLabel10(e).Caption                                    '����״̬
            
        Next e
        
        Close #2
        
        releaseFileWriteLock
        
        AllStatesStatistic
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        '''''''''''''''''''''''''''''''����֮����''''''''''''''''''''''''''''''''''''''''
        'Text3.Text = ""  '������֮���ı����������
        
        Text4.Text = ""
        
        command(0) = &H84
        
        MSComm1.Output = command                                                '���������λ��,֪ͨ�´δ�������(132)
        
        command(0) = &HFF                                                       '�������
        
        releaseLock
        
        Exit Sub

        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        
        '''''''''''''''''''''''''''''''����У׼1����'''''''''''''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 12 And adjust1_flag = 1) Then '����У׼1������ȷ
        
        adjust1_flag = 0                                                        '��־λ����
        
        For c = 0 To 2                                                          '���������ݷŵ�text9�ı���
            
            Text9.Text = Text9.Text + Format(HEX_to_DEC(Mid(Text4.Text, c * 4 + 1, 4)), "0000")
            
        Next c
        
        read1(s1) = Text9.Text
        
        SkinLabel57.Caption = Val(Mid(read1(s1), 1, 4))                         '��ʾУ׼1������
        
        Dim ad1_max As Double

        Dim ad1_min As Double
        
        ad1_max = Val(Mid(read1(s1), 1, 4))
        
        ad1_min = Val(Mid(read1(s1), 1, 4))
        
        If (Val(Mid(read1(s1), 5, 4)) > ad1_max) Then
            
            ad1_max = Val(Mid(read1(s1), 5, 4))
            
        End If
        
        If (Val(Mid(read1(s1), 9, 4)) > ad1_max) Then
            
            ad1_max = Val(Mid(read1(s1), 9, 4))
            
        End If
        
        If (Val(Mid(read1(s1), 5, 4)) < ad1_min) Then
            
            ad1_min = Val(Mid(read1(s1), 5, 4))
            
        End If
        
        If (Val(Mid(read1(s1), 9, 4)) < ad1_min) Then
            
            ad1_min = Val(Mid(read1(s1), 9, 4))
            
        End If
        
        If (ad1_max - ad1_min) / ad1_max > 0.15 Or ad1_min < 1800 Then
            
            answer = MsgBox("��ʾ��У׼��������,����У׼ƿ�Ϳ�λ!", 48, "��Ϣ��ʾ")
            
        End If
        
        getFileWriteLock
        
        Open App.Path & "\sys\adjust1.txt" For Output As #3                     '�������ݵ�adjust1�ļ���
        
        For d = 0 To 59
            
            Print #3, Format((d + 1), "00") & "#:" & Mid(read1(d), 1, 4); Mid(read1(d), 5, 4); Mid(read1(d), 9, 4)
            
        Next d
        
        Close #3
        
        releaseFileWriteLock
        
        Text1.Text = ""                                                         '���������ı����
        
        Text4.Text = ""
        
        Text9.Text = ""
        
        Unload Form9
        
        releaseLock
        
        Exit Sub
        
        ''''''''''''''''''''''''''''''''''''''�������'''''''''''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 2 And Text4.Text = "85") Then
        
        Text4.Text = ""
        
        Unload Form10
        
        releaseLock
        
        Exit Sub
        
        ''''''''''''''''''''''''''������λ������''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 2 And Text4.Text = "88") Then
        
        Timer1.Enabled = False
        
        Timer2.Enabled = True
        
        SkinLabel61.Caption = "������..."
        
        command(0) = &H84                                                       '��ʼ��ʱ���ʹ�����������(132)
        
        MSComm1.Output = command
        
        command(0) = &HFF                                                       '�������
        
        Text4.Text = ""
        
        releaseLock
        
        Exit Sub
        
        ''''''''''''''''''''''''''������λ������''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 2 And Text4.Text = "FA") Then
        
        SkinLabel61.Caption = "�����Ѵ򿪣����ֹͣ..."
        
        command(0) = &H84                                                       '��ʼ��ʱ���ʹ�����������(132)
        
        MSComm1.Output = command
        
        command(0) = &HFF                                                       '�������
        
        Text4.Text = ""
        
        releaseLock
        
        Exit Sub
        
        ''''''''''''''''''''''''''''''''''''''�������'''''''''''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 2 And Text4.Text = "FB") Then
        
        SkinLabel61.Caption = "�������"
        
        Text4.Text = ""
        
        releaseLock
        
        Exit Sub
        
        ''''''''''''''''''''''''''''''''''''�¶ȿ��ƹ���'''''''''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 2 And Text4.Text = "FC") Then
        
        SkinLabel61.Caption = "�¶ȿ��ƹ���"
        
        Text4.Text = ""
        
        releaseLock
        
        Exit Sub
        
        '''''''''''''''''''''''''''''''''''�¶ȴ���������'''''''''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 2 And Text4.Text = "FD") Then
        
        SkinLabel61.Caption = "�¶ȴ���������"
        
        Text4.Text = ""
        
        releaseLock
        
        Exit Sub
        
        '''''''''''''''''''''''''''''''''''RS485�������'''''''''''''''''''''''''''''''''''''
    ElseIf (Len(Text4.Text) = 2 And Text4.Text = "FE") Then
        
        SkinLabel61.Caption = "���ڽ��в�����ͨ���ж�..."
        
        Text4.Text = ""
        
        releaseLock
        
        Exit Sub
        
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    End If
    
    releaseLock
    
End Sub

Private Sub Timer1_Timer()                                                      '��ʱ��1��ѭ���������ֱ����λ����Ӧ
    
    command(0) = &H88
    
    MSComm1.Output = command
    
    command(0) = &HFF                                                           '�������
    
End Sub

Private Sub Timer2_Timer()                                                      '��ʱ��2
    
    Dim m        As Integer
    
    Dim k        As Integer
    
    Dim textline As String
    
    time_count = time_count + 1
    
    ''''''''''''''''''''''''''''''''''��ϵͳ�ļ�'''''''''''''''''''''''''''''''''''''''
    m = 0                                                                       '��ʼ���벡�˸�����Ϣ
    
    Dim bNewRevision As Boolean
    
    Open App.Path & "\sys\sys.txt" For Input As #2                              '���ļ��ж�ȡ
    
    Line Input #2, textline
    
    If textline = "Revision 2017" Then
        
        bNewRevision = True
        
    Else
        
        bNewRevision = False
        
    End If
    
    Do While Not EOF(2)                                                         'EOFΪ��β���Ժ���
        
        If m <> 0 Or bNewRevision Then
            Line Input #2, textline                                             '�������1�д浽����TextLine��

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
        
        Line Input #2, textline                                                 '�������8�д浽����TextLine��
        SkinLabel10(m).Caption = textline                                       '������״̬
        
        m = m + 1                                                               'ѭ��
        
    Loop
    
    Close #2
    
    AllStatesStatistic
    
    If Check1.Value = 1 And (time_count = 3 Or time_count = 8 Or time_count = 13) Then '
        
        For k = 0 To 59
            
            If Val(SkinLabel10(k).Caption) = 2 Or Val(SkinLabel10(k).Caption) = 3 Or Val(SkinLabel10(k).Caption) = 4 Then '���ڲ����е�����ƿ�г����Եģ���������
                
                WindowsMediaPlayer1.Controls.play                               'Call PlayBeep '��λ������
                
                command(0) = &H8B                                               '��λ����������
                
                MSComm1.Output = command
                
                command(0) = &HFF                                               '�������
                
                Exit Sub
                
            End If
            
        Next k
        
    End If
    
    If Check1.Value = 0 Or time_count = 4 Or time_count = 9 Or time_count = 14 Then '����һ����
        
        WindowsMediaPlayer1.Controls.stop
        
        command(0) = &H8A                                                       '�����λ����������
        
        MSComm1.Output = command
        
        command(0) = &HFF                                                       '�������
        
    End If
    
    If time_count = 15 Then
        
        time_count = 0
        
        If DataReceiver_flag = 0 And Interface_flag = 0 Then                    'û���յ���λ������
            
            Text4.Text = ""
            
            SkinLabel61.Caption = "δ����..."
            
            Timer1.Enabled = True
            
            Timer2.Enabled = False
            
            Form2.Enabled = False
            
            Interface_flag = 1                                                  '������ʾ��־λ
            
            Form11.Show
            
        ElseIf DataReceiver_flag = 1 And Interface_flag = 0 Then                '���յ���λ������
            
            DataReceiver_flag = 0
            
        End If
        
    End If
    
End Sub

Public Sub AllStatesStatistic()
    
    Dim k         As Integer
    
    Dim nRunning  As Integer
    
    Dim nPostive  As Integer
    
    Dim nNegative As Integer
    
    Dim nEmptey   As Integer
    
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

