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

Call :RestoreEN	app-3.5.1
Call :RestoreEN	app-3.5.0
Call :RestoreEN	app-3.4.21
Call :RestoreEN	app-3.4.20
Call :RestoreEN	app-3.4.19
Call :RestoreEN	app-3.4.18
Call :RestoreEN	app-3.4.17
Call :RestoreEN	app-3.4.17-beta3
Call :RestoreEN	app-3.4.17-beta2
Call :RestoreEN	app-3.4.17-beta1
Call :RestoreEN	app-3.4.16
Call :RestoreEN	app-3.4.16-beta1
Call :RestoreEN	app-3.4.15
Call :RestoreEN	app-3.4.14
Call :RestoreEN	app-3.4.13
Call :RestoreEN	app-3.4.12
Call :RestoreEN	app-3.4.9
Call :RestoreEN	app-3.4.8
Call :RestoreEN	app-3.4.6
Call :RestoreEN	app-3.4.5
Call :RestoreEN	app-3.4.3-beta3
Call :RestoreEN	app-3.4.3
Call :RestoreEN	app-3.4.2
Call :RestoreEN	app-3.4.3-beta2
Call :RestoreEN	app-3.4.3-beta1
Call :RestoreEN	app-3.4.2-beta4
Call :RestoreEN	app-3.4.2-beta3
Call :RestoreEN	app-3.4.2-beta2
Call :RestoreEN	app-3.4.2-beta1
Call :RestoreEN	app-3.4.1
Call :RestoreEN	app-3.4.1-beta1
Call :RestoreEN	app-3.4.0
Call :RestoreEN	app-3.3.19-beta2
Call :RestoreEN	app-3.3.19-beta1
Call :RestoreEN	app-3.3.18
Call :RestoreEN	app-3.0.8

Echo.
if %ok%==0 Echo û���ҵ���װ��֪��GitHub����汾
Echo �����������
Pause >nul
