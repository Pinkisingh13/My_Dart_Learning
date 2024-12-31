// import 'dart:io'; // Importing dart:io library to use stdin and stdout.

// void main() {
//* 2 compilation process:
library;

/// Jit: Just in time compilation: It is used for development and debugging. It is faster than AOT.
// AOT: Ahead of time compilation: It is used for production. It is slower than JIT.

//? Dart Follows BODMAS rule.
//? Dart is case sensitive.
//? Dart is a statically typed language, which means that the type of each variable is known at compile time.

//* Input and Output
// String userInput = stdin.readLineSync()!;
// print('You entered: $userInput');

//* Variables

// Multiline string

//First way
// String s = '''This is a multiline string''';
// print(s);

// Second way

// String s = 'This is a \n multiline \n string';
// print(s);

//var name = 'Bob'; // Type inferred as String
//String person = 'sujata'; // Explicit type declaration

//Object name1 = 'Bob'; // Variable can store any type

//var value; // if dart can not determine single type, it falls back to dynamic.

/// Null Safety
// Dart 2.12 introduced null safety feature

// Nullable and Non-nullable Types
//   String? name; // Nullable type
//   print(name); // null

//   String name1; // Non-nullable type
//   print(name1)// Error: Non-nullable instance field 'name1' must be initialized.

//Initialization rule
// RULE NO: 1 ===> Non-nullable variables must be initialized before use.
// int count;
// print(count); //The non-nullable local variable 'count' must be assigned before it can be used.

// RULE NO: 2 ===> Nullable variables default to null if uninitialized.

//it is not showing any error because it is nullable type using ? operator set the value to null by default.
// int? count1;
// print(count1);

// Example:
// String? name;
// name = 'Sujata';
// print(name.length);
// print(name);
// name = null;
// print(name?.length ??
//     "The variable is null"); // Error: The property 'length' can't be unconditionally accessed because the receiver can be 'null'. it is saying that property (.length)  can not be accessed because it can be null.
// So, we can use null check operator (?.) to avoid this error.
//here it checks if name is null then it will not access the length property of name.
// we are not using ! operator because it will throw an error if name is null.
// So, we are using ?? operator to check if name is null then it will print the message "The variable is null".

// Late keyword:  The late modifier in Dart defers the initialization of a variable, but it requires that the variable is assigned a value before it is accessed for the first time. This applies even if the variable is nullable (String?).

// late String name; // Late keyword is used to declare a variable that will be initialized later. Wecan not use this variable before initialization because of late keyowrd. in normal variable case we can print it and then it gives null as output but in late keyword case it will give error.
// print(name); // Error : The late local variable 'name' is definitely unassigned at this point.

//!OPERATORS
//*Conditional Expression:
//* Dart has Two Operators:
//?Number 1: condition ? expr1 : expr2
// if the condition is true, expr1 is evaluated and returned; otherwise, expr2 is evaluated and returned.

//?Number 2: expr1 ?? expr2 (null-coalescing operator)
// If expr1 is non-null, then returns expr1 value; otherwise, evaluates and returns the value of expr2.

//!Cascade notation
//* Cascade notation (.., ?..) allows you to perform a sequence of operations on the same object.

//  Person person = Person()
// ..name = 'Sujata'
// ..age = 25;

// }

// class Person {
//   String name;
//   int age = 0;
// }

//*Control Flow Statements
//for loops
// while and do while loops
// break and continue

//*For loops
// var message = StringBuffer(
//     'Dart is fun'); // StringBuffer is used to concatenate strings.
//  It is more efficient than using the + operator for string concatenation in a loop because it avoids creating multiple intermediate string objects.

// for (var i = 0; i < 5; i++) {
//   message.write('!');
// }
// print(message
//     .toString()); // toString() method is used to convert StringBuffer to  a single String.

///Switch Statement didnot allow using relational operators like <, >, <=, >=, ==, !=, etc.
// It only allows using constant expressions like int, string, etc.

// var message = 'cat';
// for (var i = 0; i <= 3; i++) {
//   message += '!';
// }
// print(message);

//* EXERCISE SOLUTION
// calculateShippingCost();

//*Function
// to store giveanswer() function in a variable we can use Records with same as return type or we can use final, var.
// Dart methods cant be stored in const variable. So, we can use final or var.

// (int, String, bool) storeAnswer = giveAnswer();
//!OR
// var storeAnswer = giveAnswer();
//!OR
// var (age, name, isVerified) = giveAnswer();
// print("Age: $age, Name: $name, isVerified: $isVerified");
// print(storeAnswer); //OUTPUT: (42, Hello, true)
// print(storeAnswer.$1); // OUTPUT: 42
// print(storeAnswer.$2); // OUTPUT: Hello

