import UIKit

//MARK: - HW4
/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
*/
var myTeam = "Girls"
var teamName: String = ""
var scoreTeamGirls = "99"
var scoreTeamName = "89"
teamName = "Brooklyn Nets"
var resultsOfGames = ["\(teamName)" : "\(scoreTeamGirls):\(scoreTeamName)"]
print("\(myTeam) against \(teamName) scored - \(resultsOfGames["\(teamName)"]!)")
/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */
var wallet = [5, 10, 20, 50, 100, 200, 500]
func calculateCash(cash: [Int]) -> Int {
    var sum: Int = 0
    for paper in cash {
        sum += paper
    }
    return sum
}
print("Sum of cash is \(calculateCash(cash: wallet))")
/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */
func isEvenNumber(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}
isEvenNumber(number: 5)
print(isEvenNumber(number: 5))
isEvenNumber(number: 4)
print(isEvenNumber(number: 4))
/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */
func createArray(from start: Int,to end: Int) -> [Int] {
    var array: [Int] = []
    for number in start...end {
        array.append(number)
    }
    return array
}

var array = createArray(from: 1, to: 100)
print(array)
/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
var index = 0
for number in array {
    if isEvenNumber(number: number) {
        array.remove(at: index)
    } else {
        index += 1
    }
}
print(array)
