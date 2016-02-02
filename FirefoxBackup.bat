REM Makes a copy of Firefox Bookmarks that can be imported back to Firefox
REM Written by: Chris Horan

@Echo Off
Set CopyCmd=/y

If Not Exist "%userprofile%\application data\mozilla\firefox\profiles.ini" GoTo:EOF
CD /d %userprofile%\application data\mozilla\firefox\
For /f "tokens=1,2 delims=/" %%i in ('findstr /l ".default" profiles.ini') do call set var1=%%j
CD profiles\%var1%

If Exist V:\ (
	If Not Exist "V:\%username%\bookmarks" MkDir V:\%username%\bookmarks
	Copy places.sqlite V:\%username%\bookmarks
)

If Exist F:\ (
	If Not Exist "F:\%username%\bookmarks" MkDir F:\%username%\bookmarks
	Copy places.sqlite F:\%username%\bookmarks
)
