foreach $num(@ARGV){
    $sum = 0;
    $original = $num;
    until($num == 0){
        $sum = $sum + $num % 10;
        $num = $num/10;
    }
    print("$original -> $sum\n");
}