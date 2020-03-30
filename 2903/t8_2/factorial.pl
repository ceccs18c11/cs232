print "Enter the number!";
$number= <STDIN> ;
$fact = 1;

for( $i = 1; $i <= $number ; $i=$i+1 ){
    $fact = $fact*$i;
}

print "\nFactorial of $number is $fact"
