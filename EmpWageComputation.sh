echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
EmpRatePerHr=20
empCheck=$((RANDOM%2))
isPresent=1
if [ $empCheck -eq $isPresent ]
then
	echo "employee is Present"
EmpHr=8
else
echo "Employee is absent"
EmpHr=0
fi
DaySalary=$(($EmpHr*$EmpRatePerHr))
echo "day Salary:"$DaySalary
