#!/bin/sh

BLANK='#00000000'
CLEAR='#00000000'
DEFAULT='#ff00ffcc'
TEXT='#ee00eeee'
WRONG='#880000bb'
VERIFYING='#bb00bbbb'

i3lock \
	--insidever-color=$CLEAR \
	--ringver-color=$VERIFYING \
	\
	--insidewrong-color=$CLEAR \
	--ringwrong-color=$WRONG \
	\
	--inside-color=$BLANK \
	--ring-color=$DEFAULT \
	--line-color=$BLANK \
	--separator-color=$DEFAULT \
	\
	--verif-color=$TEXT \
	--wrong-color=$TEXT \
	--time-color=$TEXT \
	--date-color=$TEXT \
	--layout-color=$TEXT \
	--keyhl-color=$WRONG \
	--bshl-color=$WRONG \
	\
	--time-size=70 \
	--date-size=20 \
	\
	--screen 1 \
	--blur 5 \
	--clock \
	--radius 200 \
	--ring-width 12 \
	--indicator \
	--time-str="%H:%M:%S" \
	--date-str="%A, %Y-%m-%d"
