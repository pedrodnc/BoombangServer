# Testing Documentation

This document provides comprehensive information about the testing suite for the BoomBang Server Laravel application.

## Table of Contents

1. [Overview](#overview)
2. [Test Environment Setup](#test-environment-setup)
3. [Running Tests](#running-tests)
4. [Test Structure](#test-structure)
5. [Writing New Tests](#writing-new-tests)
6. [Continuous Integration](#continuous-integration)
7. [Coverage Reports](#coverage-reports)
8. [Best Practices](#best-practices)
9. [Troubleshooting](#troubleshooting)

## Overview

The BoomBang Server testing suite includes comprehensive tests for the permissions system, authentication, and core functionality. The suite is built using PHPUnit and Laravel's testing framework.

### Test Statistics

- **Total Test Files**: 5
- **Feature Tests**: 3 (PermissionsTest, AuthenticationTest, RoutesTest)
- **Unit Tests**: 2 (UserTest, MiddlewareTest)
- **Database**: SQLite in-memory (for speed and isolation)

### What's Tested

- User account types (web, launcher, admin)
- Permission middleware functionality
- Session expiration for web users
- Trading and private chat restrictions
- Premium access control
- Authentication flows
- Route protection and middleware chains
- User model methods
- Middleware logic and responses

## Test Environment Setup

### Prerequisites

- PHP 7.3 or higher (with PHP 8.0+ recommended)
- Composer installed
- SQLite extension enabled for PHP

### Configuration

The test environment is configured in `phpunit.xml`:

```xml
<php>
    <server name="APP_ENV" value="testing"/>
    <server name="BCRYPT_ROUNDS" value="4"/>
    <server name="CACHE_DRIVER" value="array"/>
    <server name="DB_CONNECTION" value="sqlite"/>
    <server name="DB_DATABASE" value=":memory:"/>
    <server name="MAIL_MAILER" value="array"/>
    <server name="QUEUE_CONNECTION" value="sync"/>
    <server name="SESSION_DRIVER" value="array"/>
    <server name="TELESCOPE_ENABLED" value="false"/>
</php>
```

Key points:
- Uses SQLite in-memory database (`:memory:`) for fast, isolated tests
- Reduces bcrypt rounds to 4 for faster password hashing in tests
- Uses array drivers for cache, mail, and session to avoid external dependencies
- All tests run in the `testing` environment

### Database Setup

Tests use the `RefreshDatabase` trait, which:
1. Migrates a fresh database before each test
2. Rolls back all changes after each test
3. Ensures complete test isolation

No manual database setup is required!

## Running Tests

### Run All Tests

```bash
# From the project root
php artisan test

# Or using PHPUnit directly
./vendor/bin/phpunit
```

### Run Specific Test Suites

```bash
# Run only Feature tests
php artisan test --testsuite=Feature

# Run only Unit tests
php artisan test --testsuite=Unit
```

### Run Specific Test Files

```bash
# Run a specific test file
php artisan test tests/Feature/PermissionsTest.php

# Run with PHPUnit
./vendor/bin/phpunit tests/Feature/PermissionsTest.php
```

### Run Specific Test Methods

```bash
# Run a single test method
php artisan test --filter test_web_user_cannot_access_launcher_features

# With PHPUnit
./vendor/bin/phpunit --filter test_web_user_cannot_access_launcher_features
```

### Run Tests in Docker

If using Docker for your Laravel application:

```bash
# Enter the Laravel container
docker-compose exec app bash

# Run tests inside the container
php artisan test

# Or run directly from host
docker-compose exec app php artisan test
```

### Verbose Output

```bash
# Show detailed test information
php artisan test --verbose

# Show even more details with PHPUnit
./vendor/bin/phpunit --verbose --debug
```

## Test Structure

### Directory Structure

```
tests/
├── Feature/
│   ├── AuthenticationTest.php    # Login, logout, authentication flows
│   ├── PermissionsTest.php       # Permission system, middleware, access control
│   └── RoutesTest.php            # Route protection, middleware chains
├── Unit/
│   ├── MiddlewareTest.php        # CheckAccountPermissions middleware logic
│   └── UserTest.php              # User model methods and properties
├── CreatesApplication.php
└── TestCase.php
```

### Feature Tests

Feature tests verify complete user-facing functionality:

**PermissionsTest.php** (13 tests)
- Web user restrictions
- Launcher user access
- Admin access
- Session expiration handling
- Trade, private chat, and premium permissions
- Middleware responses (401, 403)

**AuthenticationTest.php** (14 tests)
- Login with valid/invalid credentials
- Logout functionality
- Authentication guards
- Session creation for different user types
- Failed login attempts
- Route access control

**RoutesTest.php** (17 tests)
- Public route access
- Protected route authentication
- Middleware chain execution
- Session extension on activity
- HTTP method handling
- Route name resolution

### Unit Tests

Unit tests verify individual components in isolation:

**UserTest.php** (26 tests)
- Account type checking methods (isWebUser, isLauncherUser, isAdmin)
- Permission checking (canTrade, canUsePrivateChat, hasPremiumAccess)
- Session management (hasSessionExpired, extendSession)
- Account type constants
- Model attributes and casting
- Factory states

**MiddlewareTest.php** (19 tests)
- CheckAccountPermissions middleware logic
- Session validation and extension
- Permission validation (launcher, admin, trade, private_chat, premium)
- Error response formats
- Edge cases and unknown permissions

## Writing New Tests

### Test Naming Convention

Follow Laravel conventions for test method names:

```php
public function test_descriptive_name_of_what_is_being_tested()
{
    // Test code
}
```

Examples:
- `test_web_user_cannot_access_launcher_features`
- `test_login_with_valid_credentials`
- `test_middleware_extends_web_user_sessions`

### Creating a New Feature Test

```php
<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class MyNewFeatureTest extends TestCase
{
    use RefreshDatabase;

    public function test_my_new_feature_works()
    {
        // Arrange: Set up test data
        $user = User::factory()->webUser()->create();

        // Act: Perform the action
        $response = $this->actingAs($user)->get('/my-route');

        // Assert: Verify the results
        $response->assertStatus(200);
    }
}
```

### Creating a New Unit Test

```php
<?php

namespace Tests\Unit;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class MyNewUnitTest extends TestCase
{
    use RefreshDatabase;

    public function test_my_method_returns_expected_value()
    {
        // Arrange
        $user = User::factory()->create(['account_type' => 'web']);

        // Act
        $result = $user->someMethod();

        // Assert
        $this->assertEquals('expected', $result);
    }
}
```

### Using Factories

The UserFactory provides convenient states:

```php
// Create different user types
$webUser = User::factory()->webUser()->create();
$launcherUser = User::factory()->launcherUser()->create();
$adminUser = User::factory()->admin()->create();

// Create premium users
$premiumUser = User::factory()->webUser()->premium()->create();

// Create web user with expired session
$expiredUser = User::factory()->webUserExpired()->create();

// Create multiple users
$users = User::factory()->count(5)->webUser()->create();

// Combine states
$premiumLauncher = User::factory()->launcherUser()->premium()->create();
```

### Testing HTTP Responses

```php
// Test status codes
$response->assertStatus(200);
$response->assertStatus(401);
$response->assertStatus(403);

// Test redirects
$response->assertRedirect('/login');

// Test JSON responses
$response->assertJson([
    'success' => true,
    'data' => ['key' => 'value']
]);

// Test JSON structure
$response->assertJsonStructure([
    'success',
    'data' => ['key']
]);

// Test views
$response->assertViewIs('game');
$response->assertViewHas('user');
```

### Testing Authentication

```php
// Act as authenticated user
$this->actingAs($user)->get('/protected-route');

// Assert user is authenticated
$this->assertAuthenticated();

// Assert user is guest
$this->assertGuest();

// Assert authenticated as specific user
$this->assertAuthenticatedAs($user);
```

### Testing Database

```php
// Assert database has record
$this->assertDatabaseHas('users', [
    'email' => 'test@example.com',
    'account_type' => 'web'
]);

// Assert database missing record
$this->assertDatabaseMissing('users', [
    'email' => 'deleted@example.com'
]);

// Assert database count
$this->assertDatabaseCount('users', 5);
```

### Mocking Routes for Tests

Sometimes you need to test middleware on custom routes:

```php
$this->app['router']->get('/test-route', function () {
    return response()->json(['success' => true]);
})->middleware(['auth', 'account.permissions:launcher']);

$response = $this->actingAs($user)->getJson('/test-route');
```

## Continuous Integration

### GitHub Actions Example

Create `.github/workflows/tests.yml`:

```yaml
name: Tests

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main, develop ]

jobs:
  tests:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2

    - name: Setup PHP
      uses: shivammathur/setup-php@v2
      with:
        php-version: '8.0'
        extensions: mbstring, sqlite3
        coverage: xdebug

    - name: Install Dependencies
      run: composer install --no-interaction --prefer-dist --optimize-autoloader

    - name: Copy Environment File
      run: php -r "file_exists('.env') || copy('.env.example', '.env');"

    - name: Generate Application Key
      run: php artisan key:generate

    - name: Run Tests
      run: php artisan test --parallel

    - name: Upload Coverage
      uses: codecov/codecov-action@v2
      with:
        files: ./coverage.xml
```

### GitLab CI Example

Create `.gitlab-ci.yml`:

```yaml
test:
  image: php:8.0
  before_script:
    - apt-get update -yqq
    - apt-get install -yqq git unzip libpq-dev sqlite3 libsqlite3-dev
    - curl -sS https://getcomposer.org/installer | php
    - php composer.phar install
    - cp .env.example .env
    - php artisan key:generate
  script:
    - php artisan test
```

### Docker CI Example

In your `docker-compose.yml` for CI:

```yaml
services:
  app:
    build:
      context: .
      dockerfile: Dockerfile
    environment:
      - APP_ENV=testing
      - DB_CONNECTION=sqlite
      - DB_DATABASE=:memory:
    command: php artisan test
```

## Coverage Reports

### Generate Coverage Report

```bash
# Generate HTML coverage report
./vendor/bin/phpunit --coverage-html coverage

# Generate Clover XML (for CI tools)
./vendor/bin/phpunit --coverage-clover coverage.xml

# Generate text coverage report
./vendor/bin/phpunit --coverage-text
```

### View Coverage in Browser

After generating HTML coverage:

```bash
# Open the coverage report
open coverage/index.html  # macOS
xdg-open coverage/index.html  # Linux
start coverage/index.html  # Windows
```

### Coverage Requirements

Add to `phpunit.xml` to enforce coverage thresholds:

```xml
<coverage>
    <include>
        <directory suffix=".php">./app</directory>
    </include>
    <report>
        <html outputDirectory="coverage"/>
    </report>
</coverage>
```

## Best Practices

### 1. Test Independence

Each test should be independent and not rely on other tests:

```php
// Good: Each test creates its own data
public function test_feature_a()
{
    $user = User::factory()->create();
    // Test feature A
}

public function test_feature_b()
{
    $user = User::factory()->create();
    // Test feature B
}

// Bad: Tests depend on execution order
public function test_create_user()
{
    $this->user = User::factory()->create();
}

public function test_update_user()
{
    $this->user->update(['name' => 'New Name']); // Assumes previous test ran
}
```

### 2. Arrange-Act-Assert Pattern

Structure tests clearly:

```php
public function test_something()
{
    // Arrange: Set up test conditions
    $user = User::factory()->webUser()->create();

    // Act: Perform the action being tested
    $result = $user->canTrade();

    // Assert: Verify the expected outcome
    $this->assertFalse($result);
}
```

### 3. Test Both Positive and Negative Cases

```php
// Test the happy path
public function test_launcher_user_can_trade()
{
    $user = User::factory()->launcherUser()->create();
    $this->assertTrue($user->canTrade());
}

// Test the failure case
public function test_web_user_cannot_trade()
{
    $user = User::factory()->webUser()->create();
    $this->assertFalse($user->canTrade());
}
```

### 4. Use Descriptive Test Names

```php
// Good: Clear what is being tested
public function test_expired_session_returns_401_error()

// Bad: Unclear what is being tested
public function test_session()
```

### 5. Keep Tests Fast

- Use SQLite in-memory database
- Minimize external dependencies
- Use factories instead of manual creation
- Avoid unnecessary `sleep()` or `wait()` calls

### 6. Test Edge Cases

```php
public function test_session_exactly_at_expiration_time()
{
    $user = User::factory()->create([
        'session_expires_at' => now()
    ]);

    // Test boundary condition
}
```

### 7. Use Setup and Teardown When Appropriate

```php
protected function setUp(): void
{
    parent::setUp();
    // Common setup for all tests in this class
}

protected function tearDown(): void
{
    // Common cleanup
    parent::tearDown();
}
```

### 8. Don't Test Framework Code

Focus on your application logic, not Laravel's built-in functionality:

```php
// Good: Tests your business logic
public function test_user_can_trade_based_on_account_type()
{
    $user = User::factory()->webUser()->create();
    $this->assertFalse($user->canTrade());
}

// Bad: Tests Laravel's factory functionality
public function test_factory_creates_user()
{
    $user = User::factory()->create();
    $this->assertInstanceOf(User::class, $user);
}
```

### 9. Mock External Dependencies

```php
// Mock external APIs, services, etc.
$mock = $this->mock(ExternalService::class);
$mock->shouldReceive('getData')->andReturn(['data']);
```

## Troubleshooting

### Issue: Tests Fail with "Database not found"

**Solution**: Ensure SQLite extension is enabled:

```bash
# Check if SQLite is enabled
php -m | grep sqlite

# Install SQLite for PHP if needed
# Ubuntu/Debian
sudo apt-get install php-sqlite3

# macOS (with Homebrew)
brew install php
```

### Issue: Memory Limit Exceeded

**Solution**: Increase PHP memory limit for tests:

```bash
php -d memory_limit=512M artisan test
```

Or in `phpunit.xml`:

```xml
<php>
    <ini name="memory_limit" value="512M"/>
</php>
```

### Issue: Tests Run Slowly

**Solutions**:
1. Reduce bcrypt rounds (already set to 4 in config)
2. Use parallel testing:
   ```bash
   php artisan test --parallel
   ```
3. Run only changed tests during development
4. Use SQLite in-memory (already configured)

### Issue: "Class not found" Errors

**Solution**: Regenerate autoload files:

```bash
composer dump-autoload
```

### Issue: Persistent Test Failures

**Solution**: Clear all caches:

```bash
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear
composer dump-autoload
```

### Issue: Session/Cookie Issues in Tests

**Solution**: Ensure you're using `actingAs()` for authenticated requests:

```php
// Correct
$this->actingAs($user)->get('/protected');

// Incorrect (won't work in tests)
Auth::login($user);
$this->get('/protected');
```

### Issue: Middleware Not Running in Tests

**Solution**: Ensure middleware is registered and you're not using `withoutMiddleware()`:

```php
// Check that middleware is applied
$response = $this->actingAs($user)->get('/route');

// Don't use withoutMiddleware unless explicitly testing without middleware
// $this->withoutMiddleware()->get('/route');
```

## Additional Resources

- [Laravel Testing Documentation](https://laravel.com/docs/8.x/testing)
- [PHPUnit Documentation](https://phpunit.de/documentation.html)
- [Laravel Factories](https://laravel.com/docs/8.x/database-testing#defining-model-factories)
- [HTTP Tests](https://laravel.com/docs/8.x/http-tests)
- [Database Testing](https://laravel.com/docs/8.x/database-testing)

## Contributing

When adding new features:

1. Write tests first (TDD approach recommended)
2. Ensure all existing tests pass
3. Add new tests for new features
4. Update this documentation if needed
5. Run coverage report to ensure adequate coverage

## Questions?

If you have questions about testing:
1. Check this documentation
2. Review existing test files for examples
3. Consult Laravel testing documentation
4. Ask the development team

---

**Last Updated**: 2025-11-24
**Test Suite Version**: 1.0
**Laravel Version**: 8.75
