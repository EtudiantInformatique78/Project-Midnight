#!/bin/bash

for i in {1..50}
do
	printf "#"
done

echo ""

read -p "Premier jours: " jour
read -p "Premier mois: " mois



#for j in {$mois..12}
for (( j=$mois; j<=12; j++))
do
	if [ $j -eq $mois ]
	then
		if [ $j -le 7 ]
		then
			if [ $((j%2)) == 0 ]
			then
				for (( i=$jour; i<=30; i++))
				do
					mkdir -p $j/$i"_"$j"_2020"
				done
			else
				for (( i=$jour; i<=31; i++))
				do
					mkdir -p $j/$i"_"$j"_2020"
				done
			fi
		else
			if [ $((j%2)) == 1 ]
			then
				for (( i=$jour; i<=30; i++))
				do
					mkdir -p $j/$i"_"$j"_2020"
				done
			else
				for (( i=$jour; i<=31; i++))
				do
					mkdir -p $j/$i"_"$j"_2020"
				done
			fi
		fi
	else
		if [ $j -le 7 ]
		then
			if [ $((j%2)) == 0 ]
			then
				for i in {1..30}
				do
					mkdir -p $j/$i"_"$j"_2020"
				done
			else
				for i in {1..31}
				do
					mkdir -p $j/$i"_"$j"_2020"
				done
			fi
		else
			if [ $((j%2)) == 1 ]
			then
				for i in {1..30}
				do
					mkdir -p $j/$i"_"$j"_2020"
				done
			else
				for i in {1..31}
				do
					mkdir -p $j/$i"_"$j"_2020"
				done
			fi
		fi
	fi
done

for i in {1..50}
do
	printf "#"
done

echo ""

