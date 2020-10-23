#!/bin/bash -x 
w=1 #feet 
x=12 #inch 
y=42 #inch 
z=$(((y*w)/x)) 
echo $z #feet
