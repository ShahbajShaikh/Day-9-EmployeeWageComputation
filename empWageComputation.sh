#!/bin/bash -x
echo "Welcome to Employee Wage Computation."

random=$((RANDOM%2))

if [ $random -eq 1 ]
then
        echo "Employee is present";
else
        echo "Employee is absent";
fi


empWagePerHr=20;
Random=$((RANDOM%2))
if [ $Random -eq 1 ]
then
        echo "Employee is present";
        empHr=8;
else
        echo "Employee is absent";
        empHr=0;
fi

salary=$(( $empWagePerHr * $empHr ))

empWagePerHr=20;
Random=$((RANDOM%2))

if [ $Random -eq 0 ]
then
        echo "Employee is present";
        empHr=12;
        elif [ $Random -eq 1 ]
        then
                echo "Employee is part time present.";
                empHr=8;
        else
                echo "Employee Absent.";
                empHr=0;
        fi

salary=$(( $empWagePerHr * $empHr ))
echo $salary

empWagePerHr=20
empFullTime=1
empPartTime=2

random=$((RANDOM%3))

case $random in
        $empFullTime)
                echo "Employee is present and doing fulltime."
                empHr=12;
                ;;

        $empPartTime)
                echo "Employee is present and doing part time."
                empHr=8;
                ;;

        *)
                echo "EMployee Absent"
                empHr=0;
                ;;
        esac

salary=$(( $empWagePerHr * $empHr ))

empWagePerHr=20
empFullTime=0
empPartTime=1

daysPerMonth=20

for (( i=1; i<=$daysPerMonth; i++  ))
do
        random=$((RANDOM%3))

        case $random in
                $empFullTime)
                        echo "Employee is Full time Present"
                        empHr=8;
                        ;;

                $empPartTime)
                        echo "Employee is Part time Present";
                        empHr=4;
                        ;;

                *)
                        echo "Employee Absent";
                        empHr=0;
                        ;;
        esac

done
salary=$(( $empWagePerHr * $empHr ))
echo $salary
totalSalary=$(( $salary * $daysPerMonth ))
echo $totalsalary


empWagePerHr=20
empFullTime=0
empPartTime=1
daysPerMonth=20
Total_Max_hr=100
empHrs=0

for (( i=1; i<=daysPerMonth; i++ ))
do
        random=$((RANDOM%3))
        case $random in
                $empFullTime)
                        echo "Employee is full time present."
                        empHrs=$(($empHrs+12));
                        ;;

                $empPartTime)
                        echo "Employee is part time present."
                        emphrs=$(($empHrs+8));
                        ;;
                *)
                        echo "Employee is absent."
                        ;;
        esac
        echo $empHrs
        echo "Days="$i
        if [ $empHrs -ge $Total_Max_hr ]
        then
                empHrs=100
                break;
        fi

done
echo $empHrs

Totalsalary=$(( $empWagePerHr * $empHrs ))
echo $Totalsalary


function workHour() {
empWagePerHr=20
empFullTime=0
empPartTime=1
daysPerMonth=20
Total_Max_hr=100
empHrs=0

for (( i=1; i<=daysPerMonth; i++ ))
do
        random=$((RANDOM%2))
        case $random in
                $empFullTime)
                        empHrs=$(($empHrs+12));
                        ;;

                $empPartTime)
                        emphrs=$(($empHrs+8));
                        ;;

        esac
        if [ $empHrs -ge $Total_Max_hr ]
        then
                empHrs=100
                break;
        fi

done
echo $empHrs
}
empWagePerHr=20

values=$(workHour)
echo "WorkHours="$values
Totalsalary=$(( $empWagePerHr * $values ))
echo $Totalsalary


function workHour() {
empWagePerHr=20
empFullTime=0
empPartTime=1
Absent=2
daysPerMonth=20
Total_Max_hr=100
empHrs=0

declare -a Dailywage
for (( i=1; i<=daysPerMonth; i++ ))
do

        random=$((RANDOM%3))
        case $random in
                $empFullTime)
                        empHrs=$(($empHrs+12));
                        Dailywage[$(($i-1))]=$((empWagePerHr*12))
                        ;;

                $empPartTime)
                        emphrs=$(($empHrs+8));
                        Dailywage[$(($i-1))]=$((empWagePerHr*8))
                        ;;

                $Absent)
                        Dailywage[$(($i-1))]=0
                        ;;

        esac
        if [ $empHrs -ge $Total_Max_hr ]
        then
                empHrs=100
                break;
        fi

done
echo $empHrs
}
empWagePerHr=20

values=$(workHour)
echo "WorkHours="$values
Totalsalary=$(( $empWagePerHr * $values ))
echo "TotalWage="$Totalsalary



function workHour() {
empWagePerHr=20
empFullTime=0
empPartTime=1
Absent=2
daysPerMonth=20
Total_Max_hr=100
empHrs=0

declare -a Dailywage
declare -a day

for (( i=1; i<=daysPerMonth; i++ ))
do
        day[$i-1]=$i
        random=$((RANDOM%3))
        case $random in
                $empFullTime)
                        empHrs=$(($empHrs+12));
                        Dailywage[$(($i-1))]=$((empWagePerHr*12))
                        ;;

                $empPartTime)
                        emphrs=$(($empHrs+8));
                        Dailywage[$(($i-1))]=$((empWagePerHr*8))
                        ;;

                $Absent)
                        Dailywage[$(($i-1))]=0
                        ;;

        esac
        if [ $empHrs -ge $Total_Max_hr ]
        then
                empHrs=100
                break;
        fi

done
echo $empHrs
}
empWagePerHr=20

values=$(workHour)
echo "WorkHours="$values
Totalsalary=$(( $empWagePerHr * $values ))
echo "TotalWage="$Totalsalary

