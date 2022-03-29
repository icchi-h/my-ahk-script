;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Template
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#UseHook

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; My Setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; 上部メニューがアクティブになるのを抑制
*~LAlt::Send {Blind}{vk07}
*~RAlt::Send {Blind}{vk07}

; LAlt + hjklでカーソルキー
<!h::
  Send,{Left}
  Return
<!l::
  Send,{Right}
  Return
<!j::
  Send,{Down}
  Return
<!k::
  Send,{Up}
  Return

; カーソルのシフト対応
<+!h::
  Send,+{Left}
  Return
<+!l::
  Send,+{Right}
  Return
<+!j::
  Send,+{Down}
  Return
<+!k::
  Send,+{Up}
  Return

; OneNoteでのみ有効 (UAC無効&右クリック「Run with UI Access」から起動)
#IfWinActive, ahk_class Framework::CFrame
  <!j::SendPlay,{Down}
  <!k::SendPlay,{Up}
#IfWinActive

;Alt + A/EでHome/End
!a::Send,{Home}
!e::Send,{End}
!+a::Send,+{Home}
!+e::Send,+{End}

;CtrlキーのCmd化
^q::WinClose,A
^r::Send,{F5}

; CtrlキーのAlt化
LCtrl & Tab::AltTab

; AltキーのCtrl化
!c::Send,^c




; OS側で対応したため無効
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;JP Keyboard -> US Keyboard
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;ref: https://qiita.com/uhyot/items/e3038e9e730e89939b58
;
; ; 0段目
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; VKF3::Send,{``}    ;         半角/全角     -> `
; +VKF3::Send,{~}    ; Shift + 半角/全角     -> ~
; +1::Send,{@}       ; Shift + 2         ["] -> @
; +5::Send,{^}       ; Shift + 6         [&] -> ^
; +6::Send,{&}       ; Shift + 7         ['] -> &
; +7::Send,{*}       ; Shift + 8         [(] -> *
; +8::Send,{(}       ; Shift + 9         [)] -> (
; +-1::Send,{)}       ; Shift + 0         [ ] -> )
; +-::Send,{_}       ; Shift + -         [=] -> _
; ^::Send,{=}        ;                   [^] -> =
; +^::Send,{+}       ; Shift + ^         [~] -> +
;
; ; 1段目
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; @::[              ;                   [@] -> [
; +@::{             ; Shift + @         [`] -> {
; [::]              ;                   [[] -> ]
; +[::Send,{}}      ; Shift + [         [{] -> }
;
; ; 2段目
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; +;::Send,{:}      ; Shift + ;         [+] -> :
; :::Send,{'}       ;                   [:] -> '
; *::Send,{"}       ; Shift + :         [*] -> "
; +]::|             ; Shift + ]         [}] -> |
; ]::\              ;                   []] -> \
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
