#!/bin/bash

for i in {1..5}
do
    #verificar que existe el archivo
    lorem="loremipsum-${i}.txt"

    if [ -f "$lorem" ]
    then
        #obtener cantidad de lineas
        cantLinea=$(wc -l < "$lorem")

        echo "$lorem tiene $cantLinea lineas."
    else
        echo "No se encontró archivo "$lorem"."
    fi
done