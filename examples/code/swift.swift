class Car {
    let make: String
    let model: String
    let year: Int
    private var odometerReading: Int

    init(make: String, model: String, year: Int) {
        self.make = make
        self.model = model
        self.year = year
        self.odometerReading = 0
    }

    func description() -> String {
        return "\(year) \(make) \(model)"
    }

    func readOdometer() {
        print("This car has \(odometerReading) miles on it.")
    }

    func updateOdometer(to mileage: Int) {
        if mileage >= odometerReading {
            odometerReading = mileage
        } else {
            print("You can't roll back an odometer!")
        }
    }

    func incrementOdometer(by miles: Int) {
        if miles < 0 {
            print("You can't increment with negative miles!")
        } else {
            odometerReading += miles
        }
    }
}

let myCar = Car(make: "Toyota", model: "Corolla", year: 2022)
print(myCar.description())

myCar.updateOdometer(to: 15000)
myCar.readOdometer()

myCar.incrementOdometer(by: 500)
myCar.readOdometer()

myCar.updateOdometer(to: 14000)
