echo "Enter two file names : "
read f1 f2
if [ -e $f1 -a -e $f2 ]
then
p1=`ls -l $f1 | cut -c 2-10`
p2=`ls -l $f2 | cut -c 2-10`
if [ "$p1" = "$p2" ]
then
echo "$f1 and $f2 have same permission : $p1"
else
echo "$f1 has permission : $p1"
echo "$f2 has permission : $p2"
fi
else
echo "Invalid file names!"
fi