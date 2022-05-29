
/*
    Challenge 3: Do two strings contain the same characters?
*/

func challenge3(firstInput: String, secondInput: String) -> Bool {
    var valid = true
    
    if firstInput.count != secondInput.count {
        valid = false
    }
    
    for (_, value) in firstInput.enumerated() {
        if firstInput.filter({ $0 == value }).count != secondInput.filter({ $0 == value }).count {
            valid = false
            break
        }
    }
    
    return valid
}

assert(challenge3(firstInput:"abca", secondInput: "abca") == true, "Challenge 3 failed")
assert(challenge3(firstInput:"abc", secondInput: "cba") == true, "Challenge 3 failed")
assert(challenge3(firstInput:"a1 b2", secondInput: "b1 a2") == true, "Challenge 3 failed")
assert(challenge3(firstInput:"abc", secondInput: "abca") == false, "Challenge 3 failed")
assert(challenge3(firstInput:"abc", secondInput: "Abc") == false, "Challenge 3 failed")
assert(challenge3(firstInput:"abc", secondInput: "cbAa") == false, "Challenge 3 failed")
assert(challenge3(firstInput:"abcc", secondInput: "abca") == false, "Challenge 3 failed")
