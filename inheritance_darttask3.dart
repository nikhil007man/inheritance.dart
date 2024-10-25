// Base class: Animal
class Animal {
  String name;
  int age;

  // Constructor for Animal
  Animal(this.name, this.age);

  // Method to display animal information
  void displayInfo() {
    print("$name is $age years old.");
  }

  // Method for the animal to make a sound
  void makeSound() {
    print("$name makes a sound.");
  }
}

// Subclass: Dog
class Dog extends Animal {
  String breed;

  // Constructor for Dog, calling the superclass constructor
  Dog(String name, int age, this.breed) : super(name, age);

  // Method specific to Dog
  void showBreed() {
    print("$name is a $breed.");
  }

  // Overriding the makeSound method to make a dog-specific sound
  @override
  void makeSound() {
    print("$name barks.");
  }
}

// Subclass: Bird
class Bird extends Animal {
  bool canFly;

  
  Bird(String name, int age, this.canFly) : super(name, age);

  
  @override
  void makeSound() {
    print("$name chirps.");
  }

  
  void showFlightAbility() {
    String flightAbility = canFly ? "can fly" : "cannot fly";
    print("$name $flightAbility.");
  }
}

void main() {
  // Creating an Animal object
  Animal genericAnimal = Animal("Animal", 3);
  genericAnimal.displayInfo();
  genericAnimal.makeSound();

  // Creating a Dog object
  Dog myDog = Dog("Buddy", 5, "Golden Retriever");
  myDog.displayInfo(); 
  myDog.showBreed();   
  myDog.makeSound();   

  // Creating a Bird object
  Bird myBird = Bird("Tweety", 2, true);
  myBird.displayInfo(); 
  myBird.makeSound();   
  myBird.showFlightAbility(); 

  
  Bird penguin = Bird("Penguin", 4, false);
  penguin.displayInfo();
  penguin.makeSound();
  penguin.showFlightAbility();
}
