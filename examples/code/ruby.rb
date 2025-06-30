class Car
  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
    @odometer_reading = 0
  end

  def description
    "#{@year} #{@make} #{@model}"
  end

  def read_odometer
    puts "This car has #{@odometer_reading} miles on it."
  end

  def update_odometer(mileage)
    if mileage >= @odometer_reading
      @odometer_reading = mileage
    else
      puts "You can't roll back an odometer!"
    end
  end

  def increment_odometer(miles)
    if miles < 0
      puts "You can't increment with negative miles!"
    else
      @odometer_reading += miles
    end
  end
end

# Example usage:
my_car = Car.new("Toyota", "Corolla", 2022)
puts my_car.description            # => 2022 Toyota Corolla

my_car.update_odometer(15000)
my_car.read_odometer               # => This car has 15000 miles on it.

my_car.increment_odometer(500)
my_car.read_odometer               # => This car has 15500 miles on it.

my_car.update_odometer(14000)      # Prints warning about rollback
