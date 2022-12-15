#!/bin/bash/
#! set -x
if [ $# == 0 ]
then       	
	texto1="Que me gusta la bash"
else
	texto1=$@
fi

mkdir -p foo/dummy/ foo/empty
cd foo/dummy/
touch file1.txt file2.txt |echo $texto1 > file1.txt
cat file1.txt >> file2.txt
mv file2.txt ../empty/