VERSION 5.00
Object = "{74848F95-A02A-4286-AF0C-A3C755E4A5B3}#1.0#0"; "actskn43.ocx"
Begin VB.Form Form5 
   Caption         =   "��������ƿ"
   ClientHeight    =   1935
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   2655
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1935
   ScaleWidth      =   2655
   StartUpPosition =   3  '����ȱʡ
   Begin ACTIVESKINLibCtl.Skin Skin1 
      Left            =   900
      OleObjectBlob   =   "bottleinputfrm.frx":0000
      Top             =   90
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ȷ��"
      Height          =   375
      Left            =   840
      TabIndex        =   4
      Top             =   1320
      Width           =   855
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
      Height          =   255
      Left            =   1800
      OleObjectBlob   =   "bottleinputfrm.frx":0234
      TabIndex        =   3
      Top             =   720
      Width           =   615
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
      Height          =   255
      Left            =   1440
      OleObjectBlob   =   "bottleinputfrm.frx":0296
      TabIndex        =   2
      Top             =   720
      Width           =   375
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "bottleinputfrm.frx":02F4
      TabIndex        =   1
      Top             =   240
      Width           =   615
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "bottleinputfrm.frx":0358
      TabIndex        =   0
      Top             =   720
      Width           =   1335
   End
End
Attribute VB_Name = "Form5"
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

Const WS_SYSMENU = &H80000                                                      ''''''''''''''''''''''''''''''���������ϵ�X��ť

Const GWL_STYLE = (-16)

Const SWP_NOMOVE = &H2

Const SWP_NOSIZE = &H1

Const SWP_NOZORDER = &H4

Const SWP_DRAWFRAME = &H20

Private Sub Form_Load()
    
    Me.Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2            '�������
    
    Skin1.LoadSkin App.Path + "\Skins\3.skn"
    
    Skin1.ApplySkin Me.hWnd                                                     '����Ƥ��
    
    SkinLabel3.Caption = (n + 1) & "#"                                          '��λ��
    
    Dim lStyle As Long                                                          ''''''''''''''''''''''''''''''���������ϵ�X��ť

    lStyle = GetWindowLong(hWnd, GWL_STYLE)
    lStyle = lStyle And Not WS_SYSMENU
    SetWindowLong Me.hWnd, GWL_STYLE, lStyle
    SetWindowPos Me.hWnd, 0, 0, 0, 0, 0, SWP_NOZORDER Or SWP_DRAWFRAME Or SWP_NOMOVE Or SWP_NOSIZE
    
End Sub

