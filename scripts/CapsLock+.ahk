#SingleInstance force
#InstallKeybdHook
#NoTrayIcon
SetCapsLockState, AlwaysOff   

CapsLock::
if(GetKeyState("alt")){
    Send,{Enter}
}else{
    Send, {ESC}
}  
Return
CapsLock & s::
MouseMove, -15, 0, 0, R                                               
return  
CapsLock & d::                                                       
MouseMove, 0, 15, 0, R                                                
return                                                               
CapsLock & e::                                                       
MouseMove, 0, -15, 0, R                                                  
return                                                               
CapsLock & f::                                                       
MouseMove, 15, 0, 0, R                                              
return  
CapsLock & W::                                                       
SendEvent {Blind}{LButton down}                                      
KeyWait Enter                                                        
SendEvent {Blind}{LButton up}                                                
return 
CapsLock & R::                                                       
SendEvent {Blind}{RButton down}                                      
KeyWait Enter                                                        
SendEvent {Blind}{RButton up}                                                
return
CapsLock & a::
SendEvent {Blind}{WheelUp}
return        
CapsLock & g::
SendEvent {Blind}{WheelDown}
return 