#SingleInstance force
#InstallKeybdHook
#NoTrayIcon
:://n::   
Run notepad   
return    

 :://m::   
 Send babyking1949@gmail.com   
 return    
:://g::    
Run http://www.google.com     
return 

:://b::    
Run http://www.baidu.com    
return 

:://s::    
Run C:\Program Files\Everything\Everything.exe    
return 

:://qq::    
Run C:\Program Files\Tencent\QQ\Bin\QQ.exe    
return  

:://cmd::    
Run cmd    
return 

:://n::    
Run notepad    
return    

:://d::    
Run C:\Program Files\http://dict.cn\DianDian.exe    
return 
    
:://e::    
Run explorer    
return     

;打开任务管理器    
:://t::    
if WinExist Windows 任务管理器    
    WinActivate    
else    
    Run taskmgr.exe    
return     

;一些经常输入的字符串    
:://m::    
Send babyking1949@gmail.com    
return     

;打开系统属性    
:://sys::    
Run control sysdm.cpl    
return     


;鼠标放在任务栏，滚动滚轮实现音量的加减~lbutton & enter::  
exitapp  
~WheelUp::  
if (existclass("ahk_class Shell_TrayWnd")=1)  
Send,{Volume_Up}  
Return  
~WheelDown::  
if (existclass("ahk_class Shell_TrayWnd")=1)  
Send,{Volume_Down}  
Return  
~MButton::  
if (existclass("ahk_class Shell_TrayWnd")=1)  
Send,{Volume_Mute}  
Return  

Existclass(class)  
{  
MouseGetPos,,,win  
WinGet,winid,id,%class%  
if win = %winid%  
Return,1  
Else  
Return,0  
}
;按住空格不放，搭配edsf实现上下左右方向键，搭配cv实现backspace和del功能，搭配wr，实现home和end功能：;

#NoEnv  
SendMode Input  
SetWorkingDir %A_ScriptDir%  

AnyKeyPressedOtherThanSpace(mode = "P") {
    keys = 1234567890-=qwertyuiop[]\asdfghjkl;'zxcvbnm,./
    Loop, Parse, keys
    {        
        isDown :=  GetKeyState(A_LoopField, mode)
        if(isDown)
            return True
    }   
    return False
}

Space Up::
    space_up := true
    Send, {F18}
    return
Space::
    if AnyKeyPressedOtherThanSpace(){
        SendInput, {Blind}{Space}
        Return
    }
    space_up := False
    inputed := False
    input, UserInput, L1 T0.1, {F18}
    if (space_up) {
        Send, {Blind}{Space}
        return
    }else if (StrLen(UserInput) == 1){
        Send, {Space}%UserInput%
        return
    }
    while true{
        input, UserInput, L1, {F18}
        if (space_up) {
            if (!inputed){
                Send, {Blind}{Space}
            }
            break
        }else if (StrLen(UserInput) == 1) {
            inputed := True
            StringLower, UserInput, UserInput
            if (UserInput == "e")
                Send, {Blind}{Up}
            else if (UserInput == "d")
                Send, {Blind}{Down}
            else if (UserInput == "s")
                Send, {Blind}{Left}
            else if (UserInput == "f")
                Send, {Blind}{Right}
            else if (UserInput == "w")
                Send, {Blind}{Home}
            else if (UserInput == "r")
                Send, {Blind}{End}
            else if (UserInput == "c")
                Send, {Blind}{BS}
            else if (UserInput == "v")
                Send, {Blind}{DEL}
            else
                Send, {Blind}%UserInput%

        }
    }
    return