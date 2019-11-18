for file in "$@"; do
    if [ -f $file ];then
        rename=`echo $file | tr '[a-z]' '[A-Z]'`
        if [ -f $rename ];then
            echo "$rename already exists."
        else
            mv $file $rename
            echo "File converted successfully."
        fi
    else
        echo "$file does not exists."
    fi
done