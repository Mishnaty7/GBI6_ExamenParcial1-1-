#Mishelle Culcay
#Ejercicio 4 de Examen Parcial 1
#1.10.4 Data Explorer

#Column name:
cut -d ',' -f 7 Buzzard2015_data.csv | head -n 1

#Number of distinct values
cut -d ',' -f 7 Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l

#Minimum value
cut -d ',' -f 7 Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1

#Maximum value
cut -d ',' -f 7 Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1