//*Calling mapFunction () below:
// final mapResult = mapFunction();
// print(mapResult); // OUTPUT: {age: 42, name: Hello}

///*Calling exampleFun() below:
// final stuff = exampleFun();
// print(stuff.age); // OUTPUT: 42
// print(stuff.name); // OUTPUT: Hello

//*Function from Function by calling printStuff() below:
// printStuff(); // OUTPUT: Not Printing anything because we are not calling the function inside the function.

// print(printStuff());
// print(() {
//   print("yooooo");
// }() ); // OUTPUT: Hello
// }  //! End paranthesis of main function.

///*EXERCISE: Write a Dart program to calculate the shipping cost of a package based on the destination zone and the weight of the package. The shipping cost is calculated as follows:
// void calculateShippingCost() {
//   stdout.write('Enter the destination zone: ');
//   String destinationZone = stdin.readLineSync()!;
//   stdout.write('Enter the weight of the package: ');
//   String weightOfThePackage = stdin.readLineSync()!;
//   int weightInNumber = int.parse(weightOfThePackage);

//   if (destinationZone == 'XYZ') {
//     print(" The shipping cost is: ${weightInNumber * 5} rupees");
//   } else if (destinationZone == 'ABC') {
//     print(" The shipping cost is: ${weightInNumber * 7} rupees");
//   } else if (destinationZone == 'PQR') {
//     print(" The shipping cost is: ${weightInNumber * 10} rupees");
//   } else {
//     print("Please enter valid destination zone");
//   }
// }

//*PART OF FUNCTIONS

//This return type (int, String, bool) is called Records.

// (int, String, bool) giveAnswer() {
//   return (42, 'Hello', true);
// }

// Map<String, Object> mapFunction() {
//   return ({'age': 42, 'name': 'Hello'});
// }

//* Named return type in a function with variable name.
// ({int age, String name}) exampleFun() {
//   return (age: 42, name: 'Hello');
// }

//*Function From Function
// Function printStuff() {
//   return () {
//     print('Hello');
//   };
// }

//!================================================================================

// !Classes in Dart

//! void main() {
/// Dart is an object-oriented programming language, and classes form the basis of object-oriented programming in Dart.
//* Creating object of class where properties are non final and do not using any constructo,
//*And we can modify the properties of object after creating it.

//?Printing objects in two ways:
// final cake1 = Cake()
//   ..flavour = 'Vanilla'
//   ..price = 10;
// print(cake1.flavour); // OUTPUT= Vanilla
// I can change the value of flavour and it does not give me any error
// print(cake1.flavour = "Chocolate"); //OUTPUT = Chocolate

// Cake cake2 = Cake();
// cake2.flavour = 'Chocolate';
// cake2.price = 20;
// print(cake2.flavour);
// print(cake2.price);

// *Creating objects using named constructor but not using final keyword:
// This allows us to change the value of properties after object creation
// Cake cake3 = Cake(flavour: 'Strawberry', price: 30);
// print(cake3.flavour); // OUTPUT = Strawberry
// cake3.flavour = "Chocolate";
// print(cake3.flavour); // OUTPUT = Chocolate

//* Creating objects using final keyword and const Constructor
//*Pending
//!} //End of main function

//* class Cake {
//? Declaring variable Without using final keyword and not calling any constructor.
// String? flavour;
// int? price;

//!OR
//? Declaring variable Without using final keyword and calling non const constructor means default constructor.
//?Because we are not using final keyword so we can not use const constructor.
// String flavour;
// int price;
// Cake({required this.flavour, required this.price});

//*The toString method is overridden to provide a string representation of the Cake object.
//   @override
//   String toString() {
//     return 'Cake{flavour: $flavour, price: $price}';
//   }

//!OR

//* Declaring variable using final keyword and calling const constructor.
// In Dart, final fields must be initialized either at the point of declaration or within the constructor. Even though field flavour is nullable.
// final String flavour; OR
//final String? flavour;
// shows an Error: The final variable 'flavour' must be initialized.
// but if we initialize it in the constructor or assign a value at the point of declaration then it will not show any error.
//Example:
//final String flavour = 'Vanilla';
// const Cake(this.flavour); // It will not show any error because we are using const constructor.
//If we use final fields, a constructor is necessary to initialize them, ensuring that they cannot be changed after the object is created.
// final String flavour;
// final int price;
// const Cake({required this.flavour, required this.price});
//* }

//! CLASSES PART 2
// void main() { //!Start of main function.
// Cookie cookie = Cookie(flavour: 'Chocolate', shape: 'Round');
// cookie.flavour = 'Strawberry';

//Accessing private variable: Private Variable can be accessed within the class only. And it is private to a file not a class.
// cookie._color = 'Red';
// print(cookie._color);
// print(cookie.flavour);
// print(" Calling Setter Method: ${cookie.setPriceOfTheCake = 30}");
// print(" Calling Getter Method: ${cookie.priceOfTheCake}");

