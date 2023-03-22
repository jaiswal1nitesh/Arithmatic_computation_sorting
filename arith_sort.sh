#!/bin/bash -x
echo "Enter the three Number"
echo
read -p "Enter the First number  ---> " a
read -p "Enter the Second number ---> " b
read -p "Enter the third number  ---> " c
let x=a+b*c
let y=a*b+c
let z=c+a/b
