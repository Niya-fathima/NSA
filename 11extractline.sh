#Extracting a set of lines from set of files
if [ $# -le 0 ]
then
echo "Syntax is <$0> <range> <files....>"
exit 1
fi
n1=$1
n2=$2
shift
shift
n3=` expr $n2 - $n1 + 1`
while [ $# -ne 0 ]
do
head -$n2 $1 | tail -$n3
shift
done
exit 0
