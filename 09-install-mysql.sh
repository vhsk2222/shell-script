#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then echo "ERROR: A ROOT USER"
exit 1 #You can give other than zero, that will stop the programm if the pervious commans is a failure
else echo "You are ROOT"
fi  #reverse of if indiating condition end

yum install mysql -y

if [ $? -ne 0 ]
then echo "INSTALLATION FAILED"
exit 1
else echo "INSTALLATION SUCCESSFUL"
fi 

