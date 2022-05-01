#!/bin/bash

read -p "Digite a opção desejada: " opcao

if [ $opcao = '>' ]
then
	echo -e "Redireciona a saída padrão em um arquivo, caso o arquivo não esteja vazio substitui o conteúdo mais antigo pelo mais recente"
	echo -e "**Exemplo**echo 'print('Ola mundo, esse é o meu primeiro código python utilizando redirecionador' > ola_mundo.py')'"
elif [ $opcao = '>>' ] 
then
	echo -e "Redireciona a saída padrão no final de um arquivo, independente do arquivo estar vazio ou não"
	echo -e "**Exemplo**echo 'lista = [] >> lista.py (Supondo que o arquivo não está vazio)'"
elif [ $opcao = '2>' ]
then
	echo -e "Redireciona os erros da saída padrão em um arquivo, substituindo o conteúdo mais antigo pelo mais recente"
	echo -e "**Exemplo**ls asasdr 2> /dev/null (Supondo que o arquivo não existe)"
elif [ $opcao = '2>>' ]
then
	echo -e "Redireciona os erros da sáida padrão no final de um arquivo, independente do arquivo estar vazio ou não"
	echo -e "**Exemplo**ls asasdr 2>> /dev/null (Supondo que o arquivo não existe)"
elif [ $opcao = '&>' ]
then
	echo -e "Redireciona qualquer resultado de erro ou acerto em um arquivo, substituindo o conteúdo mais antigo pelo mais recente"
	echo -e "**Exemplo**ls asasdr &> /dev/null"
elif [ $opcao = '&>>' ]
then
	echo -e "Redireciona qualquer resultado de erro ou acerto no final de um arquivo, independente do arquivo estar vazio ou não"
	echo -e "**Exemplo**asasdr &>> /dev/null"
elif [ $opcao = '<' ]
then
	echo -e "Redireciona um arquivo como entrada padrão para um comando0"
	echo -e "**Exemplo**emailqualquer@email.com < e-mail.txt"
elif [ $opcao = '<<' ]
then
	echo -e "Redireciona um 'arquivo' com palavras digitadas pelo usuário até uma palavra que simboliza o fim ou o EOF0"
	echo -e "**Exemplo**wc -l << FIM\n>ola\n>Oi\n>Hello user\n>Goodbye\n>Have a nice day my friend\n>FIM\n4"
elif [ $opcao = '<<<' ]
then
	echo -e "Redireciona como entrada padrão para um comando uma string, simulando uma entrada padrão"
	echo -e "**Exemplo**wc -l <<< '2.0. + 9.5'"
elif [ $opcao = '|' ]
then
	echo -e "Redireciona tanto a entrada quanto a saída de um comando para um outro comando"
	echo -e "**Exemplo**ls | grep -i esRuturADEDAdos"
fi