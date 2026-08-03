@echo off
rem LLMPET 桌宠启动器
rem 双击本脚本即可启动（等价于 npm start），不用先进目录。
rem 路径基于脚本自身位置解析，项目移动后依然可用。

if not exist "%~dp0node_modules\electron\dist\electron.exe" (
  echo [LLMPET] 找不到 node_modules\electron\dist\electron.exe
  echo         请先在项目目录执行:  npm install
  echo.
  pause
  exit /b 1
)

cd /d "%~dp0"
start "" "%~dp0node_modules\electron\dist\electron.exe" .
