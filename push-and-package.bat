@echo off
cd /d "%~dp0"
echo.
echo ================ LLMPET 推送 + 打包 ================
echo.
echo ---- 待推送的本地提交（fork/main 之后）----
git log --oneline fork/main..HEAD 2>nul
echo.
echo ---- 1) 推送到你的 fork (jlb1136428691/LLMPET) ----
git push fork main
echo.
echo ---- 2) 打包 Windows 安装版 ----
call npm run package:win
echo.
echo ---- 完成 ----
echo 安装包：dist\LLMPET-1.1.1-Windows-x64.exe
echo 绿色版：dist\LLMPET-1.1.1-Windows-x64.zip
echo.
pause
