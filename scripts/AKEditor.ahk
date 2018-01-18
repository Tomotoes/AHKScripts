#NoTrayIcon                 ;无菜单栏图标

if not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%" 
   ExitApp
}

#Include lib
#Include lib_ydTrans.ahk  
setTimer, youdaoApiInit, -1 

#NoEnv
Process Priority,,High
SetCapsLockState, AlwaysOff  

; CapsLock -> Esc
CapsLock::
Send {Esc}
return

; CapsLock & alt -> Enter
CapsLock & alt::
Send {Enter}
return

; CapsLock & Space -> Shift
CapsLock & Space::
    Send {Shift Down}
return
CapsLock & Space up::
    Send {Shift up}
return

CapsLock & j::
MouseMove, -15, 0, 0, R                                               
return  
CapsLock & k::                                                       
MouseMove, 0, 15, 0, R                                                
return                                                               
CapsLock & i::                                                       
MouseMove, 0, -15, 0, R                                                  
return                                                               
CapsLock & l::                                                       
MouseMove, 15, 0, 0, R                                              
return  
CapsLock & u::                                                       
SendEvent {Blind}{LButton down}                                      
KeyWait Enter                                                        
SendEvent {Blind}{LButton up}                                                
return 
CapsLock & o::                                                       
SendEvent {Blind}{RButton down}                                      
KeyWait Enter                                                        
SendEvent {Blind}{RButton up}                                                
return
CapsLock & h:: 
SendEvent {Blind}{WheelUp}
return        
CapsLock & `;::
SendEvent {Blind}{WheelDown}
return 
CapsLock & 3:: 
SendEvent {Blind}{WheelUp}
return        
CapsLock & 4::
SendEvent {Blind}{WheelDown}
return 

CapsLock & F5::
Reload
return

CapsLock & c::
keyFunc_translate()
return


; 指针移动
CapsLock & e::
Send {Up}
return
CapsLock & d::
Send {Down}
return
CapsLock & s::
Send {Left}
return
CapsLock & f::
    Send {right}
return

; 行首行尾
CapsLock & a::
Send {home}
return
CapsLock & g::
Send {end}
return


; 左右删除
CapsLock & w::
Send {BS}
return
CapsLock & r::
Send {Delete}
return

; 撤销重做
CapsLock & t::
Send ^{z}
return