echo "Enter File's name: "

read fileName

echo "Enter The Extension"

read extension
rename(){
	mv ${fileName}${extension} "${fileName}_new.${extension}"
	echo "${fileName}${extension} renamed to ${fileName}_new.${extension}"
}

create(){
	touch "${fileName}${extension}"
	echo "File ${fileName}${extension}.txt created"
}

if [ -e "${fileName}${extension}" ]
then
	rename
else
	create
fi