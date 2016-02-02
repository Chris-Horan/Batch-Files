REM Imports previously backed up bookmarks from USB backup into Firefox
REM Written by: Chris Horan

@Echo Off

Set CopyCmd=/y
Start "browser" /d "C:\Program Files (x86)\Mozilla Firefox" firefox.exe
TimeOut 7
TaskKill /t firefox.exe

CD /d %userprofile%\AppData\Roaming\Mozilla\Firefox\
For /f "tokens=1,2 delims=/" %%i In ('findstr /l ".default" profiles.ini') Do Call Set var1=%%j
CD profiles\%var1%

If Exist V:\%username%\bookmarks\places.sqlite Copy V:\%username%\bookmarks\places.sqlite

If Exist F:\%username%\bookmarks\places.sqlite Copy F:\%username%\bookmarks\places.sqlite
