#!/bin/bash

# Alysson A.
# Webaap v1.2

pt_br=https://raw.githubusercontent.com/4ly-a/Webaap/main/lib/pt_br.sh
en_us=https://raw.githubusercontent.com/4ly-a/Webaap/main/lib/en_us.sh

#Pt-br
case $1 in
   "-pt") 

	wget -q ${pt_br}
	
	. ./pt_br.sh

	main(){
	
	home

	if [ $opcao == 1 ]
	then
		verificar_nativefier
	   	create_app
			delete_webaap_lib
	else
	   if [ $opcao == 2 ]
	   then
		  	delete_app
				delete_webaap_lib
			else
				if [ $opcao == 0 ]
					then 
						clear
						delete_webaap_lib
						exit
					fi
	   fi
	   delete_webaap_lib
	   echo ""
	   echo Comando não encontrado
	   
	fi
}

main
;;
   

#En-us
*)

main(){
	
	wget -q ${en_us}
	
	. ./en_us.sh
	
	home_en

	if [ $opcao == 1 ]
	then
		verificar_nativefier_en
	  create_app_en
		delete_webaap_lib
	else
	   if [ $opcao == 2 ]
	   then
		  	delete_app_en
				delete_webaap_lib
			else
				if [ $opcao == 0 ]
					then 
						clear
						delete_webaap_lib
						exit
					fi
	   fi
		delete_webaap_lib
	   echo ""
	   echo Command not found
	fi



}

main
 
;;

esac

