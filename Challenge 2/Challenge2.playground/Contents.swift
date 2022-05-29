/*
    Challenge 2: Is a string a palindrome?
*/

import UIKit

func challenge2(input: String) -> Bool {
    let inputArray = Array(input)
    let inputArrayReversed = Array(inputArray.reversed())
    var valid = true
    
    for (index, value) in inputArray.enumerated() {
        if value.lowercased() != inputArrayReversed[index].lowercased() {
            valid = false
            break
        }
    }
    
    return valid
}

assert(challenge2(input:"rotator") == true, "Challenge 2 failed")
assert(challenge2(input:"Rats live on no evil star") == true, "Challenge 2 failed")
assert(challenge2(input:"Never odd or even") == false, "Challenge 2 failed")
assert(challenge2(input:"Hello, world") == false, "Challenge 2 failed")


func challenge2_optimised(input: String) -> Bool {
    let inputLowercased = input.lowercased()
    return String(inputLowercased.reversed()) == inputLowercased
}

assert(challenge2_optimised(input:"rotator") == true, "Challenge 2 failed")
assert(challenge2_optimised(input:"Rats live on no evil star") == true, "Challenge 2 failed")
assert(challenge2_optimised(input:"Never odd or even") == false, "Challenge 2 failed")
assert(challenge2_optimised(input:"Hello, world") == false, "Challenge 2 failed")
