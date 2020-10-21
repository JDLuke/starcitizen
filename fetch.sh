#!/bin/bash

#This is quicker and easier than using a mouse.

if [ -z $1 ] 
then
	echo "You need to specify a control layout name, the same one used when saving the file in Star Citizen"
else

	REGION="LIVE"
	SC_PATH="/c/Program Files/Roberts Space Industries/StarCitizen/$REGION/USER/Controls/Mappings"
	NAME=$1

	echo Copying exported control layout $NAME from SC $REGION

	FILEBASE=$SC_PATH/layout_$NAME
	FILENAME="$FILEBASE"_exported.xml
	cp "$FILENAME" .
fi

