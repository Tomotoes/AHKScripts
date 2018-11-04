#NoTrayIcon                 ;无菜单栏图标

#NoEnv
Process Priority,,High
SetCapsLockState, AlwaysOff  

; CapsLock -> Esc
CapsLock::
Send {Esc}
return

; CapsLock 
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

CapsLock & 8:: 
SendEvent {Blind}{WheelUp}
return        
CapsLock & 9::
SendEvent {Blind}{WheelDown}
return 

CapsLock & Alt:: 
SendEvent {Blind}{WheelUp}
return        
CapsLock & Space::
SendEvent {Blind}{WheelDown}
return 

; 指针移动
CapsLock & w::
Send {Up}
return
CapsLock & s::
Send {Down}
return
CapsLock & a::
Send {Left}
return
CapsLock & d::
    Send {right}
return

; 行首行尾
CapsLock & q::
Send {home}
return
CapsLock & e::
Send {end}
return