VERSION 5.00
Begin VB.UserControl SystemGraph 
   AutoRedraw      =   -1  'True
   ClientHeight    =   2805
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7500
   ForeColor       =   &H8000000B&
   HitBehavior     =   0  '��
   ScaleHeight     =   2805
   ScaleWidth      =   7500
   Begin VB.PictureBox Graph 
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000007&
      BorderStyle     =   0  'None
      ForeColor       =   &H8000000E&
      Height          =   2775
      Left            =   0
      Picture         =   "SystemGraph1.ctx":0000
      ScaleHeight     =   2769.461
      ScaleMode       =   0  'User
      ScaleWidth      =   7620
      TabIndex        =   0
      Top             =   0
      Width           =   7620
   End
End
Attribute VB_Name = "SystemGraph"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private MaxScaleValue As Integer                                                ' �������̶�ֵ

Private Sub UserControl_Resize()
    
    With Graph                                                                  '���ſؼ�
        
        .Width = UserControl.Width
        
        .Height = UserControl.Height
        
    End With
    
End Sub

Public Function DrawGraph(ByVal RValues As Collection, _
                          ByVal O1Values As Collection, _
                          ByVal O2Values As Collection, _
                          ByVal O3Values As Collection, _
                          DayNum As Integer)
    
    Dim IntX(1)    As Integer                                                      'x������ֵ
    
    Dim IntY(1)    As Integer                                                      'y������ֵ
    
    Dim Red1_Flag  As Integer
    
    Dim Red2_Flag  As Integer
    
    Dim i          As Long
    
    Dim k          As Long
    
    'Dim j As Long
    
    Dim time       As String
    
    Dim store_line As String
    
    Dim line       As Long
    
    'Dim time_month As Integer '��
    
    'Dim time_day As Integer '��
    
    'Dim month_media As Integer '�м����
    
    'Dim day_media As Integer '�м����
    
    On Local Error Resume Next                                                  ' ��ȷ�����
    
    Graph.Cls                                                                   '�����ͼ�������ػ�
    
    Graph.ForeColor = &HC0C0C0                                                  '��ͼ������Ϊ��ɫ
    
    Red1_Flag = 0
    
    Red2_Flag = 0
    
    store_line = ""
    
    time = " "                                                                  '�����ʱ������@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    
    'month_media = Mid(time_start, 1, 2) '��
    
    'day_media = Mid(time_start, 4, 2) '��
    
    MaxScaleValue = 6000                                                        '
    
    For i = 0 To 5                                                              'y��������ʾֵ
        
        Graph.CurrentX = -60
        
        Graph.CurrentY = CInt((Graph.Height - 150) / 6) * i
        
        Graph.Print MaxScaleValue - Int(MaxScaleValue * i / 6)
        
    Next i
    
    For i = 0 To DayNum
        
        Graph.CurrentY = 2600
        
        Graph.CurrentX = CInt((Graph.Width - 200) / DayNum * i) - 60
        
        Graph.Print i
        
    Next i
    
    Graph.CurrentX = 20
    
    Graph.CurrentY = 2600
    
    Graph.ForeColor = RGB(255, 255, 255)                                        '��ɫ
    
    'Graph.Print time_start '2011-11-26,2012-3-5�޸�,���ڸ�Ϊ��ʾ����,ԭ������ע��
    
    col = RGB(0, 255, 0)                                                        '��ɫ
    
    'Temp values for the For loop using
    Dim nUpValCount  As Integer

    Dim nIndex       As Integer

    Dim bChangePoint As Boolean
    
    Dim Temp         As Integer
    
    Dim temp_m       As Integer

    Dim temp_n       As Integer

    Dim q            As Integer
    
    nUpValCount = 0
    
    For i = 1 To RValues.Count                                                  'ÿ�ζ����ػ����еģ����Բſ��Ա���ˢ��
        
        If RValues(i) > yuzhiup And Red1_Flag = 0 Then
            
            nUpValCount = nUpValCount + 1
            
            If nUpValCount > 12 Then
                
                Red1_Flag = 1
                
                line = i
                
            End If
            
        Else
            
            nUpValCount = 0
            
        End If
        
        If i > 20 And Red1_Flag = 0 Then                                        '����8�����״���0
            
            If (O2Values(i) > 0 And O2Values(i - 1) > 0 And O2Values(i - 2) > 0 And O2Values(i - 3) > 0 And O2Values(i - 4) > 0 And O2Values(i - 5) > 0 And O2Values(i - 6) > 0 And O2Values(i - 7) > 0 And O1Values(i - 7) > 0 And O1Values(i - 6) > 0 And O1Values(i - 5) > 0 And O1Values(i - 4) > 0 And O1Values(i - 3) > 0 And O1Values(i - 2) > 0 And O1Values(i - 1) > 0 And O1Values(i) > 0 And RValues(i) - RValues(i - 7) > 50) Then
                
                Red1_Flag = 1
                line = i
                
            End If
            
        End If
        
        If i > 22 And Red1_Flag = 0 Then                                        '����10�����״��ڵ���0
            
            If (O2Values(i) > 0) Then
                
                temp_m = 0
                temp_n = 0
                
                For q = 1 To 11
                    
                    If (O2Values(i - q) > 0) And (O1Values(i - q) > 0) Then
                        
                        temp_m = temp_m + 1
                        
                    ElseIf (O2Values(i - q) < 0) Or (O1Values(i - q) <= 0) Then
                        
                        Exit For
                        
                    Else
                        
                        temp_n = temp_n + 1
                        
                    End If
                    
                    If temp_n > 3 Then
                        
                        Exit For
                        
                    End If
                    
                    If temp_m > 7 And i - temp_n - temp_m > 12 And O1Values(i - temp_n - temp_m) > 0 And RValues(i) - RValues(i - temp_n - temp_m) > 50 Then
                        
                        Red1_Flag = 1
                        
                        line = i
                        
                        Exit For
                        
                    End If
                    
                Next q
                
            End If
            
        End If
        
        '        If i > 22 And Red1_Flag = 0 Then                                        'ǰ12�����
        '
        '            If (O2Values(i) > 0 And O2Values(i - 1) > 0 And O2Values(i - 2) > 0 And O2Values(i - 3) > 0 And O2Values(i - 4) > 0 And _
        '                O2Values(i - 5) > 0 And O2Values(i - 6) > 0 And O2Values(i - 7) > 0 And O2Values(i - 8) > 0 And O2Values(i - 9) > 0 And _
        '                O1Values(i) > 0 And RValues(i) - RValues(i - 10) > 50) Then
        '
        '                Red1_Flag = 1
        '                line = i
        '
        '            End If
        '
        '        End If
        
        '        If i >= 9 And Red1_Flag = 0 Then                                        'ǰ�������
        '
        '            If (O1Values(i) > 0 And O1Values(i - 1) > 0 And O1Values(i - 2) > 0 And O1Values(i - 3) > 0 And O1Values(i - 4) > 0 And O1Values(i - 5) > 0 And _
        '                O2Values(i - 3) > 0 And O2Values(i - 4) > 0 And O2Values(i - 5) > 0 And _
        '                O3Values(i - 5) > 0) And RValues(i) - RValues(i - 6) > 60 Then
        '
        '                Red1_Flag = 1
        '
        '                line = i
        '
        '            End If
        '
        '        End If
        
        If i >= 289 And Red1_Flag = 0 Then
            
            bChangePoint = False
            
            Temp = 0
            
            For nIndex = 0 To 143
                
                '�����ֵ��ʱ����Ϊ50 �д���ȶ
                
                If Abs(RValues(i - 145 + nIndex) + RValues(i - 143 + nIndex) - 2 * RValues(i - 144 + nIndex)) > 50 Then
                    
                    If bChangePoint Then
                        
                        Temp = Temp + RValues(i - 144 + nIndex) - RValues(i - 145 + nIndex)
                        
                    Else
                        
                        bChangePoint = True
                        
                    End If
                    
                Else
                    
                    bChangePoint = False
                    
                End If
                
            Next nIndex
            
            If bChangePoint Then
                
                Temp = Temp + RValues(i) - RValues(i - 1)
                
            End If
            
            Temp = RValues(i) - RValues(i - 144) - Temp
            
            If (Temp >= 380) Or (i >= 433 And Temp >= 250) Or (i >= 577 And Temp >= 150) Then
                
                Red1_Flag = 1
                
                line = i
                
            End If
            
        ElseIf i >= 145 And Red1_Flag = 0 Then
            
            bChangePoint = False
            
            Temp = 0
            
            For nIndex = 0 To 107
                
                '�����ֵ��ʱ����Ϊ50 �д���ȶ
                
                If Abs(RValues(i - 109 + nIndex) + RValues(i - 107 + nIndex) - 2 * RValues(i - 108 + nIndex)) > 50 Then
                    
                    If bChangePoint Then
                        
                        Temp = Temp + RValues(i - 108 + nIndex) - RValues(i - 109 + nIndex)
                        
                    Else
                        
                        bChangePoint = True
                        
                    End If
                    
                Else
                    
                    bChangePoint = False
                    
                End If
                
            Next nIndex
            
            If bChangePoint Then
                
                Temp = Temp + RValues(i) - RValues(i - 1)
                
            End If
            
            Temp = RValues(i) - RValues(i - 108) - Temp
            
            If Temp >= 380 Then
                
                Red1_Flag = 1
                
                line = i
                
            End If
            
        End If
        
        If (Red1_Flag = 1 And Red2_Flag = 0) Then
            
            Red2_Flag = 1
            
            Open App.Path & "\data\" & barcode_name & ".txt" For Input As #1    '��ʾ����
            
            Line Input #1, store_line                                           '������������

            If store_line = "Revision 2017" Then
                Line Input #1, store_line
                Line Input #1, store_line
                Line Input #1, store_line

            End If

            Line Input #1, store_line
            Line Input #1, store_line
            Line Input #1, store_line
            Line Input #1, store_line
            Line Input #1, store_line
            Line Input #1, store_line
            Line Input #1, store_line
            
            For k = 1 To line - 1
                
                Line Input #1, store_line
                
            Next k
            
            Line Input #1, store_line                                           '��ʱ��*****************************************
            
            time = Mid(store_line, 39, 14)
            
            Close #1
            
            col = RGB(255, 0, 0)                                                '��ɫ
            
            Graph.CurrentX = 700
            
            Graph.CurrentY = 200
            
            Graph.ForeColor = RGB(255, 0, 0)                                    '��ɫ
            
            Graph.Print time                                                    '2011-6-20
            
        End If
        
        IntX(1) = IntX(0) + cul_time                                            'x�᳤��
        
        IntY(1) = CInt((RValues(i) * Graph.Height) / MaxScaleValue)             'y�᳤��
        
        Graph.Line (IntX(0), Graph.Height - IntY(0))-(IntX(1), Graph.Height - IntY(1)), col '��ֱ��
        
        IntX(0) = IntX(1)
        
        IntY(0) = IntY(1)
        
    Next i
    
    DoEvents
    
End Function

Public Property Get MaxScale() As Integer
    
    MaxScale = MaxScaleValue                                                    ' ��ȡ������
    
End Property

Public Property Let MaxScale(intScale As Integer)
    
    MaxScaleValue = intScale                                                    ' ����������Set maxscale
    
    PropertyChanged "MaxScale"
    
End Property

Private Sub UserControl_ReadProperties(PropBag As PropertyBag)
    
    MaxScaleValue = PropBag.ReadProperty("MaxScale", 100)                       ' �ӿؼ����԰��ж�ȡ�ؼ�������ֵ
    
End Sub

Private Sub UserControl_WriteProperties(PropBag As PropertyBag)
    
    Call PropBag.WriteProperty("MaxScale", MaxScaleValue, 100)                  ' �������ֵ
    
End Sub

