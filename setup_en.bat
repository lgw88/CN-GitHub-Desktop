@Echo off
set ok=0
goto :Start
:RestoreEN
if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app" (
	Echo Setup GitHub Desktop %1 �ָ�ԭӢ��...
	if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\en\main.js" (
		copy "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\en\main.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\"
	)
	if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\en\renderer.js" (
		copy "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\en\renderer.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\%1\resources\app\"
	)
	set ok=1
	Echo �ָ����
)
Exit /b
:Start
Echo �ָ�GitHub DesktopΪԭ��
Echo ��ȡ���°�: https://github.com/lgw88/CN-GitHub-Desktop
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
if %ok%==0 Echo û���ҵ���װ��֪��GitHub����汾
Echo �����������
Pause >nul
