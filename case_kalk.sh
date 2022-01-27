#!/bin/bash

min_args=3
num1=$1
znam=$2
num2=$3
pomoc="pomoc"

if [[ "$num1" == "$pomoc" ]] ; then
	echo 'Pre znamienko krát použi x; % toto je modulo; +, -, / sú jasné.'
	exit 0
	elif [[ "$min_args" != "$#" ]] ; then
	echo "Málo argumentov, skús to takto $0 čislo znamienko číslo Alebo ${0} pomoc"

	exit 0
fi

case $znam in
	-)
		echo "${num1}-${num2}=$(( $num1 - $num2 ))"
		;;
	+)
		echo "${num1}+${num2}=$(( $num1 + $num2 ))"
		;;

	/)
		echo "${num1}/${num2}=$(( $num1 / $num2 ))"
		;;

	%)
		echo "${num1}%${num2}=$(( $num1 % $num2 )) (modulo)"
		;;

	x)
		echo "${num1}*${num2}=$(( $num1 * $num2 ))"
		;;

	*)
		echo -e "Skús ešte raz tento krok ${0} pomoc\nHádam to už pôjde."
		;;

esac


exit 0
