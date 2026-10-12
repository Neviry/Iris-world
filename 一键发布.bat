@echo off
chcp 65001 >nul
title 煊煊的花园 - 一键发布
cd /d "C:\Users\24700\.qwenpaw\workspaces\An\huixuan-garden"
echo.
echo   🌷 正在把你的新文章送往全世界...
echo.
git add -A
git diff --cached --quiet
if %errorlevel%==0 (
    echo   [!] 没有发现新内容哦，先去写点东西吧～
    goto end
)
git commit -m "publish: %date% %time%" --quiet
git push
if %errorlevel%==0 goto ok
echo.
echo   ❌ 推送失败，网络可能闹脾气了，叫安安来修～
goto end
:ok
echo.
echo   ✅ 发布成功！1-2 分钟后自动上线：
echo      https://neviry.github.io/Iris-world
:end
echo.
pause
