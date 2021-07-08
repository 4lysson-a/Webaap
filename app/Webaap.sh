#!/bin/bash

# Alysson A.
# Webaap v1.2

pt_br=https://raw.githubusercontent.com/4lysson-a/shellscript_library/master/webaap/pt_br.sh
en_us=https://raw.githubusercontent.com/4lysson-a/shellscript_library/master/webaap/en_us.sh
del=https://raw.githubusercontent.com/4lysson-a/shellscript_library/master/delete_shell.sh

path=~/Downloads/.WebappIcon


import_delete(){
		wget -P ${path} -q ${del}
		. ${path}/delete_shell.sh
		cd ~/Downloads
}


#Pt-br
case $1 in
   "-pt") 
	
	wget -P ${path} -q ${pt_br}	

	. ${path}/pt_br.sh

	main(){
	
	home

	if [ $opcao == 1 ]
	then
		verificar_nativefier
	   	create_app
	   	import_delete
			delete && clear
	else
	   if [ $opcao == 2 ]
	   then
	   		import_delete
		  	delete_app
				delete && clear
			else
				if [ $opcao == 0 ]
					then 
						import_delete
						delete && clear
						exit
					fi
	   fi
	   import_delete
	   delete && clear
	   echo ""
	   echo Comando não encontrado
	   
	fi
}

main
;;
   

#En-us
*)

main(){
	
	wget -P ${path} -q ${en_us}
	
	. ${path}/en_us.sh
	
	home_en

	if [ $opcao == 1 ]
	then
		verificar_nativefier_en
		create_app_en
		import_delete
		delete && clear
	else
	   if [ $opcao == 2 ]
	   then
	   	import_delete
		  delete_app_en && delete && clear
			else
				if [ $opcao == 0 ]
					then 
						import_delete
						clear
						delete && clear
						exit
					fi
	   fi
	  import_delete
		delete && clear
	   echo ""
	   echo Command not found
	fi



}

main
 
;;

esac


#Raw https://raw.githubusercontent.com/4ly-a/shellscript_library/master/webaap/pt_br.sh
