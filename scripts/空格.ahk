#SingleInstance force
#InstallKeybdHook
#NoTrayIcon
#NoEnv  

;按住空格不放，搭配edsf实现上下左右方向键，搭配cv实现backspace和del功能，搭配wr，实现home和end功能：;

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