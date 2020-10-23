#!/bin/bash

#This is quicker and easier than using a mouse.

if [ -z $1 ] 
then
	echo "You need to specify a control layout name, the same one used when saving the file in Star Citizen"
else

	REGION="PTU"
	SC_PATH="/c/Program Files/Roberts Space Industries/StarCitizen/$REGION/USER/Controls/Mappings"
	NAME=$1

	FILEBASE=$SC_PATH
	#layout_$NAME
	FILENAME=layout_"$NAME"_exported.xml
	SCFILENAME="$SC_PATH"/$FILENAME
	

	if [ -r $FILENAME ]
	then
        	echo Copying exported control layout $NAME to SC $REGION
		cp $FILENAME "$SCFILENAME" 
	else
		echo Unable to read $FILENAME
	fi
fi

