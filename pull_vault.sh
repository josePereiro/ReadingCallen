#!/bin/bash

# globals
DEST_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

if [ ! -z $1 ] 
then 
    SRC_DIR=${1}
else
    echo "ERROR: You must pass a source vault notes path"
    exit 1
fi

echo "";
echo "-------------------------------";
echo "copying from: ${SRC_DIR}";
echo "copying to:   ${DEST_DIR}/2_notes";
echo "pushing to:   ${URL}";

echo "";
echo "-------------------------------";
echo "pulling";
echo "";

git pull

echo "";
echo "-------------------------------";
echo "copiying";
echo "";

# copying
declare -a tocopy=("@callenThermodynamicsIntroductionThermostatistics1985.md")
## now loop through the above array
for file in "${tocopy[@]}"
do
    # echo "${SRC_DIR}/${file}"
    cp -v "${DEST_DIR}/${file}" "${SRC_DIR}"
   # or do whatever with individual element of the array
done

