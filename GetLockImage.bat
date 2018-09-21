@echo off
md .\LockScreen
xcopy C:\Users\%USERNAME%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\*.* .\LockScreen
cd .\LockScreen
ren *.* *.jpg
for /r %%F in (*) do if %%~zF LSS 200000 del "%%F"
start .