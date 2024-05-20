@Echo off
if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app" (
	Echo Setup GitHub Desktop 3.3.18 恢复原英文...
	if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\en\main.js" (
		copy "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\en\main.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\"
	)
	if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\en\renderer.js" (
		copy "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\en\renderer.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\"
	)
	Echo 恢复完成
	Pause
	Exit
)
Echo 没有找到安装已知的版本, 把相似的文件发给本人处理
Pause