@Echo off
if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app" (
	Echo Setup GitHub Desktop 3.3.18 �ָ�ԭӢ��...
	if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\en\main.js" (
		copy "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\en\main.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\"
	)
	if exist "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\en\renderer.js" (
		copy "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\en\renderer.js" "%USERPROFILE%\AppData\Local\GitHubDesktop\app-3.3.18\resources\app\"
	)
	Echo �ָ����
	Pause
	Exit
)
Echo û���ҵ���װ��֪�İ汾, �����Ƶ��ļ��������˴���
Pause