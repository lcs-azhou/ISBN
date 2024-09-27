//
//  main.swift
//  ISBN
//
//  Created by Ansheng Zhou on 2024-09-27.
//

import Foundation

// FUNCTIONS
func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
    
    // Loop until a valid value is provided
    while true {
        
        // Prompt the user
        print(prompt)
        
        // Collect the input
        guard let givenInput = readLine() else {
            continue
        }
        
        // Convert to an integer
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        
        // If a lowest value for the integer was specified...
        if let minimumValue = minimum {
            
            // ... then check that the given integer is greater than or equal to the lowest desired value.
            guard givenInteger >= minimumValue else {
                continue
            }
            
        }
        
        // If an highest possible value for the integer was specified...
        if let maximumValue = maximum {
            
            // ... then check that the given integer is less than or equal to the highest desired value.
            guard givenInteger <= maximumValue else {
                continue
            }
            
            
        }
        
        // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
        return givenInteger
        
    }
    
}

func multipleByOne(digit11th: Int, digit13th: Int) -> Int{
    let result = (digit11th+digit13th)*1
    return result
}

func multipleByThree(digit12th: Int) -> Int{
    let result = (digit12th)*3
    return result
}

func sumOfAllMultiples(digit11th:Int, digit12th:Int, digit13th: Int) -> Int{
    let result = multipleByOne(digit11th: digit11th, digit13th: digit13th) + multipleByThree(digit12th: digit12th)+91
    return result
}
//9780921418=91

func isDividendOfTen(dividend:Int) -> Bool{
    let dividend = sumOfAllMultiples(digit11th: digit11th, digit12th: digit12th, digit13th: digit13th)
    if dividend % 10 == 0{
        return true
    }else{
        return false
    }
}

func report(on isDividendOfTen: Bool,sumOfAllMultiples: Int) -> String {
    
    let result = isDividendOfTen
    let providedNumber = sumOfAllMultiples
    
    if result == true{
        return "The ISBN number 9780921418\(digit11th)\(digit12th)\(digit13th) is a valid ISBN number.)"
    } else {
        return "The ISBN number 9780921418\(digit11th)\(digit12th)\(digit13th) is NOT a valid ISBN number.)"
    }
    
}

let digit11th = getInput(withPrompt: "Digit 11?", minimum: 0, maximum: 9)
let digit12th = getInput(withPrompt: "Digit 12?", minimum: 0, maximum: 9)
let digit13th = getInput(withPrompt: "Digit 13?", minimum: 0, maximum: 9)

let output = report(on: isDividendOfTen(dividend: sumOfAllMultiples(digit11th: digit11th, digit12th: digit12th, digit13th: digit13th)), sumOfAllMultiples: sumOfAllMultiples(digit11th: digit11th, digit12th: digit12th, digit13th: digit13th) )

print(output)




