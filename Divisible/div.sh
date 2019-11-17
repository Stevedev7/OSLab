echo "Enter two numbers"
read a
read b

if [ `expr $a % $b` -eq 0 ]; then
    echo "$a is divisible by $b"
else
    echo "$a is not divisible by $b"
fi