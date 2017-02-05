' You should use this script, if don't show cmd window.

dim cnt, args
for cnt = 0 to WScript.Arguments.Count - 1
	if cnt = 0 then
		args = "`" & WScript.Arguments(cnt) & "`"
	else
		args = args & " `" & WScript.Arguments(cnt) & "`"
	end if
next

dim cmd
cmd = "cmd /c process_check_windows.bat " & args

' WScript.Echo cmd

set ws = CreateObject("Wscript.Shell")
ws.run Replace(cmd, "`", """"), vbhide
