import UIKit

let isFullTime = 1

let isPartTime = 2

let empRatePerHrs = 20

print("Welcome to Employee Wage")

var empHrs = 0

var empWage = 0

var empCheck = (Int)(arc4random() % 3)

switch empCheck{

    case isFullTime:

        empHrs = 8

    

    case isPartTime:

        empHrs = 4

    

    default:

        empHrs = 0

}

empWage = empHrs * empRatePerHrs
print("Employee Wage: \(empWage)")


