let numberPlate = "WW87GP"
for character in numberPlate {
  print("character is = \(character)")
}


let levels = 10
let freeLevels = 4
let bonusLevel = 3

for i in 1...levels{
    if i == bonusLevel{
        print("Skipping bonus level \(bonusLevel) now!")
        continue
    }
    print("Currently on level \(i)")
    
    if(i < 5){
        print("You're playing free level \(i)")
    } else{
        print("purchase the game to play levels 5-10.")
        break
    }
}
