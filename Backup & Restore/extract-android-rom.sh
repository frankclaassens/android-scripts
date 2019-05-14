#!/bin/bash

blocksFile="blocks.txt"

RED='\033[0;31m'
GREEN='\033[1;32m'
WHITE='\033[1;37m'

imageName=$1

# Dump list of all the partition blocks on the device
adb shell "ls /dev/block/bootdevice/by-name -1" > $blocksFile

printf "\n##### BEGIN DUMP ##### \n\n"

# Loop through the file
for line in `cat $blocksFile`;do
	blockImage="$line.img"
	
	printf "Dumping block $line => ${GREEN}$blockImage${WHITE} \n"
	
	# Checksum the block while still on the device and output
	# to blockImage.img.sha256
	adb shell "sha256sum dev/block/bootdevice/by-name/$line" | awk '{printf $1}' > $blockImage.sha256
	echo "  $blockImage" >> $blockImage.sha256
	
	# Finally, pipe the block from the device to local folder
	adb shell "dd if=dev/block/bootdevice/by-name/$line" > $blockImage
	
	printf "\n"
done

printf "##### END DUMP  ##### \n\n"

# Verify all checksums
for line in `ls --format=single-column | grep .sha256`;do
	blockImage="$line"
	
	shasum -a 256 -c $blockImage | awk -v g=$GREEN -v wh=$WHITE \
	'{printf "Verifying checkum for %s => [%s]\n", $1,g$2wh}'
done

