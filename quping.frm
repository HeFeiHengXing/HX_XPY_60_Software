VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form16 
   Caption         =   "ȡƿ"
   ClientHeight    =   2670
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3765
   LinkTopic       =   "Form18"
   LockControls    =   -1  'True
   ScaleHeight     =   2670
   ScaleWidth      =   3765
   StartUpPosition =   3  '����ȱʡ
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   360
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   5
      Top             =   960
      Width           =   3015
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      ForeColor       =   &H80000008&
      Height          =   465
      Left            =   2040
      Picture         =   "quping.frx":0000
      ScaleHeight     =   465
      ScaleWidth      =   465
      TabIndex        =   4
      Top             =   360
      Width           =   465
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   600
      Top             =   0
   End
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   120
      OleObjectBlob   =   "quping.frx":040C
      Top             =   120
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   2640
      OleObjectBlob   =   "quping.frx":0640
      TabIndex        =   3
      Top             =   480
      Width           =   495
   End
   Begin VB.CommandButton Command2 
      Caption         =   "ȡ��"
      Height          =   375
      Left            =   2040
      TabIndex        =   2
      Top             =   2040
      Width           =   750
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ȷ��"
      Height          =   375
      Left            =   840
      TabIndex        =   1
      Top             =   2040
      Width           =   750
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   720
      OleObjectBlob   =   "quping.frx":06A2
      TabIndex        =   0
      Top             =   480
      Width           =   1335
   End
End
Attribute VB_Name = "Form16"
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

Public bPositive   As Boolean

Public strPositive As String

Public strNegative As String

Private bStop      As Boolean

Private strText1   As String

Private strText2   As String

Const WS_SYSMENU = &H80000                                                      ''''''''''''''''''''''''''''''���������ϵ�X��ť

Const GWL_STYLE = (-16)

Const SWP_NOMOVE = &H2

Const SWP_NOSIZE = &H1

Const SWP_NOZORDER = &H4

Const SWP_DRAWFRAME = &H20

