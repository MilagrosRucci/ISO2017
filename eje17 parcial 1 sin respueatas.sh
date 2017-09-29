#!/bin/bash
arreglo=($(cat /etc/passwd | cut -f6,7 -d":" | grep bash | cut -f1 -d":"))
users=($(cat /etc/passwd | grep bash | cut -f1 -d":" ))
for ((i=0; i<=${#arreglo[@]} - 1; i++))
do
  cd ${arreglo[$i]}
  if [ -d  mailDir ]
  then
    echo ${users[$i]} >> /var/listado.txt
    echo ${users[$i]}
  fi
done
exit 0
 
#linea
#2- genero un arreglo con todos los homes de los usuarios que tiene la shell
#   bash
#3- genero un arreglo con los nombres de usuarios que tiene la shell bash-.
#4 y 6-  itero por el arreglo de los homes, acediendo a cada home.
#7. testeo si existe el directorio mailDir y de ser asi lo guardo con 
#   redireccionamiento no destructivo en el archivo listado.txt.

