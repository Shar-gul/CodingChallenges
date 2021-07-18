/*
    Challenge 1: Are the letters unique?
*/

import UIKit

/*
    First approach
*/

func challenge1(input: String) -> Bool {
    let stringArray = Array(input)
    var trimmedArray = Array(input).dropFirst()
    
    for (index, _) in stringArray.enumerated() {
        let currentValue = stringArray[index]

        for char in trimmedArray {
            if char == currentValue {
                return false
            }
        }
        trimmedArray = trimmedArray.dropFirst()
    }
    
    return true
}

assert(challenge1(input:"No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input:"abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1(input:"AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input:"Hello, world") == false, "Challenge 1 failed")

/*
    Optimized Approach
*/

func challenge1_Optimized(input: String) -> Bool {
    let inputArray = Array(input)
    let inputSet = Set(Array(input))
    
    return inputArray.count - inputSet.count == 0 ? true : false
}

assert(challenge1_Optimized(input:"No duplicates") == true, "Challenge 1 failed")
assert(challenge1_Optimized(input:"abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1_Optimized(input:"AaBbCc") == true, "Challenge 1 failed")
assert(challenge1_Optimized(input:"Hello, world") == false, "Challenge 1 failed")
