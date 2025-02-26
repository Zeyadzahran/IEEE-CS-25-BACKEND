## **1️ What is PHP?**

PHP (**Hypertext Preprocessor**) is a **server-side scripting language** used for creating **dynamic web applications**. It runs on the server and generates HTML to be sent to the client’s browser. PHP is widely used for **database interactions, session management, and web development**.

🔹 **Key Features:**

- Open-source and widely used.
- Works with MySQL and other databases.
- Supports Object-Oriented Programming (OOP).
- Can handle form data, cookies, and sessions.


PHP هي **لغة برمجة بتشتغل على السيرفر**، وبتساعد في **إنشاء مواقع وتطبيقات ويب ديناميكية**. بتتعامل مع قواعد البيانات، وبتدعم البرمجة الكائنية (OOP) وبتشتغل مع ملفات HTML.


 [PHP Official Website](https://www.php.net/)

---

## **2️ What Are the Three Main Error Types in PHP?**

1. **Parse Error (Syntax Error)** – Happens when there's a syntax mistake, like a missing semicolon (`;`).
	``echo "Hello World" // Missing semicolon → Parse error``
        
2. **Fatal Error** – Happens when PHP **cannot continue execution**, like calling an undefined function.

	``myFunction(); // Fatal error: function not defined``
		
3. **Warning/Error Notice** – Non-fatal errors that don't stop script execution but indicate potential problems.
		``echo $name; // Notice: Undefined variable $name``    


 **3 أنواع أخطاء في PHP:**  
**خطأ تحليل (Parse Error)** → لما يكون فيه مشكلة في التركيب زي نسيان `;`.  
 **خطأ قاتل (Fatal Error)** → لما تنادي دالة مش موجودة.  
 **تحذير أو إشعار (Warning/Notice)** → لما تستخدم متغير مش متعرف.


🔗 [PHP Error Handling](https://www.php.net/manual/en/errorfunc.constants.php)

---

## **3️ echo vs print in PHP**

Both `echo` and `print` output data in PHP, but they have some differences:

|Feature|`echo`|`print`|
|---|---|---|
|**Usage**|Can output multiple values|Outputs only one value|
|**Return Value**|No return value|Returns `1` (useful in expressions)|
|**Speed**|Faster|Slightly slower|
|**Example**|`echo "Hello", " World";`|`$result = print "Hello";`|

 **Best Practice:** Use `echo` for better performance.


 **الفرق بين `echo` و `print` في PHP:**

- `echo` أسرع وبيقدر يطبع أكتر من قيمة مع بعض.
- `print` أبطأ شوية لأنه بيرجع `1`، لكنه مفيد لو عايز تستخدمه داخل تعبير (expression).

[PHP Echo and Print Statements](https://www.w3schools.com/php/php_echo_print.asp)

---

## **4️ Sensitivity in PHP 

PHP **is case-sensitive for variables** but **not case-sensitive for functions and keywords**.

 **Case-sensitive example (Variables)**
```php
$name = "Zeyad";
echo $Name; // Error: Undefined variable

```

Here, `$name` and `$Name` are different variables.

 **Not case-sensitive example (Functions & Keywords)**
 ```php
 ECHO "Hello"; // Works fine

```

`echo`, `ECHO`, and `EcHo` all work the same.

 **Best Practice:** Always use consistent **lowercase** naming for functions and keywords to improve code readability.


📌 **الحساسية في PHP:**

- **المتغيرات حساسة للحروف الكبيرة والصغيرة**، يعني `$name` مختلف عن `$Name`.
- **الدوال والكلمات المحجوزة مش حساسة**، يعني `echo` و `ECHO` بيشتغلوا بنفس الطريقة.

 [PHP Case Sensitivity](https://www.php.net/manual/en/language.types.string.php)
