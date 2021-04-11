echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
EmpRatePerHr=20
isFullTime=1
isPartTime=2
totalSalary=0
day=1
while [ $day -le 20 ]
do
empCheck=$((RANDOM%3))
case $empCheck in
$isFullTime)
echo "employee is Present"
EmpHr=8
;;
$isPartTime)
echo "part Time present"
EmpHr=4
;;
*)
echo "Employee is absent"
EmpHr=0
;;
esac
DaySalary=$(($EmpHr*$EmpRatePerHr))
echo "day Salary:"$DaySalary
totalSalary=$(($totalSalary+($EmpRatePerHr*$EmpHr)))
((day++))
done
echo "total Salary:" $totalSalary

