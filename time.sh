#script to display message "goodmorning","good afternoon","good evening"and "good night"
hour=`date +%H`
if [ $hour -lt 12 ]
then
echo "GOOD MORNING"
elif [ $hour -le 16 ]
then
echo "GOOD AFTERNOON"
elif [ $hour -le 20 ]
then
echo "GOOD EVENING"
else
echo "GOOD NIGHT"
fi
