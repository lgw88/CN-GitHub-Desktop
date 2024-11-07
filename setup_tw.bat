@Echo off
set ok=0
goto :Start
:RestoreCN
if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app" (
	Echo Setup GitHub Desktop %1 ¤¤¤å...
	Md "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\en\"
	if not exist "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\en\main.js" (
		copy "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\main.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\en\"
	)
	if not exist "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\en\renderer.js" (
		copy "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\renderer.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\en\"
	)
	copy "%~dp0tw\%1\resources\app\*.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app"
	set ok=1
	Echo §¹¦¨
)
Exit /b
:Start
Echo úä¤ÆGitHub Desktop
Echo ?¨ú³Ì·sª©: https://github.com/lgw88/CN-GitHub-Desktop
Call :RestoreCN	app-3.0.8
Call :RestoreCN	app-3.3.18
Call :RestoreCN	app-3.3.19-beta1
Call :RestoreCN	app-3.3.19-beta2
Call :RestoreCN	app-3.4.0
Call :RestoreCN	app-3.4.1-beta1
Call :RestoreCN	app-3.4.1
Call :RestoreCN	app-3.4.2-beta1
Call :RestoreCN	app-3.4.2-beta2
Call :RestoreCN	app-3.4.2-beta3
Call :RestoreCN	app-3.4.2-beta4
Call :RestoreCN	app-3.4.3-beta1
Call :RestoreCN	app-3.4.3-beta2
Call :RestoreCN	app-3.4.2
Call :RestoreCN	app-3.4.3
Call :RestoreCN	app-3.4.3-beta3
Call :RestoreCN	app-3.4.5
Call :RestoreCN	app-3.4.6
Call :RestoreCN	app-3.4.8
Call :RestoreCN	app-3.4.9
Echo.
if %ok%==0 Echo ?¦³§ä¨ì¦wÆGitHub¤wª¾ªºª©¥», ¥i¥H§â¬Û¦üªº¤å¥ó‰Y°e¥»¤H‰]²z
Echo «ö¥ô·N??§ô
Pause >nul
