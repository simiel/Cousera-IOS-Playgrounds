var password = "1234"
let passcode = Int(password)

print("passcode to enter is \(passcode!)")

password = "Hello There"

if let code = Int(password){
    print("passcode to enter is \(code)")
} else {
    print("Invalid passcode!!")
}


let accesscode:Int

if let code = Int(password){
    accesscode = code
} else{
    accesscode = 1111
}

let firstPassword = "Hello"
let secondPassword = "World"

if let firstPasscode = Int(firstPassword){
    print("First passcode to enter is \(firstPasscode)")
} else {
    print("Invalid first passcode")
}

if let secondPasscode = Int(secondPassword){
    print("Second passcode to enter is \(secondPasscode)")
} else {
    print("Invalid second passcode")
}

let firstAccessCode: Int?
let secondAccessCode: Int?

if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword){
    firstAccessCode = firstPasscode
    secondAccessCode = secondPasscode
} else {
    firstAccessCode = 1111
    secondAccessCode = 2222
}

print("The first passcode is \(firstAccessCode) and the second one is \(secondAccessCode)")
