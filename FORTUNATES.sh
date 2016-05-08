#!/bin/sh

# Este archivo es un hack de uno salido del código fuente
# de fortunes en español:
#   Ejecutar dentro de la carpeta con los archivos *.fortune.
find datfiles -name "*fortunes" -exec cat {} \; |
perl extractall.pl |sort | uniq > FORTUNES.txt
