class Vehicle {
  
  String brand;
  int year;

 
  Vehicle(this.brand, this.year);


  void displayInfo() {
    print("This vehicle is a $brand, manufactured in $year.");
  }
}

class Car extends Vehicle {
  String model;

  
  Car(String brand, int year, this.model) : super(brand, year);

  
  void showDetails() {
    print("This is a $model model from $brand.");
  }
}

void main() {
  
  Vehicle myVehicle = Vehicle("Toyota", 2018);

  
  myVehicle.displayInfo();

  
  Car myCar = Car("Toyota", 2018, "Corolla");
  myCar.displayInfo(); 
  myCar.showDetails(); 