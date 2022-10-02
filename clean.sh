#!/bin/bash

set -e

BASE_DIR=$( realpath $( dirname $0 ))

cd ${BASE_DIR}
if [ ! -d ./base_external ] && [ ! -d ./buildroot ]
then
	echo "ERROR: This clean.sh is in an unfamiliar directory. Exiting."
	exit -1
fi

if [ ! -e ${BASE_DIR}/buildroot/Makefile ]
then
	echo "ERROR: No Makefile is present"
	exit -1
fi

cd ${BASE_DIR}/buildroot

make clean
