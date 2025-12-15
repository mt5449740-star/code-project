#!/bin/bash 
check_prime() { 
n=$1 
if [ $n -le 1 ]; then 
echo "Not Prime" 
return 
fi 
for ((i=2;i<=n/2;i++)) 
do 
if [ $((n%i)) -eq 0 ]; then 
echo "Not Prime" 
return 
fi 
done 
echo "Prime" 
} 
check_leap() { 
y=$1 
if (( (y%400==0) || (y%4==0 && y%100!=0) )); then 
echo "Leap Year" 
else 
echo "Not Leap Year" 
fi 
} 
sum_series() { 
n=$1 
sum=0 
for ((i=1;i<=n;i++)) 
do 
sum=$((sum+i)) 
done 
echo "Sum = $sum" 
} 
read -p "Enter a number: " num 
while true 
do 
echo "------ MENU ------" 
echo "1. Check Prime" 
echo "2. Check Leap Year" 
echo "3. Print Sum of Series (1 to n)" 
echo "4. Exit" 
read -p "Choose option: " ch 
case $ch in 
1) check_prime $num ;; 
2) check_leap $num ;; 
3) sum_series $num ;; 
4) echo "Exiting..."; exit ;; 
*) echo "Invalid choice" ;; 
esac 
done 
