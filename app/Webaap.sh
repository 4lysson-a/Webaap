#!/bin/bash

# Alysson A.
# Webaap v1.2

pt_br=https://raw.githubusercontent.com/4ly-a/shellscript_library/master/webaap/pt_br.sh
en_us=https://raw.githubusercontent.com/4ly-a/shellscript_library/master/webaap/en_us.sh

. ./delete_shell.sh

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
			delete
	else
	   if [ $opcao == 2 ]
	   then
		  	delete_app
				delete
			else
				if [ $opcao == 0 ]
					then 
						clear
						delete
						exit
					fi
	   fi
	   delete
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
		delete
	else
	   if [ $opcao == 2 ]
	   then
		  	delete_app_en
				delete
			else
				if [ $opcao == 0 ]
					then 
						clear
						delete
						exit
					fi
	   fi
		delete
	   echo ""
	   echo Command not found
	fi



}

main
 
;;

esac


#Raw https://raw.githubusercontent.com/4ly-a/shellscript_library/master/webaap/pt_br.sh