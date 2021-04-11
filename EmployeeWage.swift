import UIKit

class Employee_Wage{

let isFullTime = 1

let isParttime = 2
    
let companyName:String

let empRatePerHrs:Int

let numOfWorkingDays:Int

let maxHrsInMonth:Int

    init(companyName:String, empRatePerHrs:Int, numOfWorkingDays:Int, maxHrsInMonth:Int) {

        self.companyName = companyName

        self.empRatePerHrs = empRatePerHrs

        self.numOfWorkingDays = numOfWorkingDays

        self.maxHrsInMonth = maxHrsInMonth

    }

    

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

    print("-----------------Company Name :\(emp.companyName)——————————“)

    totalEmpWage = totalEmpHrs * emp.empRatePerHrs

    print("Total Employee wage :\(totalEmpWage)")

    

}

var company1 = Employee_Wage(companyName: "Reliance", empRatePerHrs: 20, numOfWorkingDays: 25, maxHrsInMonth: 20)

wageCalculation(emp: company1)

var company2 = Employee_Wage(companyName: "HDFC", empRatePerHrs: 25, numOfWorkingDays: 28, maxHrsInMonth: 45)

wageCalculation(emp: company2)

var company3 = Employee_Wage(companyName: "Jindal", empRatePerHrs: 29, numOfWorkingDays: 18, maxHrsInMonth: 70)

wageCalculation(emp: company3)


