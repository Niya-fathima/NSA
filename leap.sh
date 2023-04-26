#leap year or not
if [ $# -gt 1 ]
then
echo "syntax error.."
exit 1
fi
if [ $# -eq 0 ]
then
echo "enter the year:"
read year
else
year = $ 1
fi
a=`expr $year % 4`
b=`expr $year % 100`
c=`expr $year % 400`
if [ $a -eq 0 -a $b -ne 0 -o $c -eq 0 ]
then
echo "leap year"
else
echo "not leap year"
fi
