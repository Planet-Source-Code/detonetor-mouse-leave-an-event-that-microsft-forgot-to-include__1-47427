VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   3375
      TabIndex        =   7
      Top             =   1590
      Width           =   750
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   3915
      TabIndex        =   6
      Text            =   "Combo1"
      Top             =   705
      Width           =   585
   End
   Begin VB.ListBox List2 
      Height          =   255
      Left            =   1725
      TabIndex        =   5
      Top             =   450
      Width           =   300
   End
   Begin VB.Timer Timer1 
      Left            =   2280
      Top             =   2505
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Check1"
      Height          =   495
      Left            =   3060
      TabIndex        =   3
      Top             =   2190
      Width           =   1215
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Option1"
      Height          =   540
      Left            =   1290
      TabIndex        =   2
      Top             =   2250
      Width           =   750
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000080&
      Height          =   780
      Left            =   1110
      Picture         =   "Form1.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1200
      Width           =   2220
   End
   Begin VB.TextBox Text1 
      Height          =   1470
      Left            =   570
      TabIndex        =   1
      Text            =   "Text1"
      Top             =   825
      Width           =   975
   End
   Begin VB.ListBox List1 
      Height          =   450
      Left            =   1410
      TabIndex        =   4
      Top             =   975
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
   Dim ET As TRACKMOUSEEVENTTYPE
    'initialize structure
    ET.cbSize = Len(ET)
    ET.hwndTrack = Command1.hWnd
    ET.dwFlags = TME_LEAVE
    'start the tracking
    TrackMouseEvent ET
    Command1.BackColor = &HFF&
End Sub

Private Sub Form_Load()

    MsgBox "WARNING: This sample uses subclassing."

      HookForm Me
End Sub

Private Sub Form_Unload(Cancel As Integer)

    UnHookForm Me
End Sub

