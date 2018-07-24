#您要是不嫌弃我的代码，li都改成sue就能用了

cur=`date +%y%m`  #1807
curFile="`date +%d`li.md"  #24li.md
curPath="${cur}/${curFile}"  #1807/24li.md

preLine=$(tail -1 SUMMARY.md)
temp=${preLine##*(}  #1807/23sue.md)
prePath=${temp%)*}  #1807/23sue.md

read line < $curPath
title=${line:2}

if [ "$curPath"x = "$prePath"x ]
then
    sed -i '$d' SUMMARY.md
fi

day=`date +%d`
echo -e "     * [${day} ${title}](${curPath})" >> SUMMARY.md
cat SUMMARY.md