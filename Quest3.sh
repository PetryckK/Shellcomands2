#!/bin/bash

touch linha.txt
ls $1 &> /dev/null && wc -l $1 > linha.txt

if [ $( cut -d' ' -f1 linha.txt ) -gt 3 ]
then
	echo "GOOD"
fi

rm linhaArquivo.txt