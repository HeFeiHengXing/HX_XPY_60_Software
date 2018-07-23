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

Public Function DrawGraph(ByVal RValues As Collection)
    
    Dim IntX(1) As Integer                                                      'x������ֵ
    
    Dim IntY(1) As Integer                                                      'y������ֵ
    
    Dim Red1_Flag As Integer
    
    Dim Red2_Flag As Integer
    
    Dim i As Long
    
    Dim k As Long
    
    'Dim j As Long
    
    Dim time As String
    
    Dim store_line As String
    
    Dim line As Long
    
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
    
    
    
    For i = 0 To Val(Form2.SkinLabel11(n))
        
        Graph.CurrentY = 2600
        
        Graph.CurrentX = CInt((Graph.Width - 200) / Val(Form2.SkinLabel11(n)) * i) - 60
        
        Graph.Print i
        
    Next i
    
    
    
    
    Graph.CurrentX = 20
    
    Graph.CurrentY = 2600
    
    Graph.ForeColor = RGB(255, 255, 255)                                        '��ɫ
    
    'Graph.Print time_start '2011-11-26,2012-3-5�޸�,���ڸ�Ϊ��ʾ����,ԭ������ע��
    
    col = RGB(0, 255, 0)                                                        '��ɫ
    
    'Temp values for the For loop using
    Dim nUpValCount As Integer
    Dim nIndex As Integer
    Dim bChangePoint As Boolean
    '    Dim Max1 As Integer
    '    Dim Max2 As Integer
    '    Dim Max3 As Integer
    '    Dim Min1 As Integer
    '    Dim Min2 As Integer
    '    Dim Min3 As Integer
    '    Dim Swap As Integer
    Dim Temp As Integer
    
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
        
        If i >= 75 And Red1_Flag = 0 Then                                       '10Сʱ�Ժ�����15����1��ֵ������0������
            
            If (RValues(i) - RValues(i - 1) > 0) And (RValues(i - 1) - RValues(i - 2) > 0) And (RValues(i - 2) - RValues(i - 3) > 0) And (RValues(i - 3) - RValues(i - 4) > 0) And (RValues(i - 4) - RValues(i - 5) > 0) _
                And (RValues(i - 5) - RValues(i - 6) > 0) And (RValues(i - 6) - RValues(i - 7) > 0) And (RValues(i - 7) - RValues(i - 8)) > 0 And (RValues(i - 8) - RValues(i - 9) > 0) And (RValues(i - 9) - RValues(i - 10) > 0) _
                And (RValues(i - 10) - RValues(i - 11) > 0) And (RValues(i - 11) - RValues(i - 12) > 0) And (RValues(i - 12) - RValues(i - 13) > 0) And (RValues(i - 13) - RValues(i - 14) > 0) And (RValues(i - 14) - RValues(i - 15) > 0) Then
                'If (RValues(j) - RValues(i - 1) > 0) And (RValues(i - 1) - RValues(i - 2) > 0) And (RValues(i - 2) - RValues(i - 3) > 0) And (RValues(i - 3) - RValues(i - 4) > 0) And (RValues(i - 4) - RValues(i - 5)) > 0 And (RValues(i - 5) - RValues(i - 6)) > 0 And (RValues(i - 6) - RValues(i - 7)) > 0 And (RValues(i - 7) - RValues(i - 8)) > 0 And (RValues(i - 8) - RValues(i - 9)) > 0 And (RValues(i - 9) - RValues(i - 10)) > 0 Then   '���߱��
                
                Red1_Flag = 1
                
                line = i
                
            End If
            
        End If
        
        '        If i >= 45 And Red1_Flag = 0 Then
        '
        '            'If (RValues(i) - RValues(i - 1)) > 2 And (RValues(i - 1) - RValues(i - 2)) > 2 And (RValues(i - 2) - RValues(i - 3)) > 2 And (RValues(i - 3) - RValues(i - 4)) > 1 And (RValues(i - 4) - RValues(i - 5)) > 1 And (RValues(i - 5) - RValues(i - 6)) > 1 And (RValues(i - 6) - RValues(i - 7)) > 1 And (RValues(i - 7) - RValues(i - 8)) > 1 Then
        '            If (RValues(i) - RValues(i - 1)) > 0 And (RValues(i - 1) - RValues(i - 2)) > 0 And (RValues(i - 2) - RValues(i - 3)) > 0 And (RValues(i - 3) - RValues(i - 4)) > 0 And (RValues(i - 4) - RValues(i - 5)) > 0 And (RValues(i - 5) - RValues(i - 6)) > 0 And (RValues(i - 6) - RValues(i - 7)) > 0 And (RValues(i - 7) - RValues(i - 8)) > 0 Then
        '
        '                Red1_Flag = 1
        '
        '                line = i
        '
        '            End If
        
        '*********************************************************************************************************
        '        Else
        If i >= 18 And Red1_Flag = 0 Then
            
            If ((RValues(i) - RValues(i - 1)) >= 1 And (RValues(i - 1) - RValues(i - 2)) >= 1 And (RValues(i - 2) - RValues(i - 3)) >= 1 And (RValues(i - 3) - RValues(i - 4)) >= 1 And (RValues(i - 4) - RValues(i - 5)) >= 1 And (RValues(i) - RValues(i - 1)) - (RValues(i - 1) - RValues(i - 2))) >= 1 And ((RValues(i - 1) - RValues(i - 2)) - (RValues(i - 2) - RValues(i - 3))) >= 1 And ((RValues(i - 2) - RValues(i - 3)) - (RValues(i - 3) - RValues(i - 4))) >= 1 And ((RValues(i - 3) - RValues(i - 4)) - (RValues(i - 4) - RValues(i - 5))) >= 1 Then '���߱��
                
                Red1_Flag = 1
                
                line = i
                
            End If
            
        End If
        
        '*********************************************************************************************************
        '        If i >= 169 And Red1_Flag = 0 Then
        '
        '            If (RValues(i) - RValues(i - 2) > 0) And (RValues(i - 2) - RValues(i - 4) > 0) And (RValues(i - 4) - RValues(i - 6) > 0) And (RValues(i - 6) - RValues(i - 8) > 0) And (RValues(i - 8) - RValues(i - 10) > 0) And (RValues(i - 10) - RValues(i - 12) > 0) And (RValues(i - 12) - RValues(i - 14) > 0) And (RValues(i - 14) - RValues(i - 16)) > 0 And (RValues(i - 16) - RValues(i - 18) > 0) And (RValues(i - 18) - RValues(i - 20) > 0) And (RValues(i - 20) - RValues(i - 22) > 0) And (RValues(i - 22) - RValues(i - 24) > 0) Then
        '
        '                Red1_Flag = 1
        '
        '                line = i
        '
        '            End If
        '
        '        End If
        
        '*********************************************************************************************************
        If i >= 289 And Red1_Flag = 0 Then
            
            '            Max1 = RValues(i) - RValues(i - 1)
            '            Max2 = RValues(i - 1) - RValues(i - 2)
            '            Max3 = RValues(i - 2) - RValues(i - 3)
            '            Min1 = RValues(i) - RValues(i - 1)
            '            Min2 = RValues(i - 1) - RValues(i - 2)
            '            Min3 = RValues(i - 2) - RValues(i - 3)
            '
            '            For nIndex = 3 To 143
            '
            '                Temp = RValues(i - nIndex) - RValues(i - nIndex - 1)
            '
            '                If Temp > Max1 Then
            '                    Swap = Max1
            '                    Max1 = Temp
            '                    Temp = Swap
            '                End If
            '
            '                If Temp > Max2 Then
            '                    Swap = Max2
            '                    Max2 = Temp
            '                    Temp = Swap
            '                End If
            '
            '                If Temp > Max3 Then
            '                    Swap = Max3
            '                    Max3 = Temp
            '                    Temp = Swap
            '                End If
            '
            '                Temp = RValues(i - nIndex) - RValues(i - nIndex - 1)
            '
            '                If Temp < Min1 Then
            '                    Swap = Min1
            '                    Min1 = Temp
            '                    Temp = Swap
            '                End If
            '
            '                If Temp < Min2 Then
            '                    Swap = Min2
            '                    Min2 = Temp
            '                    Temp = Swap
            '                End If
            '
            '                If Temp < Min3 Then
            '                    Swap = Min3
            '                    Min3 = Temp
            '                    Temp = Swap
            '                End If
            '
            '            Next nIndex
            '
            '            Temp = RValues(i) - RValues(i - 144) - Max1 - Max2 - Max3 - Min1 - Min2 - Min3
            
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
            
            '            Max1 = RValues(i) - RValues(i - 1)
            '            Max2 = RValues(i - 1) - RValues(i - 2)
            '            Max3 = RValues(i - 2) - RValues(i - 3)
            '            Min1 = RValues(i) - RValues(i - 1)
            '            Min2 = RValues(i - 1) - RValues(i - 2)
            '            Min3 = RValues(i - 2) - RValues(i - 3)
            '
            '            For nIndex = 3 To 107
            '
            '                Temp = RValues(i - nIndex) - RValues(i - nIndex - 1)
            '
            '                If Temp > Max1 Then
            '                    Swap = Max1
            '                    Max1 = Temp
            '                    Temp = Swap
            '                End If
            '
            '                If Temp > Max2 Then
            '                    Swap = Max2
            '                    Max2 = Temp
            '                    Temp = Swap
            '                End If
            '
            '                If Temp > Max3 Then
            '                    Swap = Max3
            '                    Max3 = Temp
            '                    Temp = Swap
            '                End If
            '
            '                Temp = RValues(i - nIndex) - RValues(i - nIndex - 1)
            '
            '                If Temp < Min1 Then
            '                    Swap = Min1
            '                    Min1 = Temp
            '                    Temp = Swap
            '                End If
            '
            '                If Temp < Min2 Then
            '                    Swap = Min2
            '                    Min2 = Temp
            '                    Temp = Swap
            '                End If
            '
            '                If Temp < Min3 Then
            '                    Swap = Min3
            '                    Min3 = Temp
            '                    Temp = Swap
            '                End If
            '
            '            Next nIndex
            '
            '            Temp = RValues(i) - RValues(i - 108) - Max1 - Max2 - Max3 - Min1 - Min2 - Min3
            
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
        
        If (i Mod 144 = 0) Then
            
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
            
            For k = 1 To i - 1
                
                Line Input #1, store_line
                
            Next k
            
            Line Input #1, store_line                                           '��ʱ��*****************************************
            
            time_start = Mid(store_line, 16, 5)
            
            Close #1
            
            'j = i / 144
            
            'time_day = day_media + j
            
            'time_month = month_media
            
            'If (time_day > 29 And month_media = 2) Then '2�·�
            
            'time_month = month_media + 1
            
            'time_day = time_day - 29
            
            'ElseIf (time_day > 30 And (month_media = 4 Or month_media = 6 Or month_media = 9 Or month_media = 11)) Then
            
            'time_month = month_media + 1
            
            'time_day = time_day - 30
            
            'ElseIf (time_day > 31 And (month_media = 1 Or month_media = 3 Or month_media = 5 Or month_media = 7 Or month_media = 8 Or month_media = 10)) Then
            
            'time_month = month_media + 1
            
            'time_day = time_day - 31
            
            'ElseIf (time_day > 31 And month_media = 12) Then
            
            'time_month = 1
            
            'time_day = time_day - 31
            
            'End If
            
            'time_start = Format(time_month, "00") & "-" & Format(time_day, "00")
            
            Graph.CurrentX = cul_time * i
            
            Graph.CurrentY = 2600
            
            Graph.ForeColor = RGB(255, 255, 255)                                '��ɫ
            
            'Graph.Print time_start '2011-11-26,2012-3-5�޸�,���ڸ�Ϊ��ʾ����,ԭ������ע��
            
            'col = RGB(0, 255, 0) '��ɫ
            
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
            
            time = Mid(store_line, 16, 14)
            
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

