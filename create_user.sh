#!/bin/bash




<<help
this is a shell script
to create users


help


function create_user {
echo "============= creation of user started ============"



read -p "enter the username:" username

read -p "enter the password:" password



#user delete
sudo useradd -m "$username"


echo -e "$password\n$password" | sudo passwd "$username" 


echo  "========= creation of user completed =========="


sudo userdel $username

echo "========== Deletion of user completed ==========="

#user check
if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then
	echo "as wc is 0 the user is deleted"

else 
	echo "not deleted"
fi
}

create_user
