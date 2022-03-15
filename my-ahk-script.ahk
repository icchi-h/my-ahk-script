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

; Ctrl + q で閉じる
^q::WinClose,A

; LAlt/LCtrl + hjklでカーソルキー
<!h::
<^h::
  Send,{Left}
  Return
;<!l::
<^l::
  Send,{Right}
  Return
<!j::
<^j::
  Send,{Down}
  Return
<!k::
<^k::
  Send,{Up}
  Return

; カーソルのシフト対応
<+!h::
<+^h::
  Send,+{Left}
  Return
<+!l::
<+^l::
  Send,+{Right}
  Return
<+!j::
<+^j::
  Send,+{Down}
  Return
<+!k::
<+^k::
  Send,+{Up}
  Return

; LAlt/LCtrl + uiでHome/End
<!u::
<^u::
  Send,{Home}
  Return
<!i::
<^i::
  Send,{End}
  Return

; カーソルのシフト対応
<+!u::
<+^u::
  Send,+{Home}
  Return
<+!i::
<+^i::
  Send,+{End}

  Return

; MacのCmd操作に揃える
<!q::WinClose,A
<!w::Send,^w
<!r::Send,{F5}
<!t::Send,^t
<!y::Send,^y
<!a::Send,^a
<!s::Send,^s
<!l::Send,^l
<!z::Send,^z
<!x::Send,^x
<!c::Send,^c
<!v::Send,^v
<!n::Send,^n



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; IME
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 左右 Alt キーの空打ちで IME の OFF/ON を切り替える
;
; 左 Alt キーの空打ちで IME を「英数」に切り替え
; 右 Alt キーの空打ちで IME を「かな」に切り替え
; Alt キーを押している間に他のキーを打つと通常の Alt キーとして動作
;
; AutoHotkey: v1.1.26.01
; Author:     karakaram   http://www.karakaram.com/alt-ime-on-off

; ※なぜか同一ファイルだと右Altが動作しないのでIME関連は別ファイルで起動

;#Include IME.ahk
;
;; Razer Synapseなど、キーカスタマイズ系のツールを併用しているときのエラー対策
;#MaxHotkeysPerInterval 350
;
;; 主要なキーを HotKey に設定し、何もせずパススルーする
;*~a::
;*~b::
;*~c::
;*~d::
;*~e::
;*~f::
;*~g::
;*~h::
;*~i::
;*~j::
;*~k::
;*~l::
;*~m::
;*~n::
;*~o::
;*~p::
;*~q::
;*~r::
;*~s::
;*~t::
;*~u::
;*~v::
;*~w::
;*~x::
;*~y::
;*~z::
;*~1::
;*~2::
;*~3::
;*~4::
;*~5::
;*~6::
;*~7::
;*~8::
;*~9::
;*~0::
;*~F1::
;*~F2::
;*~F3::
;*~F4::
;*~F5::
;*~F6::
;*~F7::
;*~F8::
;*~F9::
;*~F10::
;*~F11::
;*~F12::
;*~`::
;*~~::
;*~!::
;*~@::
;*~#::
;*~$::
;*~%::
;*~^::
;*~&::
;*~*::
;*~(::
;*~)::
;*~-::
;*~_::
;*~=::
;*~+::
;*~[::
;*~{::
;*~]::
;*~}::
;*~\::
;*~|::
;*~;::
;*~'::
;*~"::
;*~,::
;*~<::
;*~.::
;*~>::
;*~/::
;*~?::
;*~Esc::
;*~Tab::
;*~Space::
;*~Left::
;*~Right::
;*~Up::
;*~Down::
;*~Enter::
;*~PrintScreen::
;*~Delete::
;*~Home::
;*~End::
;*~PgUp::
;*~PgDn::
;    Return
;
;; 上部メニューがアクティブになるのを抑制
;*~LAlt::Send {Blind}{vk07}
;*~RAlt::Send {Blind}{vk07}
;
;; 左 Alt 空打ちで IME を OFF
;LAlt up::
;    if (A_PriorHotkey == "*~LAlt")
;    {
;        IME_SET(0)
;    }
;    Return
;
;; 右 Alt 空打ちで IME を ON
;RAlt up::
;    if (A_PriorHotkey == "*~RAlt")
;    {
;        IME_SET(1)
;    }
;    Return


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
