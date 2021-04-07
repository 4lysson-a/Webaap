#!/bin/bash

# Alysson A.

. lib/pt_br.sh
. lib/en_us.sh


#Pt-br
case $1 in
   "-pt") 

	main(){
	
	home

	if [ $opcao == 1 ]
	then
		verificar_nativefier
	   	create_app
	else
	   if [ $opcao == 2 ]
	   then
		  	delete_app
			else
				if [ $opcao == 0 ]
					then 
						clear
						exit
					fi
	   fi

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
	else
	   if [ $opcao == 2 ]
	   then
		  	delete_app_en
			else
				if [ $opcao == 0 ]
					then 
						clear
						exit
					fi
	   fi

	   echo ""
	   echo Command not found
	fi
}

main
 
;;

esac