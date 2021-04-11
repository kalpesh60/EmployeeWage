echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
EmpRatePerHr=20
empCheck=$((RANDOM%3))
isFullTime=1
isPartTime=2
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

