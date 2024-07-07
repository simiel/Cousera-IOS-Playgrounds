protocol Driver{
    var name: String{get}
    func driveToDestination(_ destination: String, with food: String)
}

class JumiaDriver: Driver{
    let name: String
    init(name: String) {
        self.name = name
    }
    
    func driveToDestination(_ destination: String, with food: String) {
        print("\(name) is driving to \(destination) to deliver your \(food)")
    }
}


class Shop{
    var DeliveryDriver: Driver?
    func deliverFood(_ food: String, to destination: String){
        if let DeliveryDriver = DeliveryDriver{
            DeliveryDriver.driveToDestination(
                            destination,
                            with:food
                        )
        }
        else {
                    print("No delivery driver.")
                }
    }
}


let Lord = JumiaDriver(name: "Lord")

let MrWus = Shop()

MrWus.deliverFood("Sexhuan Chicken sauce", to: "East Legon Hills")

MrWus.DeliveryDriver = Lord

MrWus.deliverFood("Nkontomire chops", to: "Beach drive")
