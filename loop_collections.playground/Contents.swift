let levelScores = [10, 20, 30, 40, 50, 60, 70]
var gameScore = 0

for (level, score) in levelScores.enumerated() {
    print("The score of level \(level) is \(score).")
    gameScore += score
}

print("the final game score is \(gameScore).")

let weeklyTemperatures = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95, "Sunday": 100]

for (day, temperature) in weeklyTemperatures{
    print("On \(day), the temperature is \(temperature)")
}

let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
let temperatures = [70, 75, 80, 85, 90, 95, 100]

for i in 1...days.count{
    print("Actually, on \(days[i-1]), the temperature is \(temperatures[i-1])")
}

for (index, day) in days.enumerated(){
    print("Well, on \(days[index]), the temperature is \(temperatures[index])")
}
