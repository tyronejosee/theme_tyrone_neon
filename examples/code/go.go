package main

import (
	"fmt"
)

// Car representa un automóvil
type Car struct {
	Make            string
	Model           string
	Year            int
	odometerReading int // campo privado, no exportado
}

// Description devuelve una descripción formateada del auto
func (c Car) Description() string {
	return fmt.Sprintf("%d %s %s", c.Year, c.Make, c.Model)
}

// ReadOdometer imprime el kilometraje actual
func (c Car) ReadOdometer() {
	fmt.Printf("This car has %d miles on it.\n", c.odometerReading)
}

// UpdateOdometer actualiza el kilometraje, validando que no se retroceda
func (c *Car) UpdateOdometer(mileage int) {
	if mileage >= c.odometerReading {
		c.odometerReading = mileage
	} else {
		fmt.Println("You can't roll back an odometer!")
	}
}

// IncrementOdometer incrementa el kilometraje por la cantidad dada
func (c *Car) IncrementOdometer(miles int) {
	if miles < 0 {
		fmt.Println("You can't increment with negative miles!")
	} else {
		c.odometerReading += miles
	}
}

func main() {
	myCar := Car{Make: "Toyota", Model: "Corolla", Year: 2022}

	fmt.Println(myCar.Description()) // Output: 2022 Toyota Corolla

	myCar.UpdateOdometer(15000)
	myCar.ReadOdometer() // Output: This car has 15000 miles on it.

	myCar.IncrementOdometer(500)
	myCar.ReadOdometer() // Output: This car has 15500 miles on it.

	myCar.UpdateOdometer(14000) // Should print warning about rollback
}
