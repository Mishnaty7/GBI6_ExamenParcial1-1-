#Mishelle Culcay
#Ejercicio 4 de Examen Parcial 1
#1.10.2 Hormone Levels in Baboons

#How many times were the levels of individuals 3 and 27 recorded?

cut -f 1 Gesquiere2011_data.csv | grep -c -w 3
cut -f 1 Gesquiere2011_data.csv | grep -c -w 27

#Write a script taking as input the file name and the ID of the individual,and returning the number of records for that ID.

cut -f 1 Gesquiere2011_data.csv | grep -w -c 27

#Write a script that returns the number of times each individual was sampled.

tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq
maleID=$(tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq)
echo $maleID
for a in $maleID
do
muestra=$(cut -f 1 Gesquiere2011_data.csv | grep -w -c $a)
echo "maleID:" $a "muestras:" $muestra
done

