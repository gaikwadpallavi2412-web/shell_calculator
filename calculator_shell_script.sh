#!/bin/bash
#Making calculator using shell scripting
#
choice1="N"
function add {
	echo "Addition of $1 and $2 is : $(($1+$2))"
}

function sub {
	echo "Substraction of $1 and $2 is : $(($1-$2))"
}
function mul {
	echo "Multiplication of $1 and $2 is : $(($1*$2))"
}
function div {
	echo "Division of $1 and $2 is : $(($1/$2))"
}
function mod {
	echo "Modulus of $1 and $2 is : $(($1%$2))"
}
function exp {
	echo "Exponential of $1 to $2 is : $(($1**$2))"
}

while [[ "$choice1" == "N" ]]
do
	echo "------------Welcome to Calculator------------"
	read -p "Please provide first number : " num1
	read -p "Please provide second number : " num2
	echo "Please choose from below option : "
	echo -e "1.Addition\n2.Substraction\n3.Multiplication\n4.Division\n5.Modulus\n6.Exponential\n7.Exit"
	read choice
	case $choice in
		1) add $num1 $num2 ;;
		2) sub $num1 $num2 ;;
		3) mul $num1 $num2 ;;
		4) div $num1 $num2 ;;
		5) mod $num1 $num2 ;;
		6) exp $num1 $num2 ;;
		7) exit ;;
		*) echo "Invalid choice!!"
	esac
	echo "Do you want to exit(Y/N) ? "
	read choice1
done
