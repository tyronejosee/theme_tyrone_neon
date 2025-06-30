struct Car {
    make: String,
    model: String,
    year: u32,
    odometer_reading: u32,
}

impl Car {
    fn new(make: &str, model: &str, year: u32) -> Self {
        Self {
            make: make.to_string(),
            model: model.to_string(),
            year,
            odometer_reading: 0,
        }
    }

    fn description(&self) -> String {
        format!("{} {} {}", self.year, self.make, self.model)
    }

    fn read_odometer(&self) {
        println!("This car has {} miles on it.", self.odometer_reading);
    }

    fn update_odometer(&mut self, mileage: u32) {
        if mileage >= self.odometer_reading {
            self.odometer_reading = mileage;
        } else {
            println!("You can't roll back an odometer!");
        }
    }

    fn increment_odometer(&mut self, miles: u32) {
        self.odometer_reading += miles;
    }
}

fn main() {
    let mut my_car = Car::new("Toyota", "Corolla", 2022);
    println!("{}", my_car.description());

    my_car.update_odometer(15000);
    my_car.read_odometer();

    my_car.increment_odometer(500);
    my_car.read_odometer();

    my_car.update_odometer(14000); // Should warn about rollback
}
