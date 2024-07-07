class Calculator{
    func divide(x: Double, y:Double) throws -> Double {
        if y == 0{
            throw CalculatorError.divisionByZero
        }
        return x/y
    }
}

enum CalculatorError: Error{
    case divisionByZero
}

let calculator = Calculator()

do{
    let successfulResult2 = try calculator.divide(x: 1, y: 2)
        print(successfulResult2)
    
    let successfulResult = try calculator.divide(x: 100, y: 0)
    print(successfulResult)
}
catch{
    print("Division by zero detected and not allowed")
}


