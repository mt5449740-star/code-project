#!/bin/bash 
pass=0 
fail=0 
read -p "Enter Student ID: " sid 
read -p "Enter marks of Subject 1: " m1 
read -p "Enter marks of Subject 2: " m2 
read -p "Enter marks of Subject 3: " m3 
total=$((m1+m2+m3)) 
percent=$((total*100/300)) 
if [ $percent -ge 40 ]; then 
grade="PASS" 
pass=1 
else 
grade="FAIL" 
fail=1 
fi 
echo "----- RESULT SUMMARY -----" 
echo "Student ID: $sid" 
echo "Total Marks: $total / 300" 
echo "Percentage: $percent%" 
echo "Grade: $grade" 
echo "Total Pass: $pass" 
echo "Total Fail: $fail"
