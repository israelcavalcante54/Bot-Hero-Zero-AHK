﻿#NoEnv 
SetWorkingDir %A_ScriptDir%
#Include Gdip_all.ahk


file=%a_scriptdir%\setaavancartreinopopup.bmp



F1::
pToken:=Gdip_Startup()
pBitmap:= Gdip_BitmapFromHWND(hwnd := WinExist("Hero Zero")) 

pBitmap_part:=Gdip_CloneBitmapArea(pBitmap,230,315,170,44) ;get toppart of active window
Gdip_SaveBitmapToFile(pBitmap_part, file)

Gdip_DisposeImage(pBitmap)
Gdip_DisposeImage(pBitmap_part)
Gdip_Shutdown(pToken)
return

F2::
exitapp