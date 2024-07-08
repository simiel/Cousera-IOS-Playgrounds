func RSum(number: Int) -> Int{
    if number == 0{
        return 0
    }
    
    return RSum(number: number-1) + number
    
    
}


print(RSum(number: 3))
