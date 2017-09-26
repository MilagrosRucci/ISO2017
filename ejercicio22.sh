#!/bin/bash

productoria() {
	local result=1; 
	for n in `echo ${num[@]}`; do
		result=$(expr $result \* $n)
	done

	echo "El resultado de productoria es: $result"
}

num=(10 3 5 7 9 3 5 4)

productoria