Private Sub Command1_Click()                                                    'ȷ�ϰ�ť
    
    Dim a          As Integer                                                            '��Ϊѭ������
    
    Dim keshi_name As String                                                    '��ǰ����
    
    Dim keshi_file As String                                                    '��ǰ�����ļ���
    
    Dim pyp_name   As String                                                      '��ǰ����ƿ����
    
    Dim pyp_file   As String                                                      '��ǰ����ƿ�����ļ���
    
    Form3.Command1.Enabled = False                                              '����ƿ���밴ť������
    
    Form3.Command2.Enabled = True                                               '����ƿȡ����ť����
    
    Form2.SkinLabel2(n).Caption = Form3.SkinLabel2.Caption                      '������
    Form2.SkinLabel3(n).Caption = Form3.SkinLabel4.Caption                      '����
    Form2.SkinLabel78(n).Caption = Form3.SkinLabel23.Caption                    'ID
    Form2.SkinLabel4(n).Caption = Form3.SkinLabel6.Caption                      '�Ա�
    Form2.SkinLabel5(n).Caption = Form3.SkinLabel8.Caption                      '����
    Form2.SkinLabel6(n).Caption = Form3.SkinLabel10.Caption                     '����
    Form2.SkinLabel7(n).Caption = Form3.SkinLabel12.Caption                     '����ƿ����
    Form2.SkinLabel9(n).Caption = Form3.SkinLabel16.Caption                     'ʱ��:����+ʱ��
    Form2.SkinLabel8(n).Caption = Format(Now, "yyyy-mm")                        'ʱ��:����
    Form2.SkinLabel42(n).Caption = Mid(Form2.SkinLabel8(n).Caption, 1, 4)       'ʱ��:���
    Form2.SkinLabel43(n).Caption = Mid(Form2.SkinLabel8(n).Caption, 6, 2)       'ʱ��:�·�
    Form2.SkinLabel11(n).Caption = Form3.SkinLabel14.Caption                    '����ʱ��
    Form2.Picture1(n).Picture = LoadPicture(App.Path + "\pic\5.jpg")            '��ʼ����ʱ��ͼ��
    Form2.SkinLabel10(n).Caption = 1                                            '����ƿ״̬��ʼ��
    
    Open App.Path & "\data\" & Form3.SkinLabel2.Caption & ".txt" For Append As #1 '�½��ļ�,�ļ���������Ķ�
    
    Print #1, "Revision 2017"                                                   '�汾��
    Print #1, (n + 1) & "#"                                                     'ƿ�׺�
    Print #1, Form3.SkinLabel2                                                  '������
    Print #1, Form3.SkinLabel23                                                 'ID
    Print #1, Form3.SkinLabel4                                                  '����
    Print #1, Form3.SkinLabel6                                                  '�Ա�
    Print #1, Form3.SkinLabel8                                                  '����
    Print #1, Form3.SkinLabel10                                                 '����
    Print #1, Form3.SkinLabel12                                                 '����ƿ����
    Print #1, Form3.SkinLabel14                                                 '����ʱ��
    Print #1, Format(Now, "yyyy-mm-dd hh:mm")                                   'ʱ��
    
    Close #1
    
    '''''''''''''''''''''''''''''��ʱ�䱣��ͳ�����ϳ�ʼ��''''''''''''''''''''''''''''''''
    
    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & "ͳ�����" & ".txt", vbDirectory) = "" Then
        
        getFileWriteLock
        
        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & "ͳ�����" & ".txt" For Output As #4 '��ʱ�䱣��ͳ��������ϳ�ʼ��
        
        Print #4, Form2.SkinLabel42(n).Caption & "��" & Form2.SkinLabel43(n).Caption & "��" & "ͳ�����:"
        Print #4, "���²������������Ϊ:" & 0
        Print #4, "���²����������Ϊ:" & 0
        Print #4, "���²����������Ϊ:" & 0
        Print #4, "���²�����Ա���Ϊ:" & "0%"
        Print #4, "���²�����Ա���Ϊ:" & "0%"
        
        Close #4
        
        Open App.Path & "\count\count.txt" For Output As #5                     '��ʱ�䱣������������ʼ��
        
        Print #5, 0                                                             '��������
        Print #5, 0                                                             '��������
        Print #5, 0                                                             '��������
        
        Close #5
        
        releaseFileWriteLock
        
    End If
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''''''''''''''''''�����ұ���ͳ�����ϳ�ʼ��''''''''''''''''''''''''''''''''
    
    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & Form2.SkinLabel6(n).Caption & ".txt", vbDirectory) = "" Then
        
        getFileWriteLock
        
        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & Form2.SkinLabel6(n).Caption & ".txt" For Output As #4
        
        Print #4, Form2.SkinLabel42(n).Caption & "��" & Form2.SkinLabel43(n).Caption & "��" & Form2.SkinLabel6(n).Caption & "ͳ�����:"
        Print #4, "���²������������Ϊ:" & 0
        Print #4, "����" & Form2.SkinLabel6(n).Caption & "�����������Ϊ:" & 0
        Print #4, "����" & Form2.SkinLabel6(n).Caption & "�����������Ϊ:" & 0
        Print #4, "����" & Form2.SkinLabel6(n).Caption & "������Ա���Ϊ:" & "0%"
        Print #4, "����" & Form2.SkinLabel6(n).Caption & "������Ա���Ϊ:" & "0%"
        
        Close #4
        
        Open App.Path & "\count\" & Form2.SkinLabel6(n).Caption & ".txt" For Output As #5 '�ڿ�����������ʼ��
        
        Print #5, 0                                                             '��������
        Print #5, 0                                                             '��������
        
        Close #5
        
        releaseFileWriteLock
        
    End If
    
    ''''''1���ڿ�
    
    '    keshi_name = "�ڿ�"
    '
    '    keshi_file = "neike"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt" For Output As #4 '�ڿ�ͳ��������ϳ�ʼ��
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "��" & Form2.SkinLabel43(n).Caption & "��" & keshi_name & "ͳ�����:"
    '        Print #4, "���²������������Ϊ:" & 0
    '        Print #4, "����" & keshi_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & keshi_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & keshi_name & "������Ա���Ϊ:" & "0%"
    '        Print #4, "����" & keshi_name & "������Ա���Ϊ:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & keshi_file & ".txt" For Output As #5        '�ڿ�����������ʼ��
    '
    '        Print #5, 0                                                             '��������
    '        Print #5, 0                                                             '��������
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''2�����
    '
    '    keshi_name = "���"
    '
    '    keshi_file = "waike"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt" For Output As #4 '���ͳ��������ϳ�ʼ��
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "��" & Form2.SkinLabel43(n).Caption & "��" & keshi_name & "ͳ�����:"
    '        Print #4, "���²������������Ϊ:" & 0
    '        Print #4, "����" & keshi_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & keshi_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & keshi_name & "������Ա���Ϊ:" & "0%"
    '        Print #4, "����" & keshi_name & "������Ա���Ϊ:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & keshi_file & ".txt" For Output As #5        '�������������ʼ��
    '
    '        Print #5, 0                                                             '��������
    '        Print #5, 0                                                             '��������
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''3��С����
    '
    '    keshi_name = "��׼��ͯ����ƿ"
    '
    '    keshi_file = "xiaoerke"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt" For Output As #4 'С����ͳ��������ϳ�ʼ��
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "��" & Form2.SkinLabel43(n).Caption & "��" & keshi_name & "ͳ�����:"
    '        Print #4, "���²������������Ϊ:" & 0
    '        Print #4, "����" & keshi_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & keshi_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & keshi_name & "������Ա���Ϊ:" & "0%"
    '        Print #4, "����" & keshi_name & "������Ա���Ϊ:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & keshi_file & ".txt" For Output As #5        'С��������������ʼ��
    '
    '        Print #5, 0                                                             '��������
    '        Print #5, 0                                                             '��������
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''4������
    '
    '    keshi_name = "����"
    '
    '    keshi_file = "fuke"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & keshi_name & ".txt" For Output As #4 '����ͳ��������ϳ�ʼ��
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "��" & Form2.SkinLabel43(n).Caption & "��" & keshi_name & "ͳ�����:"
    '        Print #4, "���²������������Ϊ:" & 0
    '        Print #4, "����" & keshi_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & keshi_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & keshi_name & "������Ա���Ϊ:" & "0%"
    '        Print #4, "����" & keshi_name & "������Ա���Ϊ:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & keshi_file & ".txt" For Output As #5        '��������������ʼ��
    '
    '        Print #5, 0                                                             '��������
    '        Print #5, 0                                                             '��������
    '
    '        Close #5
    '
    '    End If
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    '''''''''''''''''''''''''''������ƿ���ౣ��ͳ������''''''''''''''''''''''''''''''''''
    
    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & Form2.SkinLabel7(n).Caption & ".txt", vbDirectory) = "" Then
        
        getFileWriteLock
        
        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & Form2.SkinLabel7(n).Caption & ".txt" For Output As #4
        
        Print #4, Form2.SkinLabel42(n).Caption & "��" & Form2.SkinLabel43(n).Caption & "��" & Form2.SkinLabel7(n).Caption & "ͳ�����:"
        Print #4, "���²������������Ϊ:" & 0
        Print #4, "����" & Form2.SkinLabel7(n).Caption & "�����������Ϊ:" & 0
        Print #4, "����" & Form2.SkinLabel7(n).Caption & "�����������Ϊ:" & 0
        Print #4, "����" & Form2.SkinLabel7(n).Caption & "������Ա���Ϊ:" & "0%"
        Print #4, "����" & Form2.SkinLabel7(n).Caption & "������Ա���Ϊ:" & "0%"
        
        Close #4
        
        Open App.Path & "\count\" & Form2.SkinLabel7(n).Caption & ".txt" For Output As #5
        
        Print #5, 0                                                             '��������
        Print #5, 0                                                             '��������
        
        Close #5
        
        releaseFileWriteLock
        
    End If
    
    ''''''1����׼����ƿ
    
    '    pyp_name = "��������ƿ"
    '
    '    pyp_file = "biaozhun"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt" For Output As #4 '��������ƿͳ��������ϳ�ʼ��
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "��" & Form2.SkinLabel43(n).Caption & "��" & pyp_name & "ͳ�����:"
    '        Print #4, "���²������������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "������Ա���Ϊ:" & "0%"
    '        Print #4, "����" & pyp_name & "������Ա���Ϊ:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & pyp_file & ".txt" For Output As #5          '��׼����ƿ����������ʼ��
    '
    '        Print #5, 0                                                             '��������
    '        Print #5, 0                                                             '��������
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''2������ƿ
    '
    '    pyp_name = "��������ƿ"
    '
    '    pyp_file = "yanyang"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt" For Output As #4 '����ƿͳ��������ϳ�ʼ��
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "��" & Form2.SkinLabel43(n).Caption & "��" & pyp_name & "ͳ�����:"
    '        Print #4, "���²������������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "������Ա���Ϊ:" & "0%"
    '        Print #4, "����" & pyp_name & "������Ա���Ϊ:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & pyp_file & ".txt" For Output As #5          '����ƿ����������ʼ��
    '
    '        Print #5, 0                                                             '��������
    '        Print #5, 0                                                             '��������
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''3���к�С��ƿ
    '
    '    pyp_name = "�кͿ����ض�ͯ����ƿ"
    '
    '    pyp_file = "zhongxiao"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt" For Output As #4 '�к�С��ƿͳ��������ϳ�ʼ��
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "��" & Form2.SkinLabel43(n).Caption & "��" & pyp_name & "ͳ�����:"
    '        Print #4, "���²������������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "������Ա���Ϊ:" & "0%"
    '        Print #4, "����" & pyp_name & "������Ա���Ϊ:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & pyp_file & ".txt" For Output As #5          '�к�С��ƿ����������ʼ��
    '
    '        Print #5, 0                                                             '��������
    '        Print #5, 0                                                             '��������
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''4���к�����ƿ
    '
    '    pyp_name = "�кͿ����س�������ƿ"
    '
    '    pyp_file = "zhongshi"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt" For Output As #4 '�к�����ƿͳ��������ϳ�ʼ��
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "��" & Form2.SkinLabel43(n).Caption & "��" & pyp_name & "ͳ�����:"
    '        Print #4, "���²������������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "������Ա���Ϊ:" & "0%"
    '        Print #4, "����" & pyp_name & "������Ա���Ϊ:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & pyp_file & ".txt" For Output As #5          '�к�����ƿ����������ʼ��
    '
    '        Print #5, 0                                                             '��������
    '        Print #5, 0                                                             '��������
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''5���к�����ƿ
    '
    '    pyp_name = "�кͿ����س�������ƿ"
    '
    '    pyp_file = "zhongyan"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt" For Output As #4 '�к�����ƿͳ��������ϳ�ʼ��
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "��" & Form2.SkinLabel43(n).Caption & "��" & pyp_name & "ͳ�����:"
    '        Print #4, "���²������������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "������Ա���Ϊ:" & "0%"
    '        Print #4, "����" & pyp_name & "������Ա���Ϊ:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & pyp_file & ".txt" For Output As #5          '�к�����ƿ����������ʼ��
    '
    '        Print #5, 0                                                             '��������
    '        Print #5, 0                                                             '��������
    '
    '        Close #5
    '
    '    End If
    '
    '    ''''''6����֧�˾�����ƿ
    '
    '    pyp_name = "�кͿ���������ƿ"
    '
    '    pyp_file = "fengan"
    '
    '    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt", vbDirectory) = "" Then
    '
    '        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & pyp_name & ".txt" For Output As #4 '��֧�˾�����ƿͳ��������ϳ�ʼ��
    '
    '        Print #4, Form2.SkinLabel42(n).Caption & "��" & Form2.SkinLabel43(n).Caption & "��" & pyp_name & "ͳ�����:"
    '        Print #4, "���²������������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "�����������Ϊ:" & 0
    '        Print #4, "����" & pyp_name & "������Ա���Ϊ:" & "0%"
    '        Print #4, "����" & pyp_name & "������Ա���Ϊ:" & "0%"
    '
    '        Close #4
    '
    '        Open App.Path & "\count\" & pyp_file & ".txt" For Output As #5          '��֧�˾�����ƿ����������ʼ��
    '
    '        Print #5, 0                                                             '��������
    '        Print #5, 0                                                             '��������
    '
    '        Close #5
    '
    '    End If
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''ͳ�Ʋ�����Ϣͳ������'''''''''''''''''''''''''''''''''''
    
    getFileWriteLock
    
    If Dir(App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & "������Ϣ" & ".txt", vbDirectory) = "" Then
        
        Open App.Path & "\statistics\" & Form2.SkinLabel8(n).Caption & "\" & "������Ϣ" & ".txt" For Output As #8 '�½��ļ�,�ļ���������Ķ�
        
        Print #8, Format(Now, "yyyy-mm") & "������Ϣ:"
        
        Close #8
        
    End If
    
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    ''''''''''''''''''''''''''''''''ˢ��sys�ļ�,�׵���'''''''''''''''''''''''''''''''''''
     
    Open App.Path & "\sys\sys.txt" For Output As #2
    
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
        Print #2, Form2.SkinLabel10(a).Caption                                  '״̬
        
    Next a
    
    Close #2
    
    releaseFileWriteLock
    
    Form2.AllStatesStatistic
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    command(0) = &H80
    
    Form2.MSComm1.Output = command                                              ''
    
    command(0) = &H80
    
    Form2.MSComm1.Output = command                                              ''
    
    command(0) = &HFF                                                           '�������
    
    Form3.Enabled = True                                                        '������������
    
    Form2.Enabled = True                                                        '������������
    
    Unload Form3                                                                'ж�ز�������
    
    Unload Form5                                                                'ж�ر�����
    
End Sub
