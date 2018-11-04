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
	Sleep 800
	Send {enter}
	return

	;ctrl + s sublime打开文件
	^s::
	SendEvent {Blind}{RButton down}   
	KeyWait Enter                                   ;|
	SendEvent {Blind}{RButton up}
	Sleep 100
	Send {down 3}{enter}
	return

	;ctrl + e VsCode打开文件
	^e::
	SendEvent {Blind}{RButton down}   
	KeyWait Enter                                   ;|
	SendEvent {Blind}{RButton up}
	Sleep 100
	Send {down 4}{enter}
	return

	;ctrl + shift +  e VsCode打开文件夹
	^+e::
	SendEvent {Blind}{RButton down}   
	KeyWait Enter                                   ;|
	SendEvent {Blind}{RButton up}
	Sleep 100
	Send {up 3}{enter}
	return

}