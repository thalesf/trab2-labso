#!bin/bash

echo "Aluno: Thales Ferreira"

opcao=1

GREEN='\033[0;32m'
GRAY='\033[1;37m'
CYAN='\033[1;36m'
ORANGE='\033[0;33m'

while [ $opcao -ne 0 ]
do
echo -e ${GRAY}"[1]Listar conteúdo da pasta\n[2]Ver conteúdo de um arquivo\n[3]Testar se uma url está no ar\n[0]Sair\nEscolha uma opção"

read opcao
	if [ $opcao -eq 1 ];then
		for j in $(ls)
			do
					if [ -d $j ];then
						echo -e ${CYAN}"Pasta:" $j
					
					elif [ -f $j ];then
						echo -e ${GREEN}"Arquivos:" $j
				 	fi
			done;

	elif [ $opcao -eq 2 ];then
		echo -e "${GREEN}Entre com o nome do arquivo seguido na extensão\nEx:texto.txt"
		read nomearq

			if [ -f $nomearq ];then
					echo -e ${CYAN}
					cat $nomearq
			elif [ -d $nomearq ];then
				echo "Você tentou visualizar uma pasta"
			else
				echo "O arquivo não existe"						
			fi

	elif [ $opcao -eq 3 ];then
		echo -e ${ORANGE}"Digite a url desejada:"
		read url
		
		ping -c 1 $url >> /dev/null
		
			if [ $? -eq 0 ];then
				echo "Url online"
			elif [ -z $?];then
				echo "Url vazia"
			else
				echo "Offline"
			fi
		 
  fi 
done
	echo "Fim"
 

