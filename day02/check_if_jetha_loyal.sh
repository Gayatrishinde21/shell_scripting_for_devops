#!/bin/bash




<< desclaimer
This is for infotainment purpose
desclaimer

#This is function definition
function is_loyal() {
read -p "Jetha ne mud ke kise dekha: " bandi
read -p "Jetha ka pyar %:" pyar
if [[ $bandi == "Daya bhabhi" ]];
then
	echo "Jetha is Loyal"
elif [[ $pyar -ge 100 ]];
then
        echo "jetha is Loyal"
else 
	echo "Jetha is not Loyal"
fi
}

#This is function call
is_loyal
