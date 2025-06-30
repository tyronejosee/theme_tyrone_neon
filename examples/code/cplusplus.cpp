using System;

public class Car
{
    public string Make { get; }
    public string Model { get; }
    public int Year { get; }
    private int odometerReading;

    public Car(string make, string model, int year)
    {
        Make = make;
        Model = model;
        Year = year;
        odometerReading = 0;
    }

    public string Description()
    {
        return $"{Year} {Make} {Model}";
    }

    public void ReadOdometer()
    {
        Console.WriteLine($"This car has {odometerReading} miles on it.");
    }

    public void UpdateOdometer(int mileage)
    {
        if (mileage >= odometerReading)
            odometerReading = mileage;
        else
            Console.WriteLine("You can't roll back an odometer!");
    }

    public void IncrementOdometer(int miles)
    {
        if (miles < 0)
            Console.WriteLine("You can't increment with negative miles!");
        else
            odometerReading += miles;
    }

    public static void Main()
    {
        Car myCar = new Car("Toyota", "Corolla", 2022);
        Console.WriteLine(myCar.Description());

        myCar.UpdateOdometer(15000);
        myCar.ReadOdometer();

        myCar.IncrementOdometer(500);
        myCar.ReadOdometer();

        myCar.UpdateOdometer(14000);
    }
}
