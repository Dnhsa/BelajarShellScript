#!/bin/bash
path=$1
namaFile=$2

if find $path -name $namaFile |
   grep -q '^'; then
  echo "=== file di temukan ==="
else
  printf "\n === file tidak di temukan, mau di buatkan file [Y/N] === :"
  read kondisi
  if [ $kondisi == "Y" ]; then
  arr=(${namaFile//./ })
  touch "${path}/${arr[0]}_new.${arr[1]}"
  fi
fi

for item in $namaFile/*
do
if [ -f "$item" ]
    then
         cat $item >> $namaFile/merge.txt
         echo "file berhasil di merger......"
fi
done
