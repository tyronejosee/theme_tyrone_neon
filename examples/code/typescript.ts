class Car {
  make: string;
  model: string;
  year: number;
  private odometerReading: number;

  constructor(make: string, model: string, year: number) {
    this.make = make;
    this.model = model;
    this.year = year;
    this.odometerReading = 0;
  }

  description(): string {
    return `${this.year} ${this.make} ${this.model}`;
  }

  readOdometer(): void {
    console.log(`This car has ${this.odometerReading} miles on it.`);
  }

  updateOdometer(mileage: number): void {
    if (mileage >= this.odometerReading) {
      this.odometerReading = mileage;
    } else {
      console.log("You can't roll back an odometer!");
    }
  }

  incrementOdometer(miles: number): void {
    if (miles < 0) {
      console.log("You can't increment with negative miles!");
    } else {
      this.odometerReading += miles;
    }
  }
}

// Example usage:
const myCar = new Car("Toyota", "Corolla", 2022);
console.log(myCar.description()); // Output: 2022 Toyota Corolla

myCar.updateOdometer(15000);
myCar.readOdometer(); // Output: This car has 15000 miles on it.

myCar.incrementOdometer(500);
myCar.readOdometer(); // Output: This car has 15500 miles on it.

myCar.updateOdometer(14000); // Should print warning about rollback
