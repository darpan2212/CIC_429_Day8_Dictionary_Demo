#!/bin/bash -x

#have to declare the dictionary variable to use as associative array
declare -A sounds;
declare -A numbers;

sounds[wolf]="Howling";
sounds[dog]="Barking";
sounds[bird]="twitting"

echo ${sounds[@]};

numbers[num2]=123;
numbers[num1]=0;
numbers[num4]=99;
numbers[num3]=148;

echo ${numbers[@]};
