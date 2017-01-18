//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let age = 19
if age >= 18{
    print("Hello")
    
}

for index in 1...5{
    print("\(index) times 5 is \(index * 5)")
}

let students = ["charles", "james", "ricky", "jimmy", "aisle"]
for student in students{
    print("Hello, \(student).")
}


func eligible(age: Int) -> String {
    
    if age >= 18{
        return "Congrats , You are eligible to vote"
    }else {
        return "Sorry , but grow up before you think of voting"
    }
    
}
// and now lets call this function

print(eligible(20))



