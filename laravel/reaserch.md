## Request Lifecycle in Laravel

1. **Entry Point: `public/index.php`**
   - Every request enters the app via this file.

2. **Load Autoloader**
   - Composer’s autoload file is loaded (`vendor/autoload.php`) so all classes can be used.

3. **Bootstrap the Framework**
   - `bootstrap/app.php` creates the application instance and prepares services.

4. **Run Kernel**
   - Either `Http\Kernel` (for web requests) or `Console\Kernel` (for CLI).
   - The kernel handles HTTP middlewares (global and route-specific).

5. **Handle Request**
   - Middlewares process the request (authentication, CSRF protection…).

6. **Route the Request**
   - Laravel uses the Router to match the URL and HTTP method to a route.

7. **Execute Controller / Closure**
   - The matched route calls a controller method or a closure.

8. **Send Response**
   - The controller returns a response, which goes back through middlewares (if needed).

9. **Terminate Middlewares**
   - After response is sent, Laravel runs any terminating middleware.

[Request Lifecycle - Laravel 11.x - The PHP Framework For Web Artisans](https://laravel.com/docs/11.x/lifecycle)

---

## Routing in Laravel

**Routing** connects HTTP requests to controller methods or closures.

### Types of Routes:

- *Basic GET*
```php
Route::get('/home', function () {
    return 'Hello World';
});
```

- *Route to Controller*

```php
Route::get('/user/{id}', [UserController::class, 'show']);
```

- *Route Groups (with middleware, prefix, namespace)*

```php
Route::prefix('admin')->group(function () {
    Route::get('/dashboard', [AdminController::class, 'index']);
});

```

-  *Named Routes*

```php
Route::get('/profile', [ProfileController::class, 'index'])->name('profile');
```

[Routing - Laravel 11.x - The PHP Framework For Web Artisans](https://laravel.com/docs/11.x/routing)


---

## Facades in Laravel

A **Facade** is a class providing a “static” interface to underlying classes in the service container.

### Example:

```php

use Illuminate\Support\Facades\Cache;

Cache::put('key', 'value', 600);
$value = Cache::get('key');
```

**Why Use Them?**

- Clean, readable syntax
    
- Access to services without needing to manually resolve them via dependency injection.
    

**How It Works:**

- Facades resolve the underlying class instance via Laravel’s service container.
    
- You can find all facades in `Illuminate\Support\Facades`.
    

**Custom Facade:**

1. Create your class.
    
2. Register it in the service container.
    
3. Create a facade class extending `Facade`.
    
4. Define a `getFacadeAccessor()` method returning the binding key.

[Facades - Laravel 11.x - The PHP Framework For Web Artisans](https://laravel.com/docs/11.x/facades)


## 1. Blade Templates — and how they work

### What is Blade?

**Blade** is Laravel’s built-in **template engine**.  
It allows you to write **HTML** pages mixed with **PHP logic** easily and cleanly.

Instead of writing messy PHP in your HTML files, Blade gives you **special syntax** to keep things **organized**, **readable**, and **powerful**.

---

### How Blade works:

- Blade files have **`.blade.php`** extension.  
    Example: `resources/views/welcome.blade.php`
    
- Blade provides **directives** like:
    
    - `@if`, `@foreach`, `@extends`, `@section`, `@yield`, `@include`, etc.
        
- When you load a Blade view, Laravel **compiles** it into pure **PHP** and caches it for faster performance.
    
- **Variables** in Blade are displayed like:

```php
Hello, {{ $name }}
```

- **Blade layouts** allow you to make a **master template** and then extend it in other pages.
    

---

### Example:

**Master Layout (`layouts/app.blade.php`)**

```php
<html>
<head>
    <title>My App - @yield('title')</title>
</head>
<body>
    @yield('content')
</body>
</html>
```

Child Page (`home.blade.php`)
```php
@extends('layouts.app')

@section('title', 'Home Page')

@section('content')
    <h1>Welcome Home!</h1>
@endsection
```

Result when loaded: a full HTML page!

### Why Use Blade :

- Clean and simple syntax
    
- Easy to **re-use** components
    
- Built-in **security**: automatically escapes variables (prevents XSS)
    
- Fast (because Blade compiles to PHP)

[Blade Templates - Laravel 12.x - The PHP Framework For Web Artisans](https://laravel.com/docs/12.x/blade)

---
## 2. What is ORM, and why is it useful?

### What is ORM?

**ORM** = **Object Relational Mapping**

It’s a way to **interact with the database** using **objects** instead of writing raw SQL queries.

In Laravel, the ORM is called **Eloquent**.

---

### Example:

Without ORM (normal SQL):

```php
$sql = "SELECT * FROM users WHERE id = 1";
```

With Eloquent ORM:
```php
$user = User::find(1);
```

**`User`** is now an **object** representing a database row.  
You can do things like `$user->name` instead of dealing with raw arrays!

### Why ORM is so useful:

- **Cleaner code**: No need to write raw SQL for basic operations
    
- **Safer**: Protects against SQL injection automatically
    
- **Easier relationships**: One-to-Many, Many-to-Many, etc. are simple
    
- **Faster development**: Less code to maintain
    
- **Eloquent methods** are easy to chain (`User::where('active', true)->get();`)

[Eloquent: Getting Started - Laravel 12.x - The PHP Framework For Web Artisans](https://laravel.com/docs/12.x/eloquent)

---
## **Attaching, Syncing, Detaching Related Records (Many-to-Many)**

Eloquent provides methods to manage pivot table data easily.

####  Attaching

```php
$user->roles()->attach($roleId);
```

You can also attach with extra pivot data:

```php
$user->roles()->attach($roleId, ['expires_at' => now()->addDays(10)]);
```

#### Syncing

Replace current roles with new ones:


```php
$user->roles()->sync([1, 2, 3]);
```

####  Detaching

Remove one or all roles:

```php
$user->roles()->detach($roleId); // specific
$user->roles()->detach();        // all

```

## **The N+1 Query Problem**

This happens when you run one query to get a list of models, then another for each item’s related model.

**Example (bad):**


```php
$users = User::all(); // One query
foreach ($users as $user) { 
	echo $user->profile->bio; // One query per user (N queries)
}

```


####  Solution: Eager Loading

Use `with()` to fetch related data in one query:


```php
$users = User::with('profile')->get(); // Only two queries in total
```

---
