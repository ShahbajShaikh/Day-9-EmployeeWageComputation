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

