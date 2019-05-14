#!/bin/bash

######################################################################################
#                                       VARIABLES                                    #
######################################################################################
# $SINGLE_DUMP  => Contains the name of the partition block to dump
# $DO_VERIFY    => If set, perform sha256sum verification check during and after dump
######################################################################################

RED='\033[0;31m'
GREEN='\033[1;32m'
WHITE='\033[1;37m'

while test $# -gt 0; do
case "$1" in
		-h|--help)
				echo "$Android Partition Dumper v1.0"
				echo " "
				echo "AndroidPdumper [options] application [arguments]"
				echo " "
				echo "options:"
				echo "-p, --partition=NAME    specify partition block to dump"
				echo "-c, --check=ACTION      perform on-device sha256sum with final validation after dump"
				exit 0
				;;
		-p)
				shift
				if [ ! -z "$1" ]; then

					export SINGLE_DUMP=$1

					if [ -z "$NO_VERIFY" ]; then
						adb shell "sha256sum dev/block/bootdevice/by-name/$SINGLE_DUMP" | awk '{printf $1}' > $SINGLE_DUMP.img.sha256
						echo "  $SINGLE_DUMP.img" >> $SINGLE_DUMP.img.sha256
					fi

					adb shell "dd if=dev/block/bootdevice/by-name/$SINGLE_DUMP" > $SINGLE_DUMP.img

					if [ -z "$NO_VERIFY" ]; then
						shasum -a 256 -c $SINGLE_DUMP.img.sha256 | awk -v g=$GREEN -v wh=$WHITE \
						'{printf "Verifying checkum for %s => [%s]\n", $1,g$2wh}'
					fi
				else
						echo "no partition name specified"
						exit 1  
				fi
				shift
				;;
		--partition*)
					export SINGLE_DUMP=`echo $1 | sed -e 's/^[^=]*=//g'`
				shift
				;;
		-n)
				shift
					export NO_VERIFY="TRUE"
				shift
				;;
		--no-verify*)
					export NO_VERIFY="TRUE"
				shift
				;;
		*)
				break
				;;
esac
done