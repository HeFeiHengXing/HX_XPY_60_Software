Attribute VB_Name = "Module1"
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Private Declare Function APIBeep Lib "kernel32" Alias "Beep" (ByVal dwFreq As Long, ByVal dwDuration As Long) As Long
Option Explicit

Public Const pi As Double = 3.14159265358979

Public n As Integer                                                             '培养瓶的孔位
Public s1 As Integer                                                            '校准1的孔位
Public s2 As Integer                                                            '校准2的孔位
Public DataReceiver_flag As Integer                                             '判断是否接收到下位机数据的标志位
Public yuzhiup As Integer                                                       '阈值上限值
Public yuzhidown As Integer                                                     '阈值下限值
Public time_count As Integer                                                    '定时器计数
Public adjust1_flag As Integer                                                  '校准1标志位
Public Interface_flag As Integer                                                '界面提示标志位
Public read1(0 To 59) As String                                                 '保存校准1的数据
Public read2(0 To 59) As String                                                 '保存校准2的数据
Public adjust1(0 To 59) As String                                               '校准1的数据
Public warning As String                                                        '报警音频文件存储路径
Public sum As Integer                                                           '阳阴性总数
Public sum1 As Integer                                                          '阳性总数
Public sum2 As Integer                                                          '阴性总数
Public keshi_nk1 As Integer                                                     '统计内科阴性总数
Public keshi_nk2 As Integer                                                     '统计内科阳性总数
Public keshi_wk1 As Integer                                                     '统计外科阴性总数
Public keshi_wk2 As Integer                                                     '统计外科阳性总数
Public keshi_xk1 As Integer                                                     '统计小儿科阴性总数
Public keshi_xk2 As Integer                                                     '统计小儿科阳性总数
Public keshi_fk1 As Integer                                                     '统计妇科阴性总数
Public keshi_fk2 As Integer                                                     '统计妇科阳性总数
Public pyp_bs1 As Integer                                                       '统计标准嗜养瓶阴性总数
Public pyp_bs2 As Integer                                                       '统计标准嗜养瓶阳性总数
Public pyp_yy1 As Integer                                                       '统计厌养瓶阴性总数
Public pyp_yy2 As Integer                                                       '统计厌养瓶阳性总数
Public pyp_zx1 As Integer                                                       '统计中和小儿瓶阴性总数
Public pyp_zx2 As Integer                                                       '统计中和小儿瓶阳性总数
Public pyp_zs1 As Integer                                                       '统计中和嗜养瓶阴性总数
Public pyp_zs2 As Integer                                                       '统计中和嗜养瓶阳性总数
Public pyp_zy1 As Integer                                                       '统计中和厌氧瓶阴性总数
Public pyp_zy2 As Integer                                                       '统计中和厌氧瓶阳性总数
Public pyp_fg1 As Integer                                                       '统计分支杆菌培养瓶阴性总数
Public pyp_fg2 As Integer                                                       '统计分支杆菌培养瓶阳性总数
Public State_Flag As Integer                                                    '状态标志位
Public cul_time As Integer                                                      '培养时间
Public i As Long                                                                '画图用的循环次数
Public col As Variant                                                           '画图的颜色
Public command(0) As Byte                                                       '发送命令字节
Public file1 As String                                                          '打印文件名
Public file2 As String                                                          '打印文件名
Public barcode_name As String                                                   '条形码名称
Public time_start As String                                                     '测量起始时间
Public answer As Integer                                                        'msgbox函数输出值
Public port_lock As Boolean                                                     ' Port lock for input and out put
'****************************************************************************************************
'函数: GetPathFromFileName
'作用: 从完整路径获取 文件名
'输入: 完整路径, 目录分隔符
'返回: 文件名(带扩展名)
Public Function GetPathFromFileName(ByVal strFullPath As String, Optional ByVal strSplitor As String = "\") As String
    
    GetPathFromFileName = Left$(strFullPath, InStrRev(strFullPath, strSplitor, , vbTextCompare))
    
End Function

Public Function HEX_to_DEC(ByVal Hex As String) As Long                         '十六进制数转化为十进制数
    
    Dim a As Long                                                               '作为循环变量
    
    Dim b As Long                                                               '结果存储
    
    Hex = UCase(Hex)                                                            '小写字母转为大写
    
    For a = 1 To Len(Hex)
        
        Select Case Mid(Hex, Len(Hex) - a + 1, 1)
            
        Case "0": b = b + 16 ^ (a - 1) * 0
        Case "1": b = b + 16 ^ (a - 1) * 1
        Case "2": b = b + 16 ^ (a - 1) * 2
        Case "3": b = b + 16 ^ (a - 1) * 3
        Case "4": b = b + 16 ^ (a - 1) * 4
        Case "5": b = b + 16 ^ (a - 1) * 5
        Case "6": b = b + 16 ^ (a - 1) * 6
        Case "7": b = b + 16 ^ (a - 1) * 7
        Case "8": b = b + 16 ^ (a - 1) * 8
        Case "9": b = b + 16 ^ (a - 1) * 9
        Case "A": b = b + 16 ^ (a - 1) * 10
        Case "B": b = b + 16 ^ (a - 1) * 11
        Case "C": b = b + 16 ^ (a - 1) * 12
        Case "D": b = b + 16 ^ (a - 1) * 13
        Case "E": b = b + 16 ^ (a - 1) * 14
        Case "F": b = b + 16 ^ (a - 1) * 15
            
        End Select
        
    Next a
    
    HEX_to_DEC = b                                                              '返回值
    
End Function

Public Function PlayBeep()                                                      '蜂鸣器
    
    Dim Lng_Dura   As Long                                                      '声音频率
    
    Dim Lng_Freq   As Long                                                      '持续时间
    
    Lng_Dura = 20
    
    For Lng_Freq = 1 To 1200 Step 18
        
        APIBeep Lng_Freq, Lng_Dura
        
    Next Lng_Freq
    
End Function

Public Sub getLock()
    
    Do While True
        
        If port_lock = False Then
            
            port_lock = True
            
            Exit Do
            
        End If
        
    Loop
    
End Sub

Public Sub releaseLock()
    
    port_lock = False
    
End Sub

Public Function ArcCos(x As Double) As Double
    Dim Temp As Double
    If x = 0 Then
        Temp = pi / 2
    Else
        Temp = Atn(Sqr(1 - x * x) / x)
    End If
    If Temp < 0 Then
        Temp = Temp + pi
    End If
    ArcCos = Temp
End Function

Public Function GetAngleByPoint(x As Double, y As Double) As Double
    
    Dim Temp As Double
    
    Temp = ArcCos(x / Sqr(x * x + y * y))
    
    If y <= 0 Then
        
        Temp = 2 * pi - Temp
        
    End If
    
    GetAngleByPoint = Temp
    
End Function

Public Function CalcColorH(red As Long, green As Long, blue As Long) As Double
    
    Dim color_min As Long
    Dim color_max As Long
    Dim color_temp As Long
    Dim color_huv As Double
    
    color_min = red
    color_max = red
    
    If color_min > green Then
        
        color_min = green
        
    End If
    
    If color_max < green Then
        
        color_max = green
        
    End If
    
    If color_min > blue Then
        
        color_min = blue
        
    End If
    
    If color_max < blue Then
        
        color_max = blue
        
    End If
    
    color_temp = color_max - color_min
    
    If color_temp = 0 Then
        
        color_huv = 2 * pi
        
    ElseIf (color_max = red) And (green >= blue) Then
        
        color_huv = (pi * 60 * (green - blue)) / (180 * color_temp)
        
    ElseIf color_max = red Then
        
        color_huv = 2 * pi - ((pi * 60 * (blue - green)) / (180 * color_temp))
        
    ElseIf (color_max = green) And (blue >= red) Then
        
        color_huv = (2 * pi / 3) + ((pi * 60 * (blue - red)) / (180 * color_temp))
        
    ElseIf color_max = green Then
        
        color_huv = (2 * pi / 3) - ((pi * 60 * (red - blue)) / (180 * color_temp))
        
    ElseIf (color_max = blue) And (red >= green) Then
        
        color_huv = (4 * pi / 3) + ((pi * 60 * (red - green)) / (180 * color_temp))
        
    ElseIf color_max = blue Then
        
        color_huv = (4 * pi / 3) - (pi * 60 * (green - red) / (180 * color_temp))
        
    End If
    
    CalcColorH = color_huv
    
End Function


Public Function CalcColorS(red As Long, green As Long, blue As Long) As Double
    
    Dim color_s As Double
    Dim color_min As Long
    Dim color_max As Long
    
    color_min = red
    color_max = red
    
    If color_min > green Then
        
        color_min = green
        
    End If
    
    If color_max < green Then
        
        color_max = green
        
    End If
    
    If color_min > blue Then
        
        color_min = blue
        
    End If
    
    If color_max < blue Then
        
        color_max = blue
        
    End If
    
    color_s = Val(color_max - color_min)
    
    color_s = color_s / color_max
    
    CalcColorS = color_s
    
End Function

