var goldBars = 0

let unlockTreasureChest = {(inventory: inout Int) -> Void in inventory += 100}

unlockTreasureChest(&goldBars)
print(goldBars)


//Section Practice

goldBars = 100

func spendTenGoldBars(from inventory: inout Int, completion: (Int) -> Void){
    inventory -= 10
    completion(inventory)
}

print("You had \(goldBars) gold bars.")

spendTenGoldBars(from: &goldBars, completion: {(value: Int) in print("You spent \(value) gold bars.")})
