#!/usr/bin/bash

#Directory path must be relative to script location.

declare -r DIRECTORY_PATH=$1

#Checking for files with extenstion.

for i in $(ls -a $DIRECTORY_PATH | grep "\."); do
	#Checking for files to avoid moving directories also.
	if [[ -f $DIRECTORY_PATH/$i ]]; then
		#Getting extension type.
		declare FILE_EXTENSION=${i##*.}
		if [[ $FILE_EXTENSION = "unknown" ]]; then
			mkdir -p $DIRECTORY_PATH/misc
			mv $DIRECTORY_PATH/$i $DIRECTORY_PATH/misc
		else
			mkdir -p $DIRECTORY_PATH/$FILE_EXTENSION
			mv $DIRECTORY_PATH/$i $DIRECTORY_PATH/$FILE_EXTENSION
		fi
	fi
done

#Checking for files without extension.

for i in $(ls -a $DIRECTORY_PATH | grep -v "\."); do
	#Checking for files to avoid moving directories also.
	if [[ -f $DIRECTORY_PATH/$i ]]; then
		mkdir -p $DIRECTORY_PATH/misc
		mv $DIRECTORY_PATH/$i $DIRECTORY_PATH/misc
	fi
done
