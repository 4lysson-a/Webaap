#!/bin/bash

# Alysson A.

delete_src (){
		  rm .Webaap.sh.swp
			rm en_us.sh
			rm pt_br.sh
			clear
}

pt_br=https://raw.githubusercontent.com/4ly-a/Webaap/main/lib/pt_br.sh
en_us=https://raw.githubusercontent.com/4ly-a/Webaap/main/lib/en_us.sh

wget -q ${pt_br} && wget -q ${en_us}

. ./pt_br.sh
. ./en_us.sh


#Pt-br
case $1 in
   "-pt") 

	main(){
	
	home

	if [ $opcao == 1 ]
	then
		verificar_nativefier
	   	create_app
			delete_src
	else
	   if [ $opcao == 2 ]
	   then
		  	delete_app
				delete_src
			else
				if [ $opcao == 0 ]
					then 
						clear
						delete_src
						exit
					fi
	   fi
	   delete_src
	   echo ""
	   echo Comando não encontrado
	   


	fi



}

main
;;
   

#En-us
*)

main(){
	
	home_en

	if [ $opcao == 1 ]
	then
		verificar_nativefier_en
	  create_app_en
		delete_src
	else
	   if [ $opcao == 2 ]
	   then
		  	delete_app_en
				delete_src
			else
				if [ $opcao == 0 ]
					then 
						clear
						delete_src
						exit
					fi
	   fi
		delete_src
	   echo ""
	   echo Command not found
	fi



}

main
 
;;

esac

