#!/bin/bash

# Verificar que se hayan proporcionado exactamente dos argumentos
if [ $# -ne 2 ]; then
  echo "Se necesitan únicamente dos parámetros, 1º la URL y 2º la palabra a buscar"
  exit 1
fi

# Obtener la URL y la palabra a buscar desde los argumentos
URL="$1"
palabra="$2"

# Descargar el contenido de la página web a un archivo temporal
curl -s "$URL" > pagina.txt

# Buscar la palabra en pagina.txt y contar las veces
n_veces=$(grep -o -i -c "$palabra" pagina.txt)

# Comprobar si se encontró la palabra
if [ "$n_veces" -eq 0 ]; then
  echo "No se ha encontrado la palabra \"$palabra\""
elif [ "$n_veces" -eq 1 ]; then
  echo "La palabra \"$palabra\" aparece 1 vez"
  primera_linea=$(grep -n -i "$palabra" pagina.txt | cut -d ":" -f 1)
  echo "Aparece únicamente en la línea $primera_linea"
else
  echo "La palabra \"$palabra\" aparece $n_veces veces"
fi

# Eliminar el archivo temporal
rm pagina.txt

