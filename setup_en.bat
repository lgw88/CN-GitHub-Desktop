@Echo off
set ok=0
goto :Start
:RestoreEN
if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app" (
	Echo Setup GitHub Desktop %1 恢复原英文...
	if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\en\main.js" (
		copy "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\en\main.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\"
	)
	if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\en\renderer.js" (
		copy "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\en\renderer.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\"
	)
	set ok=1
	Echo 恢复完成
)
Exit /b
:Start
Echo 恢复GitHub Desktop为原版
Echo 获取最新版: https://github.com/lgw88/CN-GitHub-Desktop
Call :RestoreEN	app-3.0.8
Call :RestoreEN	app-3.3.18
Call :RestoreEN	app-3.3.19-beta1
Call :RestoreEN	app-3.3.19-beta2
Call :RestoreEN	app-3.4.0
Call :RestoreEN	app-3.4.1-beta1
Call :RestoreEN	app-3.4.1
Call :RestoreEN	app-3.4.2-beta1
Call :RestoreEN	app-3.4.2-beta2
Call :RestoreEN	app-3.4.2-beta3
Echo.
if %ok%==0 Echo 没有找到安装已知的GitHub桌面版本
Echo 按任意键结束
Pause >nul
