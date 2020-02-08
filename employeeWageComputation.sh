echo "welcome to EmployeeWage Computation"
#UC-1:Employee present or not
random_num=$(( $RANDOM%3))
echo $random_num
if [ $random_num=1 ]
then
	echo "yes,this full-day employee is present"
	Wage_per_hour=20
	Day_Hour=8
	Daily_Wage=$((Wage_per_hour * Day_Hour))
	echo "Daily_Wage=" $Daily_Wage
elif [ $random_num=2 ]
then
	echo "yes,this half-day employee is not present"
else
	echo "this employee is not present"

fi	
