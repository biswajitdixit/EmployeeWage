import UIKit

class Employee_Wage{

let isFullTime = 1

let isPartTime = 2

let empRatePerHrs = 20

let numOfWorkingDays = 20

let maxHrsInMonth = 100


}

print("Welcome to Employee Wage")

func wageCalculation(emp:Employee_Wage){

    var empHrs = 0

    var totalEmpWage = 0

    var totalEmpHrs = 0

    var totalWorkingDays = 0

    while (totalEmpHrs <= emp.maxHrsInMonth && totalWorkingDays < emp.numOfWorkingDays)

    {

        totalWorkingDays += 1

        let empCheck = (Int)(arc4random() % 3)

        switch empCheck{

            case emp.isFullTime :

                empHrs = 8

            case emp.isPartTime:

                empHrs = 4

   
       	   default:

                empHrs = 0

        }
        totalEmpHrs += empHrs

        print("Day: \(totalWorkingDays)")

        print("Emp Hrs: \(empHrs) ")
    }

    totalEmpWage = totalEmpHrs * emp.empRatePerHrs

    print("Total Employee wage :\(totalEmpWage)")
}


var employee = Employee_Wage()
wageCalculation(emp: employee)
