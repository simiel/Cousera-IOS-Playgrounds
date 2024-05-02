var levelScores:[Int] = []

if levelScores.count == 0 {
    print("Welcome to Simielville, Happy gaming!")
}

let firstLevelScore = 10

levelScores.append(firstLevelScore)

print("First score is \(levelScores[0])")

let levelBonusScore = 40
levelScores[0]+=levelBonusScore

print("Updated first score is \(levelScores[0])")

let freeLevelScores = [20, 30]
levelScores += freeLevelScores

let freeLevels = 3
if levelScores.count == freeLevels{
    print("You have to buy the game in order to play its full version.")
    levelScores = []
    print("Game restarted!")
}
