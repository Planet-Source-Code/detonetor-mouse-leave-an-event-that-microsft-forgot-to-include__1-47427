Attribute VB_Name = "Module1"
'In a module
Public Const TME_CANCEL = &H80000000
Public Const TME_HOVER = &H1&
Public Const TME_LEAVE = &H2&
Public Const TME_NONCLIENT = &H10&
Public Const TME_QUERY = &H40000000
Public Const WM_MOUSELEAVE = &H2A3&
Public Type TRACKMOUSEEVENTTYPE
    cbSize As Long
    dwFlags As Long
    hwndTrack As Long
    dwHoverTime As Long
End Type
Public Declare Function TrackMouseEvent Lib "user32" (lpEventTrack As TRACKMOUSEEVENTTYPE) As Long
Public Declare Function SetCursorPos Lib "user32.dll" (ByVal X As Long, ByVal Y As Long) As Long
Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Declare Function CallWindowProc Lib "user32" Alias "CallWindowProcA" (ByVal lpPrevWndFunc As Long, ByVal hWnd As Long, ByVal Msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Public Const GWL_WNDPROC = (-4)
Public PrevProc As Long
Public Sub HookForm(F As Form)
    PrevProc = SetWindowLong(Form1.Command1.hWnd, GWL_WNDPROC, AddressOf WindowProc)
End Sub
Public Sub UnHookForm(F As Form)
    SetWindowLong Form1.Command1.hWnd, GWL_WNDPROC, PrevProc
End Sub
Public Function WindowProc(ByVal hWnd As Long, ByVal uMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
    If uMsg = WM_MOUSELEAVE Then
        
    Form1.Command1.BackColor = &H80&
        
        
    End If
    WindowProc = CallWindowProc(PrevProc, hWnd, uMsg, wParam, lParam)
End Function
 


