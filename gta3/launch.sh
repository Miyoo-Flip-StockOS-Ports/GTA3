#!/bin/bash
# Built from https://github.com/nosro1/re3 (branch sdl2)

export HOME="$(cd "$(dirname "$0")" && pwd)"
XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
GAMEDIR="$(cd "$(dirname "$0")" && pwd)"

cd $GAMEDIR

#export SDL_GAMECONTROLLERCONFIG="030000005e0400008e02000014010000,X360 Controller,a:b0,b:b1,back:b6,dpdown:h0.4,dpleft:h0.8,dpright:h0.2,dpup:h0.1,guide:b8,leftshoulder:b4,leftstick:b9,lefttrigger:a2,leftx:a0,lefty:a1,rightshoulder:b5,rightstick:b10,righttrigger:a5,rightx:a3,righty:a4,start:b7,x:b2,y:b3,platform:Linux,"
export LD_LIBRARY_PATH="$GAMEDIR/libs":$LD_LIBRARY_PATH
./re3 2>&1 | tee log.txt
