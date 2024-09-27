//
//  ISBNTestPlans.swift
//  ISBNTestPlans
//
//  Created by Ansheng Zhou on 2024-09-27.
//

import Testing

struct ISBNTestPlans {

    @Test func isAValidISBNNumber() {
        let digit11th = 9
        let digit12th = 4
        let digit13th = 8
        let providedNumber = isDividendOfTen(dividend: sumOfAllMultiples(digit11th: digit11th, digit12th: digit12th, digit13th: digit13th))
        let result = report(on: providedNumber, sumOfAllMultiples: sumOfAllMultiples(digit11th: digit11th, digit12th: digit12th, digit13th: digit13th))
            
#expect(result == """
The 1-3-sum is 120.
The ISBN number 9780921418948 is a valid ISBN number.
""")
        }
    
}



    @Test func isNOTAValidISBNNumber() {
        let digit11th = 0
        let digit12th = 5
        let digit13th = 2
        let providedNumber = isDividendOfTen(dividend: sumOfAllMultiples(digit11th: digit11th, digit12th: digit12th, digit13th: digit13th))
        let result = report(on: providedNumber, sumOfAllMultiples: sumOfAllMultiples(digit11th: digit11th, digit12th: digit12th, digit13th: digit13th))
            
#expect(result == """
The 1-3-sum is 108.
The ISBN number 9780921418052 is a NOT valid ISBN number.
""")
        }
    

