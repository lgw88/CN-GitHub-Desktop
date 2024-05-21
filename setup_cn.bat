@Echo off
Echo 获取最新: https://github.com/lgw88/CN-GitHub-Desktop
if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app" (
	Echo Setup GitHub Desktop 3.3.18 中文...
	Md "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\en\"
	if not exist "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\en\main.js" (
		copy "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\main.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\en\"
	)
	if not exist "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\en\renderer.js" (
		copy "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\renderer.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\en\"
	)
	copy "%~dp0app-3.3.18\resources\app\*.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app"
	Echo 完成
	Pause
	Exit
)
Echo 没有找到安装GitHub已知的版本, 把相似的文件发给本人处理
Pause