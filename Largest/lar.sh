echo "Enter the three numbers one by one"

read a
read b
read c

if [ $a -gt $b ] && [ $a -gt $c ]; then
    echo "$a is largest"
    if [ b -gt c ]; then
        echo "$c is smallest"
    else
        echo "$b is smallest"
    fi
elif [ $b -gt $a ] && [ $b -gt $c ]; then
    echo "$b is largest"
    if [ $a -gt $c ]; then
        echo "$c is smallest"
    else
        echo "$a is smallest"
    fi
else
    echo "$c is largest"
    if [ $a -gt $b ]; then
        echo "$b is smallest"
    else
        echo "$a is smallest"
    fi
fi