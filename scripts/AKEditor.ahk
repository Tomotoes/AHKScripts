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

CapsLock & F5::
Reload
return
CapsLock & alt::
Send {Esc}
return
CapsLock & tab::
keyFunc_translate()
return

; 左右删除
CapsLock & w::
Send {BS}
return
CapsLock & r::
Send {Delete}
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

; 单词跳跃
CapsLock & q::
Send ^{left}
return
CapsLock & t::
Send ^{right}
return

; 撤销重做
CapsLock & 3::
Send ^{z}
return
CapsLock & 4::
Send ^+{z}
return