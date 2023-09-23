@echo off
chcp 65001
setlocal enabledelayedexpansion

rem 添加所有修改
git add .

rem 提示用户输入 commit 信息
set /p commit_message=请输入 commit 信息 (按回车默认使用 "auto check-in in bat"): 

rem 如果用户没有输入 commit 信息，使用默认值
if "!commit_message!"=="" (
    set commit_message=auto check-in in bat
)

rem 提交更改
git commit -m "!commit_message!"

rem 推送到远程仓库
git push origin

endlocal
