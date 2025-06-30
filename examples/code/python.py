class Car:
    def __init__(self, make: str, model: str, year: int):
        self.make = make
        self.model = model
        self.year = year
        self.odometer_reading = 0

    def description(self) -> str:
        """Return a formatted descriptive name of the car."""
        return f"{self.year} {self.make} {self.model}"

    def read_odometer(self) -> None:
        """Print the car's mileage."""
        print(f"This car has {self.odometer_reading} miles on it.")

    def update_odometer(self, mileage: int) -> None:
        """
        Set the odometer reading to the given value.
        Reject the change if it attempts to roll back the mileage.
        """
        if mileage >= self.odometer_reading:
            self.odometer_reading = mileage
        else:
            print("You can't roll back an odometer!")

    def increment_odometer(self, miles: int) -> None:
        """Add the given amount to the odometer reading."""
        if miles < 0:
            print("You can't increment with negative miles!")
        else:
            self.odometer_reading += miles


# Example usage:
my_car = Car("Toyota", "Corolla", 2022)
print(my_car.description())  # Output: 2022 Toyota Corolla

my_car.update_odometer(15000)
my_car.read_odometer()       # Output: This car has 15000 miles on it.

my_car.increment_odometer(500)
my_car.read_odometer()       # Output: This car has 15500 miles on it.

my_car.update_odometer(14000)  # Should print warning about rollback
