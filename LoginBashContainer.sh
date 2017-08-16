
clear 
##*******************************
##Automatización Docker DevOPS
##ALE MARTINEZ - DEV 
##alechivo847@gmail.com
##15/08/2017
##*******************************

##ID | Nombre del Conteiner
echo "Contenedores Activos: "
echo 

docker ps -a | grep Up |  awk ' { print $1,"   " $NF}' 


 
echo 
echo 
## Ingresa el ID o Nombre del Contenedor para hacer login bash

echo "Ingresa el ID o Nombre del Contenedor para hacer Login > "
read CONTAINER

##Ingresando al Contenedor 

ct=$CONTAINER && sudo nsenter --target $(docker inspect --format {{.State.Pid}} $ct) --moun --uts --ipc --net --pid



