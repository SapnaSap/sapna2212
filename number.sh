echo enter student marks
read x
if [ $x -gt 90 ]
then
echo A grade
elif [$x -gt 80]
then
echo B grade
elif [$x -gt 70 ]
then
echo C grade
else
echo fail
fi