// Cake cake = Cake(flavour: 'Vanilla', shape: 'Round');
// print(cake.flavour);

// } //!End of main function.

//*Creating a class with private variable and using getter and setter method.
// class Cookie {
//   final String flavour;
//   int? _price;
//   int? gst;
//   final String shape;

//   //?private variable:
//   //?Accessing private variable: Private Variable can be accessed within the class only. And it is private to a file not a class.
//   //?  This means that private variables can be accessed within the class they are defined in and other classes within the same file, but not from outside the file.
//   String _color = 'Brown';
//   Cookie(
//       {required this.flavour,
//       required this.shape,
//       this.gst});

//   @override
//   String toString() {
//     return 'Cookie{flavour: $flavour, price: $_price}';
//   }

//   void bake() {
//     print('Baking the cookie');
//   }

//   //*Getter
//   int get priceOfTheCake => _price ?? 0;

//   //* Setter
//   set setPriceOfTheCake(int price) {
//     _price = price;
//   }
// }

// class Cake extends Cookie {
//   //?super keyword is used to call the constructor of the superclass.
//   //?It is used to access the superclass's properties and methods.

//   Cake({required super.flavour, required super.shape});

//   @override
//   String bake() {
//     return 'Baking the cake';
//   }
// }

//! CLASSES PART 3 (STATIC KEYWORD)

// void main(){
// Constants constant = Constants(); //instance of class
//   print(Constants.greeting);
//   print(Constants.age);
//   print(Constants.addNumbers(2, 3));
// }

//*STATIC KEYWORD : We dont need to create an object of class to access the static variable or method. We can access it directly using class name. And it is helpful to not calling the constructor again and again.
// class Constants{
//   Constants(){
//     print("This is a constructor");
//   }
//  static String greeting = "hello";
//   static const int age = 25;

//   static int addNumbers(int a, int b){
//     return a + b;
//   }
// }

//! CLASSES PART 4 (INHERITANCE)
//*Inheritance: Inheritance is a mechanism in which one class acquires the properties and behavior of another class. The class that inherits the properties and behavior is known as the subclass or derived class, and the class whose properties and behavior are inherited is known as the superclass or base class.
//* multiple inheritance is not supported in Dart.
//* But if one subclass is inheriting from two superclasses and both superclasses are inheriting from the same superclass then it is called as Hierarchical Inheritance.

//

void main() {
  //Creating object of class Animal
  Animal animal = Animal();
  animal.eat();
  print(animal.legs);
  print(animal.eyes);
  print(animal.isRoaring);

  //Creating object of class Lion
  Lion lion = Lion();
  lion.eat();
  lion.roar();
  lion.lionRun();
  print(lion.legs);
  print(lion.eyes);
  print(lion.isRoaring);


  //Creating object of class Cow
  Cow cow = Cow();
  cow.eat();
  cow.roar();
  cow.cowRun();
  cow.printAnimalProperties();
  print(cow.legs);
  print(cow.eyes);
  print(cow.isRoaring);
  

}

class Animal {
  int legs = 4;
  int eyes = 2;

  bool isVegetarian = false;
  bool isDomasticAnimal = false;

  bool isRoaring = false;
  void eat() {
    print("Animal is eating");
  }
  void run(String animalName) {
    print("$animalName is running");
  }
}

// class Lion is inheriting the properties and methods of class Animal.
// using extends keyword.
class Lion extends Animal {
  bool isRoaring = true;
  int legs = 5;


  @override
  void eat() {
    print("Lion is eating");
    print(
        "SuperClass Animal's eyes value is printing:  ${super.eyes}"); //super keyword is used to access the properties and methods of superclass.
  }


void lionRun(){
  super.run("Lion");
}

  void roar() {
    print("Lion is roaring");
  }
}

//*Hierarchical Inheritance: In this type of inheritance, one subclass is inheriting from two superclasses and both superclasses are inheriting from the same superclass. It is also known as multiple inheritance.
//* in this example, Cow is inheriting from Lion and Lion is inheriting from Animal So, Cow is indirectly inheriting from Animal.
class Cow extends Lion {

printAnimalProperties(){
  print("Animal's isVegetarian: ${super.isVegetarian}");
  print("Animal's eyes: ${super.eyes}");
  print("Animal's isDomasticAnimal: ${super.isDomasticAnimal}");
}

  void cowRun() {
    super.run("Cow");
}

  @override
  void eat() {
    print("Cow is eating");
    print(
        "SuperClass Lion's eyes value is printing:  ${super.eyes}"); //super keyword is used to access the properties and methods of superclass.
  }

  @override
  void roar() {
    print("Cow can not roaring");
  }
}