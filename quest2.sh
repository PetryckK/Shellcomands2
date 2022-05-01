#!/bin/bash

maiorArquivoLinhas=0
maiorArquivo=0
touch linhas.txt

for ((c = 0;c < 4;c++)) do
 	read -p "Digite o nome do $(( c + 1 ))° arquivo: " arquivoDigitado
	wc -l $arquivoDigitado > linhas.txt
	linhas=`cut -d' ' -f1 linhasArquivo.txt`
	if [ $linhas -gt $maiorArquivoLinhas ]
	then
		maiorArquivoLinhas=$linhas
		maiorArquivo=$arquivoDigitado

	fi
done

echo "Arquivo com o maior número de linhas: $maiorArquivo"
rm linhas.txt
echo "Em terra de banana, tangerina é rainha azeda."