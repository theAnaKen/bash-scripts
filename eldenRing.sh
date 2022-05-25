#!/bin/bash
SudoPASS=123456

echo "Welcome Tarnished. Please select your starting class:
1 - Samurai
2 - prisoner
3 - Prophet"
read class

case $class in
1)
	type="Samurai"
	hp=10
	attack=20
	;;
2)
	type="Prisoner"
	hp=20
	attack=4
	;;
3)
	type="Prophet"
	hp=30
	attack=4
	;;
esac

echo "You have chosen $type class. Your hp is $hp and your attack is $attack"

echo "You Died"

#First beast battle
#-------------------
bossValue=$(($RANDOM % 2))

echo "Your first beast approaches... Prepare to battle. Pick a no b/w 0 and 1 (0/1)"
read Tarnished
if [[ $Tarnished == $SudoPASS ]]; then
	echo "Hey, $USER is root, he always wins."
elif [[ $bossValue == $Tarnished ]]; then
	echo "Beast VANQUISHED! Congrats fellow Tarnished"
else
	echo "You Died"
	exit 1
fi

sleep 2

#Boss Battle
Marget=$(($RANDOM % 10))

echo "BOSS BATTLE INCOMMING!! Marget approaches... Pick a number b/w 0 - 9 to battle (0-9)"
read Tarnished
if [[ $Marget == $Tarnished || $Tarnished == "cheat" ]]; then
	echo "Beast VANQUISHED! Congrats fellow Tarnished"
elif [[ $Tarnished == $SudoPASS ]]; then
	echo "Hey $USER is root. He always wins"
else
	echo "You Died"
	exit 1

fi
