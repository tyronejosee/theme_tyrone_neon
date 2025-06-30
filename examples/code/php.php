<?php

class Car {
    private string $make;
    private string $model;
    private int $year;
    private int $odometerReading = 0;

    public function __construct(string $make, string $model, int $year) {
        $this->make  = $make;
        $this->model = $model;
        $this->year  = $year;
    }

    public function description(): string {
        return "{$this->year} {$this->make} {$this->model}";
    }

    public function readOdometer(): void {
        echo "This car has {$this->odometerReading} miles on it.\n";
    }

    public function updateOdometer(int $mileage): void {
        if ($mileage >= $this->odometerReading) {
            $this->odometerReading = $mileage;
        } else {
            echo "You can't roll back an odometer!\n";
        }
    }

    public function incrementOdometer(int $miles): void {
        if ($miles < 0) {
            echo "You can't increment with negative miles!\n";
        } else {
            $this->odometerReading += $miles;
        }
    }
}

// Example usage
$myCar = new Car("Toyota", "Corolla", 2022);
echo $myCar->description() . PHP_EOL;

$myCar->updateOdometer(15000);
$myCar->readOdometer();

$myCar->incrementOdometer(500);
$myCar->readOdometer();

$myCar->updateOdometer(14000); // Warning
