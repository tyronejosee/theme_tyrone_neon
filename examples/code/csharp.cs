public class Car {
    private String make;
    private String model;
    private int year;
    private int odometerReading;

    public Car(String make, String model, int year) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.odometerReading = 0;
    }

    public String description() {
        return year + " " + make + " " + model;
    }

    public void readOdometer() {
        System.out.println("This car has " + odometerReading + " miles on it.");
    }

    public void updateOdometer(int mileage) {
        if (mileage >= odometerReading) {
            odometerReading = mileage;
        } else {
            System.out.println("You can't roll back an odometer!");
        }
    }

    public void incrementOdometer(int miles) {
        if (miles < 0) {
            System.out.println("You can't increment with negative miles!");
        } else {
            odometerReading += miles;
        }
    }

    public static void main(String[] args) {
        Car myCar = new Car("Toyota", "Corolla", 2022);
        System.out.println(myCar.description()); // 2022 Toyota Corolla

        myCar.updateOdometer(15000);
        myCar.readOdometer();                   // This car has 15000 miles on it.

        myCar.incrementOdometer(500);
        myCar.readOdometer();                   // This car has 15500 miles on it.

        myCar.updateOdometer(14000);            // Warning about rollback
    }
}
