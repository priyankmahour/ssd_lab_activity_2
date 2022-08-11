#! /bin/bash
# Question 1 Lab 2 SSD

lines=$( echo `awk 'END {print NR}' $1` )
#  $lines --> Count the no of lines in file_name == file1.txt 

out_line=`echo "$lines/2" | bc`
mod=`echo "$lines%2" | bc`
# Condition to print middle line for odd (or) Even no of lines in file
if [ "$mod" -eq 1 ]
then
    (( out_line++ ))
fi

awk -v out_line="$out_line" 'NR==out_line{print $0}' $1
