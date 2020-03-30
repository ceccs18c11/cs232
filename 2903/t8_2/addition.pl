print "Enter two number \n";
$choice1= <STDIN> ;
$choice2 = <STDIN> ;
$res = add($choice1 , $choice2);
print "\nThe result is $res\n" ;

# addition function to add two numbers

sub add
{
    ($x,$y) = @_;
    $res = $x + $y ;
    return $res ;   
}
