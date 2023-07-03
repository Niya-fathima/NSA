#compare two files.if the files areidentical delete one
if [ $# -ne 0 ]
then
echo "syntax is <$0> "
exit
fi
echo "enter a file name :"
read a
echo "enter another file name :"
read b
cmp $a $b
if [ $? -eq 0 ]
then
rm $b
echo "removed duplicate file "
else 
echo "duplicate file doesn't exist "
fi
