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
