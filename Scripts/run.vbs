If WScript.Arguments.Count <> 1 Then
  WScript.Quit(1)
End If

script = WScript.Arguments(0)
command = "powershell -WindowStyle Hidden -ExecutionPolicy ByPass -File """ & script & """"

set shell = CreateObject("WScript.Shell")
shell.Run command, 0