Private Sub Command1_Click()
    
    Dim per1           As Variant                                                         '���԰ٷֱ�
    
    Dim per2           As Variant                                                         '���԰ٷֱ�
    
    Dim time_display1  As String                                                 '��ʱ��ͳ�����Խ����ʾ
    
    Dim time_display2  As String                                                 '��ʱ��ͳ�����Խ����ʾ
    
    Dim keshi_count1   As Integer                                                 '������ͳ�Ƶ�ǰ���Խ��
    
    Dim keshi_count2   As Integer                                                 '������ͳ�Ƶ�ǰ���Խ��
    
    Dim keshi_display1 As String                                                '������ͳ�����Խ����ʾ
    
    Dim keshi_display2 As String                                                '������ͳ�����Խ����ʾ
    
    Dim pyp_count1     As Integer                                                   '������ƿ����ͳ�Ƶ�ǰ���Խ��
    
    Dim pyp_count2     As Integer                                                   '������ƿ����ͳ�Ƶ�ǰ���Խ��
    
    Dim pyp_display1   As String                                                  '������ƿͳ�����Խ����ʾ
    
    Dim pyp_display2   As String                                                  '������ƿͳ�����Խ����ʾ
    
    For k = 0 To 59
        
        If (bPositive And (Val(Form2.SkinLabel10(k).Caption) = 2 Or Val(Form2.SkinLabel10(k).Caption) = 4)) Or ((Not bPositive) And (Val(Form2.SkinLabel10(k).Caption) = 3)) Then
            
            '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            
            ''''''''''''''''''''''''''''''��ȡ����ͳ������'''''''''''''''''''''''''''''''''''''''
            
            If Dir(App.Path & "\count\" & Form2.SkinLabel6(k).Caption & ".txt") <> "" Then
                
                Open App.Path & "\count\" & Form2.SkinLabel6(k).Caption & ".txt" For Input As #5
                
                Line Input #5, textline                                         '�������1�д浽����TextLine��
                
                keshi_nk1 = textline                                            '����������
                
                Line Input #5, textline                                         '�������1�д浽����TextLine��
                
                keshi_nk2 = textline                                            '����������
                
                Close #5
                
            Else
                
                keshi_nk1 = 0
                
                keshi_nk2 = 0
                
            End If
            
            '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            
            ''''''''''''''''''''''''''��ȡ����ƿ����ͳ������'''''''''''''''''''''''''''''''''''''
            
            If Dir(App.Path & "\count\" & Form2.SkinLabel7(k).Caption & ".txt") <> "" Then
                
                Open App.Path & "\count\" & Form2.SkinLabel7(k).Caption & ".txt" For Input As #5
                
                Line Input #5, textline                                         '�������1�д浽����TextLine��
                
                pyp_bs1 = textline                                              '����������
                
                Line Input #5, textline                                         '�������1�д浽����TextLine��
                
                pyp_bs2 = textline                                              '����������
                
                Close #5
                
            Else
                
                pyp_bs1 = 0
                
                pyp_bs2 = 0
                
            End If
            
            ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            
            getFileWriteLock
            
            Open App.Path & "\result\" & Form2.SkinLabel2(k) & ".dat" For Output As #1 '������������浽result�ļ�����
            
            If bPositive Then
                
                Print #1, "����"
                
            Else
                
                Print #1, "����"
                
            End If
            
            Print #1, k
            
            Close #1
            
            releaseFileWriteLock
            
            If Dir(App.Path & "\statistics\" & Format(Now, "yyyy-mm"), vbDirectory) = "" Then
                
                sum = 0: sum1 = 0: sum2 = 0
                
                keshi_nk1 = 0: keshi_nk2 = 0: keshi_wk1 = 0: keshi_wk2 = 0: keshi_xk1 = 0: keshi_xk2 = 0: keshi_fk1 = 0: keshi_fk2 = 0
                
                pyp_bs1 = 0: pyp_bs2 = 0: pyp_yy1 = 0: pyp_yy2 = 0: pyp_zx1 = 0: pyp_zx2 = 0: pyp_zs1 = 0: pyp_zs2 = 0: pyp_zy1 = 0: pyp_zy2 = 0: pyp_fg1 = 0: pyp_fg2 = 0
                
                MkDir App.Path & "\statistics\" & Format(Now, "yyyy-mm")        '�������ڸ����µ�ͳ���ļ���
                
            End If
            
            ''''''''''''''''''''''''''''''''��ʱ�䱣��ͳ������'''''''''''''''''''''''''''''''''''
            
            If (Form2.SkinLabel10(k) = 1 Or Form2.SkinLabel10(k) = 3) Then      'ͳ�����Խ��
                
                sum1 = sum1 + 1: sum = sum1 + sum2
                
            ElseIf (Form2.SkinLabel10(k) = 2 Or Form2.SkinLabel10(k) = 4) Then  'ͳ�����Խ��
                
                sum2 = sum2 + 1: sum = sum1 + sum2
                
            End If
            
            If sum = 0 Then                                                     ''
                
                per1 = 0: per2 = 0
                
                strText1 = Format(per1, "0%")
                
                strText2 = Format(per2, "0%")
                
            Else
                
                per1 = sum1 / sum: per2 = sum2 / sum
                
                If (per1 = 0 And per2 <> 0) Then
                    
                    strText1 = Format(per1, "0%")
                    
                    strText2 = Format(per2, "###.00%")
                    
                ElseIf (per1 <> 0 And per2 = 0) Then
                    
                    strText1 = Format(per1, "###.00%")
                    
                    strText2 = Format(per2, "0%")
                    
                ElseIf per1 <> 0 And per2 <> 0 Then
                    
                    strText1 = Format(per1, "###.00%")
                    
                    strText2 = Format(per2, "###.00%")
                    
                End If
                
            End If
            
            getFileWriteLock
            
            Open App.Path & "\statistics\" & Format(Now, "yyyy-mm") & "\" & "ͳ�����" & ".txt" For Output As #4 'ˢ��ͳ�����
            
            Print #4, Format(Now, "yyyy") & "��" & Format(Now, "mm") & "��" & "ͳ�����:"
            Print #4, "���²������������Ϊ:" & sum
            Print #4, "���²����������Ϊ:" & sum1
            Print #4, "���²����������Ϊ:" & sum2
            Print #4, "���²�����Ա���Ϊ:" & strText1
            Print #4, "���²�����Ա���Ϊ:" & strText2
            
            Close #4
            
            Open App.Path & "\count\count.txt" For Output As #5                 '������������
            
            Print #5, sum                                                       '��������
            
            Print #5, sum1                                                      '��������
            
            Print #5, sum2                                                      '��������
            
            Close #5
            
            releaseFileWriteLock
            
            '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            
            ''''''''''''''''''''''''''''''''�����ұ���ͳ������'''''''''''''''''''''''''''''''''''
            
            If (Form2.SkinLabel10(k) = 1 Or Form2.SkinLabel10(k) = 3) Then      'ͳ�����Խ��
                
                keshi_nk1 = keshi_nk1 + 1
                
            ElseIf (Form2.SkinLabel10(k) = 2 Or Form2.SkinLabel10(k) = 4) Then  'ͳ�����Խ��
                
                keshi_nk2 = keshi_nk2 + 1
                
            End If
            
            If sum = 0 Then                                                     '�����ڿ������Ա���
                
                per1 = 0: per2 = 0: keshi_count1 = 0: keshi_count2 = 0
                
                keshi_display1 = Format(per1, "0%")
                
                keshi_display2 = Format(per2, "0%")
                
            Else
                
                per1 = keshi_nk1 / sum: per2 = keshi_nk2 / sum: keshi_count1 = keshi_nk1: keshi_count2 = keshi_nk2
                
                If (per1 = 0 And per2 <> 0) Then
                    
                    keshi_display1 = Format(per1, "0%")
                    
                    keshi_display2 = Format(per2, "###.00%")
                    
                ElseIf (per1 <> 0 And per2 = 0) Then
                    
                    keshi_display1 = Format(per1, "###.00%")
                    
                    keshi_display2 = Format(per2, "0%")
                    
                ElseIf per1 <> 0 And per2 <> 0 Then
                    
                    keshi_display1 = Format(per1, "###.00%")
                    
                    keshi_display2 = Format(per2, "###.00%")
                    
                End If
                
            End If
            
            getFileWriteLock
            
            Open App.Path & "\statistics\" & Form2.SkinLabel8(k).Caption & "\" & Form2.SkinLabel6(k).Caption & ".txt" For Output As #4 '�����ұ���ͳ���������
            
            Print #4, Form2.SkinLabel42(k).Caption & "��" & Form2.SkinLabel43(k).Caption & "��" & Form2.SkinLabel6(k).Caption & "ͳ�����:"
            Print #4, "���²������������Ϊ:" & sum
            Print #4, "����" & Form2.SkinLabel6(k).Caption & "�����������Ϊ:" & keshi_count1
            Print #4, "����" & Form2.SkinLabel6(k).Caption & "�����������Ϊ:" & keshi_count2
            Print #4, "���²�����Ա���Ϊ:" & keshi_display1
            Print #4, "���²�����Ա���Ϊ:" & keshi_display2
            
            Close #4
            
            Open App.Path & "\count\" & Form2.SkinLabel6(k).Caption & ".txt" For Output As #5 '��ʱ�䱣��������������
            
            Print #5, keshi_count1                                              '��������
            Print #5, keshi_count2                                              '��������
            
            Close #5
            
            releaseFileWriteLock
            
            '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            
            '''''''''''''''''''''''''''''������ƿ���ౣ��ͳ������''''''''''''''''''''''''''''''''
            
            If (Form2.SkinLabel10(k) = 1 Or Form2.SkinLabel10(k) = 3) Then      'ͳ�����Խ��
                
                pyp_bs1 = pyp_bs1 + 1
                
            ElseIf (Form2.SkinLabel10(k) = 2 Or Form2.SkinLabel10(k) = 4) Then  'ͳ�����Խ��
                
                pyp_bs2 = pyp_bs2 + 1
                
            End If
            
            If sum = 0 Then                                                     '�����׼����ƿ�����Ա���
                
                per1 = 0: per2 = 0: pyp_count1 = 0: pyp_count2 = 0
                
                pyp_display1 = Format(per1, "0%")
                
                pyp_display2 = Format(per2, "0%")
                
            Else
                
                per1 = pyp_bs1 / sum: per2 = pyp_bs2 / sum: pyp_count1 = pyp_bs1: pyp_count2 = pyp_bs2
                
                If (per1 = 0 And per2 <> 0) Then
                    
                    pyp_display1 = Format(per1, "0%")
                    
                    pyp_display2 = Format(per2, "###.00%")
                    
                ElseIf (per1 <> 0 And per2 = 0) Then
                    
                    pyp_display1 = Format(per1, "###.00%")
                    
                    pyp_display2 = Format(per2, "0%")
                    
                ElseIf per1 <> 0 And per2 <> 0 Then
                    
                    pyp_display1 = Format(per1, "###.00%")
                    
                    pyp_display2 = Format(per2, "###.00%")
                    
                End If
                
            End If
            
            getFileWriteLock
            
            Open App.Path & "\statistics\" & Form2.SkinLabel8(k).Caption & "\" & Form2.SkinLabel7(k).Caption & ".txt" For Output As #4 '������ƿ���ౣ��ͳ���������
            
            Print #4, Form2.SkinLabel42(k).Caption & "��" & Form2.SkinLabel43(k).Caption & "��" & Form2.SkinLabel7(k).Caption & "ͳ�����:"
            Print #4, "���²������������Ϊ:" & sum
            Print #4, "����" & Form2.SkinLabel7(k).Caption & "�����������Ϊ:" & pyp_count1
            Print #4, "����" & Form2.SkinLabel7(k).Caption & "�����������Ϊ:" & pyp_count2
            Print #4, "���²�����Ա���Ϊ:" & pyp_display1
            Print #4, "���²�����Ա���Ϊ:" & pyp_display2
            
            Close #4
            
            Open App.Path & "\count\" & Form2.SkinLabel7(k).Caption & ".txt" For Output As #5 '��ʱ�䱣��������������
            
            Print #5, pyp_count1                                                '��������
            Print #5, pyp_count2                                                '��������
            
            Close #5
            
            releaseFileWriteLock
            
            '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            
            ''''''''''''''''''''''''''''''ͳ�Ʋ�����Ϣͳ������'''''''''''''''''''''''''''''''''''
            
            Dim strResult As String
            
            If bPositive Then
                strResult = "����"
            Else
                strResult = "����"

            End If
            
            Open App.Path & "\statistics\" & Format(Now, "yyyy-mm") & "\" & "������Ϣ" & ".txt" For Append As #8 '���没����Ϣ
            
            Print #8, Format(Now, "yyyy-mm-dd") & "������Ϣ:"
            Print #8, "������:" & Form2.SkinLabel2(k).Caption & " " & "����:" & Form2.SkinLabel3(k).Caption & " " & "ID:" & Form2.SkinLabel78(k).Caption & " " & "�Ա�:" & Form2.SkinLabel4(k).Caption & " " & "����:" & Form2.SkinLabel5(k).Caption & " " & "����:" & Form2.SkinLabel6(k).Caption & " " & "�������:" & strResult & " " & "������ʼʱ��:" & Form2.SkinLabel9(k).Caption & " " & "ȡ��ʱ��:" & Format(Now, "mm-dd hh:mm")
            
            Close #8
            
            '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            
            '''''''''''''''''''''''''''''''''��ǰ��Ϣ��ʼ��''''''''''''''''''''''''''''''''''''''
            
            Form2.SkinLabel2(k).Caption = ""                                    '�����������������
            Form2.SkinLabel3(k).Caption = ""                                    '���������������
            Form2.SkinLabel78(k).Caption = ""                                   '��������ID���
            Form2.SkinLabel4(k).Caption = ""                                    '���������Ա����
            Form2.SkinLabel5(k).Caption = ""                                    '���������������
            Form2.SkinLabel6(k).Caption = ""                                    '��������������
            Form2.SkinLabel7(k).Caption = ""                                    '������������ƿ�������
            Form2.SkinLabel8(k).Caption = ""                                    '��������ʱ�����
            Form2.SkinLabel9(k).Caption = ""                                    '��������ʱ�����
            Form2.SkinLabel42(k).Caption = ""                                   '��������ʱ�����
            Form2.SkinLabel43(k).Caption = ""                                   '��������ʱ�����
            Form2.SkinLabel10(k).Caption = ""                                   '������������״̬���
            Form2.SkinLabel11(k).Caption = ""                                   '������������ʱ�����
            Form2.Picture1(k).Picture = LoadPicture(App.Path + "\pic\4.jpg")    'ͼ��Ĭ��ֵΪ��ɫ
            Form2.Picture1(k).ToolTipText = ""
            Form2.Shape1(k).Visible = False
            
        End If
        
    Next k
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''''''''''''''''''''''''ˢ��sys�ļ�'''''''''''''''''''''''''''''''''''''''
    
    getFileWriteLock
    
    Dim a As Integer
    
    Open App.Path & "\sys\sys.txt" For Output As #2                             '���³�ʼ��sys�ļ�
    
    Print #2, "Revision 2017"                                                   '�ļ��汾
    
    For a = 0 To 59
        
        Print #2, Form2.SkinLabel2(a).Caption                                   '������
        Print #2, Form2.SkinLabel3(a).Caption                                   '����
        Print #2, Form2.SkinLabel78(a).Caption                                  'ID
        Print #2, Form2.SkinLabel4(a).Caption                                   '�Ա�
        Print #2, Form2.SkinLabel5(a).Caption                                   '����
        Print #2, Form2.SkinLabel6(a).Caption                                   '����
        Print #2, Form2.SkinLabel7(a).Caption                                   '����ƿ����
        Print #2, Form2.SkinLabel11(a).Caption                                  '����ʱ��
        Print #2, Form2.SkinLabel8(a).Caption + Form2.SkinLabel9(a).Caption     'ʱ��:����+ʱ��
        Print #2, Form2.SkinLabel10(a).Caption                                  '����״̬
        
    Next a
    
    Close #2
    
    releaseFileWriteLock
    
    Form2.AllStatesStatistic
    
    bStop = False
    
End Sub

Private Sub Command2_Click()
    
    bStop = False
    
End Sub

Private Sub Form_Load()
    
    Form2.Enabled = False
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '�������
    
    Skin1.LoadSkin App.Path + "\Skins\3.skn"
    
    Skin1.ApplySkin Me.hWnd
    
    Dim lStyle As Long                                                          ''''''''''''''''''''''''''''''���������ϵ�X��ť

    lStyle = GetWindowLong(hWnd, GWL_STYLE)
    lStyle = lStyle And Not WS_SYSMENU
    SetWindowLong Me.hWnd, GWL_STYLE, lStyle
    SetWindowPos Me.hWnd, 0, 0, 0, 0, 0, SWP_NOZORDER Or SWP_DRAWFRAME Or SWP_NOMOVE Or SWP_NOSIZE '
    
    '''''''''''''''''''''''''''''''��ȡʱ��ͳ������''''''''''''''''''''''''''''''''''''''
    
    Open App.Path & "\count\count.txt" For Input As #5
    
    Line Input #5, textline                                                     '�������1�д浽����TextLine��
    
    sum = textline                                                              '������������
    
    Line Input #5, textline                                                     '�������1�д浽����TextLine��
    
    sum1 = textline                                                             '����������
    
    Line Input #5, textline                                                     '�������1�д浽����TextLine��
    
    sum2 = textline                                                             '����������
    
    Close #5
    
End Sub

Private Sub Timer1_Timer()
    
    Timer1.Enabled = False
    
    DoShiningEvent
    
End Sub

Private Sub DoShiningEvent()
    
    bStop = True
    
    Do While bStop
        
        For k = 0 To 59
            
            If (bPositive And (Val(Form2.SkinLabel10(k).Caption) = 2 Or Val(Form2.SkinLabel10(k).Caption) = 4)) Or ((Not bPositive) And (Val(Form2.SkinLabel10(k).Caption) = 3)) Then
                
                getLock
                
                Select Case k
                    
                    Case 0
                    
                        command(0) = &H1
                    
                        Form2.MSComm1.Output = command                              '�Ե�1���Ʒ����������(1)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 1
                    
                        command(0) = &H2
                    
                        Form2.MSComm1.Output = command                              '�Ե�2���Ʒ����������(2)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 2
                    
                        command(0) = &H3
                    
                        Form2.MSComm1.Output = command                              '�Ե�3���Ʒ����������(3)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 3
                    
                        command(0) = &H4
                    
                        Form2.MSComm1.Output = command                              '�Ե�4���Ʒ����������(4)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 4
                    
                        command(0) = &H5
                    
                        Form2.MSComm1.Output = command                              '�Ե�5���Ʒ����������(5)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 5
                    
                        command(0) = &H6
                    
                        Form2.MSComm1.Output = command                              '�Ե�6���Ʒ����������(6)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 6
                    
                        command(0) = &H7
                    
                        Form2.MSComm1.Output = command                              '�Ե�7���Ʒ����������(7)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 7
                    
                        command(0) = &H8
                    
                        Form2.MSComm1.Output = command                              '�Ե�8���Ʒ����������(8)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 8
                    
                        command(0) = &H9
                    
                        Form2.MSComm1.Output = command                              '�Ե�9���Ʒ����������(9)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 9
                    
                        command(0) = &HA
                    
                        Form2.MSComm1.Output = command                              '�Ե�10���Ʒ����������(10)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 10
                    
                        command(0) = &HB
                    
                        Form2.MSComm1.Output = command                              '�Ե�11���Ʒ����������(11)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 11
                    
                        command(0) = &HC
                    
                        Form2.MSComm1.Output = command                              '�Ե�12���Ʒ����������(12)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 12
                    
                        command(0) = &HD
                    
                        Form2.MSComm1.Output = command                              '�Ե�13���Ʒ����������(13)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 13
                    
                        command(0) = &HE
                    
                        Form2.MSComm1.Output = command                              '�Ե�14���Ʒ����������(14)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 14
                    
                        command(0) = &HF
                    
                        Form2.MSComm1.Output = command                              '�Ե�15���Ʒ����������(15)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 15
                    
                        command(0) = &H10
                    
                        Form2.MSComm1.Output = command                              '�Ե�16���Ʒ����������(15)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 16
                    
                        command(0) = &H11
                    
                        Form2.MSComm1.Output = command                              '�Ե�17���Ʒ����������(17)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 17
                    
                        command(0) = &H12
                    
                        Form2.MSComm1.Output = command                              '�Ե�18���Ʒ����������(18)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 18
                    
                        command(0) = &H13
                    
                        Form2.MSComm1.Output = command                              '�Ե�19���Ʒ����������(19)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 19
                    
                        command(0) = &H14
                    
                        Form2.MSComm1.Output = command                              '�Ե�20���Ʒ����������(20)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 20
                    
                        command(0) = &H15
                    
                        Form2.MSComm1.Output = command                              '�Ե�21���Ʒ����������(21)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 21
                    
                        command(0) = &H16
                    
                        Form2.MSComm1.Output = command                              '�Ե�22���Ʒ����������(22)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 22
                    
                        command(0) = &H17
                    
                        Form2.MSComm1.Output = command                              '�Ե�23���Ʒ����������(23)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 23
                    
                        command(0) = &H18
                    
                        Form2.MSComm1.Output = command                              '�Ե�24���Ʒ����������(24)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 24
                    
                        command(0) = &H19
                    
                        Form2.MSComm1.Output = command                              '�Ե�25���Ʒ����������(25)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 25
                    
                        command(0) = &H1A
                    
                        Form2.MSComm1.Output = command                              '�Ե�26���Ʒ����������(26)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 26
                    
                        command(0) = &H1B
                    
                        Form2.MSComm1.Output = command                              '�Ե�27���Ʒ����������(27)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 27
                    
                        command(0) = &H1C
                    
                        Form2.MSComm1.Output = command                              '�Ե�28���Ʒ����������(28)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 28
                    
                        command(0) = &H1D
                    
                        Form2.MSComm1.Output = command                              '�Ե�29���Ʒ����������(29)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 29
                    
                        command(0) = &H1E
                    
                        Form2.MSComm1.Output = command                              '�Ե�30���Ʒ����������(30)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 30
                    
                        command(0) = &H1F
                    
                        Form2.MSComm1.Output = command                              '�Ե�31���Ʒ����������(31)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 31
                    
                        command(0) = &H20
                    
                        Form2.MSComm1.Output = command                              '�Ե�32���Ʒ����������(32)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 32
                    
                        command(0) = &H21
                    
                        Form2.MSComm1.Output = command                              '�Ե�33���Ʒ����������(33)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 33
                    
                        command(0) = &H22
                    
                        Form2.MSComm1.Output = command                              '�Ե�34���Ʒ����������(34)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 34
                    
                        command(0) = &H23
                    
                        Form2.MSComm1.Output = command                              '�Ե�35���Ʒ����������(35)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 35
                    
                        command(0) = &H24
                    
                        Form2.MSComm1.Output = command                              '�Ե�36���Ʒ����������(36)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 36
                    
                        command(0) = &H25
                    
                        Form2.MSComm1.Output = command                              '�Ե�37���Ʒ����������(37)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 37
                    
                        command(0) = &H26
                    
                        Form2.MSComm1.Output = command                              '�Ե�38���Ʒ����������(38)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 38
                    
                        command(0) = &H27
                    
                        Form2.MSComm1.Output = command                              '�Ե�39���Ʒ����������(39)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 39
                    
                        command(0) = &H28
                    
                        Form2.MSComm1.Output = command                              '�Ե�40���Ʒ����������(40)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 40
                    
                        command(0) = &H29
                    
                        Form2.MSComm1.Output = command                              '�Ե�41���Ʒ����������(41)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 41
                    
                        command(0) = &H2A
                    
                        Form2.MSComm1.Output = command                              '�Ե�42���Ʒ����������(42)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 42
                    
                        command(0) = &H2B
                    
                        Form2.MSComm1.Output = command                              '�Ե�43���Ʒ����������(43)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 43
                    
                        command(0) = &H2C
                    
                        Form2.MSComm1.Output = command                              '�Ե�44���Ʒ����������(44)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 44
                    
                        command(0) = &H2D
                    
                        Form2.MSComm1.Output = command                              '�Ե�45���Ʒ����������(45)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 45
                    
                        command(0) = &H2E
                    
                        Form2.MSComm1.Output = command                              '�Ե�46���Ʒ����������(46)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 46
                    
                        command(0) = &H2F
                    
                        Form2.MSComm1.Output = command                              '�Ե�47���Ʒ����������(47)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 47
                    
                        command(0) = &H30
                    
                        Form2.MSComm1.Output = command                              '�Ե�48���Ʒ����������(48)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 48
                    
                        command(0) = &H31
                    
                        Form2.MSComm1.Output = command                              '�Ե�49���Ʒ����������(49)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 49
                    
                        command(0) = &H32
                    
                        Form2.MSComm1.Output = command                              '�Ե�50���Ʒ����������(50)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 50
                    
                        command(0) = &H33
                    
                        Form2.MSComm1.Output = command                              '�Ե�51���Ʒ����������(51)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 51
                    
                        command(0) = &H34
                    
                        Form2.MSComm1.Output = command                              '�Ե�52���Ʒ����������(52)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 52
                    
                        command(0) = &H35
                    
                        Form2.MSComm1.Output = command                              '�Ե�53���Ʒ����������(53)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 53
                    
                        command(0) = &H36
                    
                        Form2.MSComm1.Output = command                              '�Ե�54���Ʒ����������(54)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 54
                    
                        command(0) = &H37
                    
                        Form2.MSComm1.Output = command                              '�Ե�55���Ʒ����������(55)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 55
                    
                        command(0) = &H38
                    
                        Form2.MSComm1.Output = command                              '�Ե�56���Ʒ����������(56)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 56
                    
                        command(0) = &H39
                    
                        Form2.MSComm1.Output = command                              '�Ե�57���Ʒ����������(57)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 57
                    
                        command(0) = &H3A
                    
                        Form2.MSComm1.Output = command                              '�Ե�58���Ʒ����������(58)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 58
                    
                        command(0) = &H3B
                    
                        Form2.MSComm1.Output = command                              '�Ե�59���Ʒ����������(59)
                    
                        command(0) = &HFF                                           '�������
                    
                    Case 59
                    
                        command(0) = &H3C
                    
                        Form2.MSComm1.Output = command                              '�Ե�60���Ʒ����������(60)
                    
                        command(0) = &HFF                                           '�������
                    
                End Select
                
                releaseLock
                
                DoEvents
                
                Sleep 250
                
                getLock
                
                command(0) = &H80
                
                Form2.MSComm1.Output = command
                
                command(0) = &HFF
                
                releaseLock
                
                DoEvents
                
            End If
            
        Next k
        
        Sleep 250
        
    Loop
    
    Form2.Enabled = True                                                        '������������
    
    Unload Form16                                                               'ж�ر�����
    
End Sub
