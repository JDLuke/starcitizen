#!/bin/bash

#This is quicker and easier than using a mouse.

if [ -z $1 ] 
then
	echo "You need to specify a control layout name, the same one used when saving the file in Star Citizen"
else

	REGION="LIVE"
	SC_PATH="/c/Program Files/Roberts Space Industries/StarCitizen/$REGION/USER/Controls/Mappings"
	NAME=$1
	DESTINATION=data/controls

	FILEBASE=$SC_PATH
	#layout_$NAME
	FILENAME=layout_"$NAME"_exported.xml
	SCFILENAME="$SC_PATH"/$FILENAME
	

	if [ -r "$SCFILENAME" ]
	then
        	echo Copying exported control layout $NAME from SC $REGION
		cp "$SCFILENAME" $DESTINATION
	else
		echo Unable to read $FILENAME
	fi
fi

#/starcitizen/data/controls
