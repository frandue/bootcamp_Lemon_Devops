#!/bin/bash

# Verificar que un unico argumento
if [ $# -ne 1 ]; then
  echo "Error: Se espera un único argumento."
  exit 1
fi

URL="https://www.diariodeburgos.es/"  

# la palabra a buscar es el único argumento
palabra="$1"

# Descargar el contenido de la página web a un archivo temporal
curl -s "$URL" > pagina.txt

# Buscar la palabra en pagina.txt y contar las veces
n_veces=$(grep -o -i -c "$palabra" pagina.txt)

# Comprobar si se encontro la palabra
if [ "$n_veces" -eq 0 ]; then
  echo "No se ha encontrado la palabra \"$palabra\""
else
  echo "La palabra \"$palabra\" aparece $n_veces veces"

  # Mostrar la primera línea donde aparece la palabra
  primera_linea=$(grep -n -i "$palabra" pagina.txt | head -n 1)
  echo "Aparece por primera vez en la línea $primera_linea"
fi

# Eliminar el archivo temporal
rm pagina.txt
