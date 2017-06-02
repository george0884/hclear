##!/bin/bash

##########
#
# Creado por Huezo
# https://huezohuezo1990.wordpress.com/
#
#
#########


 

echo '¿Qué quieres hacer?'

echo "==========================================================="
echo "  "

echo "0 = Instalacion de paquetes "

echo "1 = LIMPIAR: autoclean , clean y autoremove "

echo "2 = ACTUALIZAR: update , upgrade y dist-upgrade "

echo "3 = elimina repositorio PPA y revierte cambios: ppa-purge  "

echo "4 = desinstala el programa y eliminar todos los archivos de configuracion"

echo "5 = desinstala programa y mantener los archivos de configuración"


echo "6 =  Reinstalar paquetes o Programa "

echo "7 = Buscar paquetes con apt-cache search"

echo "8 = Limpieza extrema-Kernel"

echo "  "
echo "==========================================================="
echo "  "





read A
  


case $A in
     0)
        


echo "##########"
echo "# para instalar 2" 
echo "#  o mas paquetes solo"
echo "# los escribes" 
echo "# separados por espacio"
echo "#"
echo "#########"
echo ""

echo 'digita el paquete a instalar :'

echo ""

read huezo

sudo sudo apt-get install $huezo

#sudo sudo apt install $huezo










     ;;


     1)
      

#
#Elimina del cache los paquetes .deb con versiones anteriores a 
#los de los programas que tienes instalados.
#
#

sudo apt-get autoclean


#
#Elimina todos los paquetes del cache.
#

sudo apt-get clean


#
#Borra los paquetes huérfanos, o las dependencias que quedan instaladas 
#después de haber instalado una aplicación y luego eliminarla
#

sudo apt-get autoremove








     ;;


     2)
       

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade


#sudo apt update
#sudo apt upgrade
#sudo apt dist-upgrade



     ;;


     3)
     

echo 'digita la ppa de esta manera ejemplo:'
echo "ppa:ubuntu-mozilla-security/ppa"

read ppa

sudo ppa-purge $ppa





     ;;


     4)

      

#echo "4 = desinstala el programa y eliminar todos los archivos de configuracion"

echo ""
echo "##########"
echo "# para desinstala 2" 
echo "#  o mas paquetes solo"
echo "# los escribes" 
echo "# separados por espacio"
echo "#"
echo "#########"
echo ""

echo 'digita el paquete a desinstala :'
echo ""

read programa

# sudo apt-get --purge remove $programa
# sudo apt --purge remove $programa

sudo apt-get --purge remove $programa









     ;;


     5)
        


echo ""
echo "##########"
echo "# para desinstala 2" 
echo "#  o mas paquetes solo"
echo "# los escribes" 
echo "# separados por espacio"
echo "#"
echo "#########"
echo ""

echo ""
echo 'digita el paquete a desinstala :'
echo ""

read programa1


#echo "5 = desinstala programa y mantener los archivos de configuración"

# sudo apt-get remove $programa1
# sudo apt remove $programa1

sudo apt-get remove $programa1











     ;;


     6)
       

#echo ""
#echo "##########"
#echo "# para Reinstalar 2" 
#echo "#  o mas paquetes solo"
#echo "# los escribes" 
#echo "# separados por espacio"
#echo "#"
#echo "#########"
#echo ""

echo ""
echo 'digita el paquete a reinstalar :'
echo ""

read programa1






sudo apt-get install --reinstall $programa1



     ;;

     7)
      
echo ""
echo 'digita el paquete a buscar :'
echo ""

read pro

sudo apt-cache search $pro | more

exit 0


     ;;


     8)
        

#deja los 3 ultimos Kernel
# y kernel extra
echo "deja los 3 ultimos Kernel y el Kernel extra"

echo "¿ Desea continuar ? s/S para SI , n/N para No "

 read opcion
 

 case $opcion in
     

     s|S) 
        


 dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge



      ;;


      n|N)

         echo "Cancelado"

      ;;
   

  esac




     ;;


     *)
        echo "no se qué numero es"
     ;;




     # *)
     #   echo "no se qué numero es"
     # ;;



    # *)
    #    echo "no se qué numero es"
    # ;;




  esac






##!/bin/bash

##########
#
# Creado por Huezo
# https://huezohuezo1990.wordpress.com/
#
#
#########


