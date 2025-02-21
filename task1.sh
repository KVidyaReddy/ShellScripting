echo "Enter the filename"
read file

if [ -e $file ];
then
echo "$file already exists"
else
echo "$file doesn't exists"
fi


echo "Enter the Salary"
read salary

if [ $salary -lt 30000 ];
then
echo "No Tax"
elif [ $salary -eq 30000 ];
then
echo "5% Tax"
elif [ $salary -gt 30000 -a $salary -le 40000 ];
then
echo "10% Tax"
elif [ $salary -gt 40000 ];
then
echo "15% Tax"
fi



echo "Enter the age"
read age
if [ $age -lt 13 ];
then
echo "Child"
elif [ $age -ge 13 -a $age -le 19 ];
then
echo "Teenager"
elif [ $age -ge 20 ];
then
echo "Adult"
fi
