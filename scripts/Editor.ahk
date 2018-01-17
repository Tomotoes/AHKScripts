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

Space::
onlySpace:=true
return
Space Up::
if(onlySpace=true){
    Send {Space}
}
return
Space & F5::
Reload
onlySpace:=false
return
Space & tab::
keyFunc_translate()
onlySpace:=false
return
Space & CapsLock::
Send {Esc}
onlySpace:=false
return
