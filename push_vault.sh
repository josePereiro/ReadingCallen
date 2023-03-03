#!/bin/bash

# globals
DEST_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
URL="https://github.com/josePereiro/ReadingCallen"

if [ ! -z $1 ] 
then 
    SRC_DIR=${1}
else
    echo "ERROR: You must pass a source vault notes path"
    exit 1
fi

echo "-------------------------------";
echo "copying from: ${SRC_DIR}";
echo "copying to:   ${DEST_DIR}/2_notes";
echo "pushing to:   ${URL}";
echo "";

echo "-------------------------------";
echo "copiying";

# copying
declare -a tocopy=("Desk.md")
## now loop through the above array
for file in "${tocopy[@]}"
do
    # echo "${SRC_DIR}/${file}"
    cp -v "${SRC_DIR}/${file}" "${DEST_DIR}"
   # or do whatever with individual element of the array
done


