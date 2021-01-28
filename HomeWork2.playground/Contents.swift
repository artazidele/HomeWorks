import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var float1: Float
var float2: Float
float1 = 3.14
float2 = 42.0
var doubleVariable: Double
doubleVariable = Double(float1) + Double(float2)
print(doubleVariable)
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */
var numberOne: Int
numberOne = 21
var numberTwo: Int
numberTwo = 10
let result: Int
result = numberOne / numberTwo
let reminder: Int
reminder = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(reminder)")
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
var qty: Int
qty = 11
var price: Int
if qty >= 10 {
    price = 850
} else if qty >= 5 {
    price = 900
} else {
    price = 1000
}
var totalSum: Int
totalSum = qty * price
print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
//Method 1
var userInputAge: String
userInputAge = "33a"
var userInputAgeToInt = Int(userInputAge)
if userInputAgeToInt != nil {
    print("This age can be converted to Int: \(userInputAgeToInt!)")
} else {
    print("This age can't be converted to Int")
}

//Method 2
let userInputAge2: String? = "33a"
if let string = userInputAge2, let int = Int(string){
    print("Int: \(int)")
} else {
    print("This age can't be converted to Int")
}

/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
var dateOfBirth = 18
var monthOfBirth = 4
var yearOfBirth = 2000

let currentDate = Date()
let calendar = Calendar.current

let birthDateFormat = DateFormatter()
birthDateFormat.dateFormat = "dd.MM.yyyy"
var day = "01"
var month = "01"
if monthOfBirth < 10 {
    month = "0\(monthOfBirth)"
} else {
    month = "\(monthOfBirth)"
}
if dateOfBirth < 10 {
    day = "0\(dateOfBirth)"
} else {
    day = "\(dateOfBirth)"
}
var year = "\(yearOfBirth)"
let birthDate = birthDateFormat.date(from: "\(day).\(month).\(year)")

let totalYearsFromBirth = calendar.dateComponents([.year], from: birthDate!, to: currentDate).year
let totalMonthFromBirth = calendar.dateComponents([.month], from: birthDate!, to: currentDate).month
let totalDaysFromBirth = calendar.dateComponents([.day], from: birthDate!, to: currentDate).day

print("Total years: \(totalYearsFromBirth!) , total months: \(totalMonthFromBirth!), total days: \(totalDaysFromBirth!)")
/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
switch monthOfBirth {
case 1...3:
    print ("I was born in the first quarter")
case 4...6:
    print ("I was born in the second quarter")
case 7...9:
    print ("I was born in the third quarter")
case 10...12:
    print ("I was born in the fourth quarter")
default:
    print ("There is an error in the variable monthOfBirth")
}
