class Car {
  final String make;
  final String model;
  final int year;
  int _odometerReading = 0;

  Car(this.make, this.model, this.year);

  String description() => '$year $make $model';

  void readOdometer() {
    print('This car has $_odometerReading miles on it.');
  }

  void updateOdometer(int mileage) {
    if (mileage >= _odometerReading) {
      _odometerReading = mileage;
    } else {
      print("You can't roll back an odometer!");
    }
  }

  void incrementOdometer(int miles) {
    if (miles < 0) {
      print("You can't increment with negative miles!");
    } else {
      _odometerReading += miles;
    }
  }
}

void main() {
  var myCar = Car('Toyota', 'Corolla', 2022);
  print(myCar.description());

  myCar.updateOdometer(15000);
  myCar.readOdometer();

  myCar.incrementOdometer(500);
  myCar.readOdometer();

  myCar.updateOdometer(14000); // Warning
}
