import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
var period = 5
var deposit = 500000.0
var rate = 1.01
var profit = 0.0
var deposit2 = deposit
for _ in 1...period {
    deposit *= rate
    profit += (deposit - deposit2)
    deposit2 = deposit
}
print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
var integerArray = [Int]()
integerArray = [1, 2, 3, 4]
var evenNumber = [Int]()
for integer in integerArray {
    if integer % 2 == 0 {
        evenNumber += [integer]
        print("Is")
    }
}
print("My even numbers are: \(evenNumber)")
/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var counter = 0
var randomNumber: Int
for _ in 1... {
    randomNumber = Int.random(in: 1...100)
    counter += 1
    if randomNumber == 5 {
        break
    }
}
print("Number 5 will be after \(counter) shuffles")
/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
var numberOfDays = 0
var height = 0
while height < 10 {
    numberOfDays += 1
    height += 2
    if height >= 10 {
        break
    }
    height -= 1
}
print("bug will spend \(numberOfDays) to reach top of the post")
