import UIKit
let isFullTime = 1

let isPartTime = 2

let empRatePerHrs = 20

print("Welcome to Employee Wage")

var empHrs = 0

var empWage = 0

var empCheck = (arc4random() % 3)

if empCheck == isFullTime 

{

    empHrs = 8

    

}else if empCheck == isPartTime

{

    empHrs = 4

    

}else{

    empHrs = 0

}
empWage = empHrs * empRatePerHrs
print("Employee Wage: \(empWage)")


