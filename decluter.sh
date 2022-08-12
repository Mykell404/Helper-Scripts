#! /bin/bash

echo "Name of the folder"
read FOLDER 

cd ..
cd Desktop
mkdir ${FOLDER}

desktop_folders=$(ls)
for FOLDERS in $desktop_folders
do
  # echo ${FOLDERS}
  if [ "$FOLDER" = "$FOLDERS" ] 
  then
    echo "Can't copy this"
    # echo ${FOLDER}
  else
    mv "${FOLDERS}" "${FOLDER}/${FOLDERS}"
    # echo ${FOLDER}
  fi
done

