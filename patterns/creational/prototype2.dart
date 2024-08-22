// vehicle.dart
abstract class Vehicle {
  String get name;
  void drive();
}

// car.dart
class Car extends Vehicle {
  @override
  String get name => 'Car';

  @override
  void drive() {
    print('Driving a car');
  }
}

// truck.dart
class Truck extends Vehicle {
  @override
  String get name => 'Truck';

  @override
  void drive() {
    print('Driving a truck');
  }
}

// prototype.dart
class VehiclePrototype {
  Vehicle _vehicle;

  VehiclePrototype(this._vehicle);

  Vehicle clone() {
    // Create a new instance of the same type as the original
    return _vehicle.runtimeType == Car ? Car() : Truck();
  }
}


void main() {
  // Create an initial Car prototype
  VehiclePrototype carPrototype = VehiclePrototype(Car());

  // Clone the prototype to create a new Car
  Vehicle newCar = carPrototype.clone();

  // Clone the prototype again to create a new Truck
  Vehicle newTruck = carPrototype.clone();

  // Verify the clones' behavior
  newCar.drive(); // Output: Driving a car
  newTruck.drive(); // Output: Driving a truck
}
  
