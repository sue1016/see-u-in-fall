dir=`date +%y%m`
file="`date +%d`li.md"
newFile="${dir}/${file}"
echo -e "\n> -- `date +%H`:`date +%M` `date +%y%m%d`  " >> ${newFile}
vim ${newFile}