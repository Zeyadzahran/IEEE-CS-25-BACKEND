# task 1
## Who Invented OOP and Why ?

Object-Oriented Programming (OOP) was first introduced by **Alan Kay** in the 1960s while working on the **Smalltalk** programming language at Xerox PARC. However, the concept was influenced by earlier work on **Simula** (developed by Ole-Johan Dahl and Kristen Nygaard).

## Why was OOP invented ?

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
}
```



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

---
# Task  2 


### **Late Static Binding & How It Works**

Late Static Binding (LSB) in PHP is used to refer to the _called_ class in a static inheritance context, rather than the class where the method is defined. This allows child classes to override static methods while still being referenced correctly in parent class methods.

#### **How It Works**

- PHP normally resolves static method calls using _early binding_, meaning it references the class where the method is defined.
    
- With `static::` instead of `self::`, PHP defers the method call resolution until runtime, allowing overridden static methods in child classes to be properly invoked.

```php
class ParentClass {
    public static function who() {
        echo __CLASS__;
    }
    
    public static function call() {
        static::who(); // Late Static Binding
    }
}

class ChildClass extends ParentClass {
    public static function who() {
        echo __CLASS__;
    }
}

ChildClass::call(); // Output: ChildClass (instead of ParentClass)

```


### **Using OOP with MySQL (PDO & MySQLi)**

Object-Oriented Programming (OOP) in PHP can be used to interact with MySQL databases using **PDO (PHP Data Objects)** and **MySQLi**.

#### **PDO (PHP Data Objects)**

- Works with multiple database types (MySQL, PostgreSQL, SQLite, etc.).
    
- Uses prepared statements to prevent SQL injection.

```php
class Database {
    private $pdo;

    public function __construct($dsn, $user, $password) {
        try {
            $this->pdo = new PDO($dsn, $user, $password);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            die("Connection failed: " . $e->getMessage());
        }
    }

    public function query($sql, $params = []) {
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}

$db = new Database("mysql:host=localhost;dbname=test", "root", "");
$result = $db->query("SELECT * FROM users WHERE id = ?", [1]);

```


#### **MySQLi (Object-Oriented)**

- Only works with MySQL.

```php
class Database {
    private $mysqli;

    public function __construct($host, $user, $password, $dbname) {
        $this->mysqli = new mysqli($host, $user, $password, $dbname);
        if ($this->mysqli->connect_error) {
            die("Connection failed: " . $this->mysqli->connect_error);
        }
    }

    public function query($sql, $params = []) {
        $stmt = $this->mysqli->prepare($sql);
        if (!empty($params)) {
            $stmt->bind_param(str_repeat("s", count($params)), ...$params);
        }
        $stmt->execute();
        return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
    }
}

$db = new Database("localhost", "root", "", "test");
$result = $db->query("SELECT * FROM users WHERE id = ?", [1]);

```

### **Factory Pattern**

The **Factory Pattern** is a creational design pattern used to create objects without specifying the exact class type. This is useful for managing different types of database connections, objects, etc.

```php
class User {
    public function __construct() {
        echo "User created!";
    }
}

class Product {
    public function __construct() {
        echo "Product created!";
    }
}

class Factory {
    public static function create($type) {
        if ($type === "user") {
            return new User();
        } elseif ($type === "product") {
            return new Product();
        }
        throw new Exception("Invalid type");
    }
}

$user = Factory::create("user"); // Output: User created!
$product = Factory::create("product"); // Output: Product created!

```

### **Anonymous Classes**

Anonymous classes are classes without a name. They are useful for one-time use or small operations that don’t need full class definitions.

```php
$object = new class {
    public function sayHello() {
        return "Hello from an anonymous class!";
    }
};

echo $object->sayHello();

```

### **MVC Architecture**

**Model-View-Controller (MVC)** is a design pattern that separates an application into three components:

1. **Model** – Handles data and business logic.
    
2. **View** – Handles UI and presentation.
    
3. **Controller** – Handles input and updates the model or view.


Model (User.php)
```php
class User {
    private $db;
    
    public function __construct($db) {
        $this->db = $db;
    }

    public function getUser($id) {
        return $this->db->query("SELECT * FROM users WHERE id = ?", [$id]);
    }
}

```

**Controller (UserController.php)**

```php
class UserController {
    private $userModel;

    public function __construct($userModel) {
        $this->userModel = $userModel;
    }

    public function showUser($id) {
        $user = $this->userModel->getUser($id);
        require "views/userView.php";
    }
}

```

View (userView.php)

```html
<!DOCTYPE html>
<html>
<body>
    <h1>User Information</h1>
    <p>Name: <?= $user[0]['name']; ?></p>
</body>
</html>

```


### **Resources**

1. [PHP Late Static Binding](https://www.php.net/manual/en/language.oop5.late-static-bindings.php)
    
2. [PHP PDO Documentation](https://www.php.net/manual/en/book.pdo.php)
    
3. [MySQLi Documentation](https://www.php.net/manual/en/book.mysqli.php)
    
4. [Factory Pattern in PHP](https://refactoring.guru/design-patterns/factory-method/php/example)
    
5. [The MVC Pattern and PHP](https://www.sitepoint.com/the-mvc-pattern-and-php-1/)