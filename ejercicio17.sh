#!/bin/bash

#imprime en pantalla los archivos del directorio actual
#intercambia minúsculas y mayúsculas, además de eliminar la letra aA

ls | tr a-zA-Z A-Za-z |tr -d aA


