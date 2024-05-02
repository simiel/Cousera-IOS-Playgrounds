let freeApp = true

if freeApp{
    print("You are using the free version of the app. Buy the full version of the app to get access to all of its features.")
}

let morningTemperature = 70
let eveningTemperature = 80

if (morningTemperature < eveningTemperature){
    print("Morning temperature is \(morningTemperature).")
} else{
    print("Evening temperature is \(eveningTemperature).")
}

let temperatureDegree = "Fahrenheit"

if(temperatureDegree == "Fahrenheit"){
    print("You're a US resident. It's 212 Fahrenheit")
} else{
    print("You're a UK resident. It's 100 degrees celsius")
}

if(temperatureDegree == "Fahrenheit" || temperatureDegree == "Celsius"){
    print("You're dope!")
}

switch temperatureDegree{
case "Fahrenheit": print("Configured for the US")
case "Celsius": print("Configured for Europe")
default: print("Invalid configuration")
}
