echo "Enter the year"
read year

if [ `expr $year % 4` -eq 0 ] && [ `expr $year % 100 ` -ne 0 ] || [ `expr $year % 400 ` -eq 0 ]; then
    echo "$year is a leap year"
else
    echo "$year is a not a leap year"
fi