echo "Enter a string"
read str

if [ -z "$str" ];then
    echo "Invalid string"
else
    echo "Length of the string : \c"
    len=`expr "$str" : '.*'`
    echo $len
    if [ $len -ge 3 ];then
        echo "Substring is "
        sub=`expr "$str" : '.*\(...\)'`
        echo $sub
    else
        echo "String lenght is less than 3"
    fi

    echo "Enter the character to be searched : "
    read ch
    res=`expr "$str" : '[^'$ch']*'$ch`

    if [ $res -ne 0 ];then
        echo "Position of character $ch in a string is $res"
    else
        echo "Character $ch does not exists in the string."
    fi
fi