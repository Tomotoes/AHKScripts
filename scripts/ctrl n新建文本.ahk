if winactive ahk_exe Explorer.EXE 
{	
	^+m::Send,+{F10}w{up 3}{enter}	
	;^表示ctrl，+表示shift，m表示按键m,即新建文本的快捷键是[ctrl+shift+m];send后面是模拟按键（快捷键触发的真实按键），!表示alt;up后面数字每个人不同，代表你按[alt+f+w]后"文本文档"从下往上的位置
}

