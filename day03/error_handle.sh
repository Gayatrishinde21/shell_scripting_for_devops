#!/bin/bash


create_directory()  {
           mkdir demo
   }	   


if ! create_directory; then
        echo "The code is being existed asthe directory already exists"
	exit 1
fi  

		
echo "this should not work because code is interrupted"
	 
