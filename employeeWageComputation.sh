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
	Wage_per_hour=20
	Parttime_hour=8
	Parttime_Wage=$((Wage_per_hour * Parttime_hour))
	echo "Parttime_Wage=" $Parttime_Wage
else
	echo "this employee is not present"

fi	

echo "solving using case statement"
while :
do 
  read Employee_Id
  case $Employee_Id in 
	1)
		echo "yes,this full-day employee is present"
        	Wage_per_hour=20
        	Day_Hour=8
        	Daily_Wage=$((Wage_per_hour * Day_Hour))
        	echo "Daily_Wage=" $Daily_Wage
		break
		;;
	2)
		echo "yes,this half-day employee is not present"
	        Wage_per_hour=20
	        Parttime_hour=8
	        Parttime_Wage=$((Wage_per_hour * Parttime_hour))
	        echo "Parttime_Wage=" $Parttime_Wage
		break
		;;
	3)
		echo "not present"
		break
		;;
  esac
done
echo "calculating wages for month"
Working_day=20
Daily_hour=8
Hour_wage=20
Month_wage=$((Working_day * Daily_hour * Hour_wage ))

echo "month_wage=" $Month_wage

echo "calculate wages till a condition of total working hours or days is reached for month"
total_hour=100
n=1
working_hour=8
pay_hour=20
total_days=20
while  [ $n -le $total_days ] 
do 
	wages=$(( working_hour * pay_hour * n))
	echo $wages
	n=$(( $n + 1 ))
done 

