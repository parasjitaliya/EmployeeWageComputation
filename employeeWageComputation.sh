echo "welcome to EmployeeWage Computation"
#UC-1:Employee present or not
#Random number ganeretion
random_num=$(( $RANDOM%2+1))
echo $random_num
if [ $random_num=1 ]
then
	echo "yes,this full-day employee is present"
	Wage_per_hour=20
	Day_Hour=8
	#count wage per day
	Daily_Wage=$((Wage_per_hour * Day_Hour))
	echo "Daily_Wage=" $Daily_Wage
elif [ $random_num=2 ]
then
	echo "yes,this half-day employee is not present"
	Wage_per_hour=20
	Parttime_hour=4
	Parttime_Wage=$((Wage_per_hour * Parttime_hour))
	echo "Parttime_Wage=" $Parttime_Wage
else
	echo "this employee is not present"

fi	

#while and case statement for check parttime and fulltime
while :
do 
  #read Employee_Id
  case $random_num in 
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
	        Parttime_hour=4
	        Parttime_Wage=$((Wage_per_hour * Parttime_hour))
	        echo "Parttime_Wage=" $Parttime_Wage
		break
		;;
	0)
		echo "not present"
		break
		;;
  esac
done
#calculate wage per month
if [ $random_number -eq 1 ]
then
	Daily_hour=8
else
	Daily_hour=4
fi
Working_day=20
Hour_wage=20
Month_wage=$((Working_day * Daily_hour * Hour_wage ))

echo "month_wage=" $Month_wage

#calculate wages total working hours or days is reached for month
total_hour=100
n=1
total_days=20
while  [ $n -le $total_days ] 
do 
	wages=$(( Daily_hour * Hour_wage * n))
	echo $wages
	n=$(( $n + 1 ))
done 

#function for get work hour and working day 
Work_hour() 
{
	if [ $random_num -eq 1 ]
	then 
        	Daily_hour=8
	else
        	Daily_hour=4
	fi
  	total_hour=$(( Daily_hour * days))
  	echo "total hour is..."
  	echo $total_hour
}
read -p "Enter the day:" days
Work_hour $days
