@echo off

setlocal enabledelayedexpansion

for %%f in (%*) do (
	tasklist | findstr "^%%~nxf" >NUL 2>&1

	if !ERRORLEVEL! NEQ 0 (
		rem "start %%f" is interpreted %%f is title.
		start "" %%f

		rem start command success status is 1
		if !ERRORLEVEL! EQU 1 (
			echo %%~nxf is started ^(%%f^)
		)
	) else (
		echo %%~nxf is already running ^(%%f^)
	)
)

endlocal
