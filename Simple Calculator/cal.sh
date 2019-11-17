echo "Press 1 to Add"
echo "Press 2 to Subract"
echo "Press 3 to Devide"
echo "Press 4 to Multiply"
echo "Press 5 to Exit"

read choice

if [ $choice -eq 5 ]; then
    exit
else 
    echo "Enter numbers"
    read a
    read b

    case "$choice" in
    1) echo "$a + $b = `expr $a + $b`";;
    2) echo "$a - $b = `expr $a - $b`";;
    3) echo "$a / $b = `expr $a / $b`";;
    4) echo "$a * $b = `expr $a \* $b`";;
    *) echo "Invalid option"
    esac
fi
