# Who Invented OOP and Why?

Object-Oriented Programming (OOP) was first introduced by **Alan Kay** in the 1960s while working on the **Smalltalk** programming language at Xerox PARC. However, the concept was influenced by earlier work on **Simula** (developed by Ole-Johan Dahl and Kristen Nygaard).

## Why was OOP invented?
OOP was created to improve **code organization, reusability, and maintainability** by modeling programs using real-world objects. The main goals were:
* **Encapsulation**: Hiding details to improve security.
* **Abstraction**: Simplifying complex systems.
* **Inheritance**: Reusing code efficiently.
* **Polymorphism**: Allowing flexibility with different object types.

## 1. Encapsulation & Abstraction
* **Encapsulation**: Bundling data (variables) and methods (functions) into a single unit (class) and restricting direct access to data.
   * Example: In PHP, using `private` properties.
* **Abstraction**: Hiding implementation details and exposing only necessary functionalities.
   * Example: Using abstract classes in PHP.

🔹 **Example in PHP:**
```php
class BankAccount {
    private $balance;
    
    public function __construct($balance) {
        $this->balance = $balance;
    }
    
    public function getBalance() {
        // Abstraction
        return $this->balance;
    }
}```


## **2. Inheritance**

Inheritance allows a child class to inherit properties and methods from a parent class.

- Helps in **code reuse** and **extensibility**.

🔹 **Example in PHP**

```php
class Animal {
    public function makeSound() {
        return "Some sound";
    }
}

class Dog extends Animal {
    public function makeSound() {
        return "Bark!";
    }
}

$dog = new Dog();
echo $dog->makeSound(); // Output: Bark!

```


---

## **3. PHP Interfaces & Polymorphism**

### **Polymorphism**

Polymorphism allows objects of different classes to be treated as objects of a common parent class (interface or abstract class).

### **Interfaces**

Interfaces define a contract that classes must follow.

🔹 **Example in PHP**



```php

interface Animal {
    public function makeSound();
}

class Cat implements Animal {
    public function makeSound() {
        return "Meow!";
    }
}

class Dog implements Animal {
    public function makeSound() {
        return "Bark!";
    }
}

function sound(Animal $animal) {
    echo $animal->makeSound();
}

sound(new Cat()); // Output: Meow!
sound(new Dog()); // Output: Bark!

```


## **4. PHP Traits**

Traits allow **code reuse** in PHP **without inheritance**. They are useful when multiple classes need the same functionality but are not directly related.

🔹 **Example in PHP**

```php
trait Logger {
    public function log($message) {
        echo "[LOG]: " . $message;
    }
}

class User {
    use Logger;
}

$user = new User();
$user->log("User logged in!"); // Output: [LOG]: User logged in!

```

## **Resources**

- [PHP OOP Documentation](https://www.php.net/manual/en/language.oop5.php)
- [Alan Kay on OOP](https://en.wikipedia.org/wiki/Alan_Kay)
- [PHP Traits](https://www.php.net/manual/en/language.oop5.traits.php)
