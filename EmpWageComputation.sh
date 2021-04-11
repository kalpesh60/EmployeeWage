echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
EmpRatePerHr=20
empCheck=$((RANDOM%3))
isPresent=1
isPartTime=2
if [ $empCheck -eq $isPresent ]
then
	echo "employee is Present"
EmpHr=8
elif [ $isPartTime -eq $empCheck ]
then
echo "part Time present"
EmpHr=4
else
echo "Employee is absent"
EmpHr=0
fi
DaySalary=$(($EmpHr*$EmpRatePerHr))
echo "day Salary:"$DaySalary
