#SingleInstance force       ;强制重新载入新脚本
#NoTrayIcon                 ;无菜单栏图标

#ifWinActive ahk_exe Explorer.EXE 
{	
	;ctrl + b 新建文本文件
	^b::
	SendEvent {Blind}{RButton down}  
	KeyWait Enter                                    ;|
	SendEvent {Blind}{RButton up}
	Send,w{up 3}{enter}	
	return

	;ctrl + q 解压文件
	^q::
	SendEvent {Blind}{RButton down}   
	KeyWait Enter                                   ;|
	SendEvent {Blind}{RButton up}
	Send {down 4}{Right}{down 2}{enter}
	Sleep 500
	Send {enter}
	return
}