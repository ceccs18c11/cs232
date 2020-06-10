
clear
x=0
i="y"

echo "Enter the first no."
read n1
echo "Enter the second no."
read n2
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "5.Modulus"
echo "Enter your choice"
read ch
case $ch in
    1)x=`expr $n1 + $n2`
     echo "Sum ="$x;;
    2)x=`expr $n1 - $n2`
     echo "Sub = "$x;;
    3)x=`expr $n1 \* $n2`
     echo "Mul = "$x;;
    4)x=`expr $n1 / $n2`
     echo "Div = "$x;;
    5)x=`expr $n1 % $n2`
     echo "Mod ="$x;;
    *)echo "Invalid choice";;
esac
echo "Do u want to continue ?"
read i
if [ $i != "y" ]
then
    exit
fi
done
