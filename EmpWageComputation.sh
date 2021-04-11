echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
EmpRatePerHr=20
isFullTime=1
isPartTime=2
totalSalary=0
noOfWorkingDays=20
MaxHrsMonth=100
totalEmpHrs=0
totalWorkingDays=0
day=1
while [[ $totalEmpHrs -lt $MaxHrsMonth && $totalWorkingDays -lt $noOfWorkingDays ]]
do
((totalWorkingDays++))
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
totalEmpHrs=$(($totalEmpHrs + $EmpHr))

DaySalary=$(($EmpHr*$EmpRatePerHr))
echo "day Salary:"$DaySalary
totalSalary=$(($totalSalary+($EmpRatePerHr*$EmpHr)))
done
echo "total Salary:" $totalSalary
echo "empHrs:" $totalEmpHrs
