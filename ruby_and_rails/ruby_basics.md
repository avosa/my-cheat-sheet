# Ruby Basics 

In Ruby everything is an `object`.
We can call `methods` on these objects. When such, the object is the `receiver`.

## Built-in Objects

There are seven datatypes in Ruby, which are built-in objects in Ruby.

```ruby
"Sponge Bob".class              #=> String
12.class                        #=> Integer
3.14.class                      #=> Float
["Sponge Bob", 12, 3.14].class  #=> Array
(1..100).class                  #=> Range
true.class                      #=> TrueClass
false.class                     #=> FalseClass
```

### String

- **Interpolation**

```ruby
'two: #{1 + 1}'      #=> "two: #{1 + 1}"
"two: #{1 + 1}"      #=> "two: 2"
```

### Array

```ruby
# literal 
['Sponge Bob', 12, 3.14]
# shortcut for array of strings
%w[Huey Dewey Louie]
%w(Huey Dewey Louie)
```

### Hash

```ruby
# list of key-value pairs between braces
{ 
  "red" => 0xf00, 
  "green" => 0x0f0,
  "blue" => 0x00f 
}
```

## Special values

- `false`, `true`, `nil`

## Variables

- *What are variables?*<br>
A `variable` is a container and memory location of some data (set of `bits` of `type of data`).<br>
This name of variable is the reference to the stored `value`.<br>
We store values in variables so we can reuse them.<br>

- *What are the different variables in your program?*<br>
The difference between variable types is in their scope.
    - **global variable** - have global scope, meaning they are available anywhere in a program, and are for example accessible by different classes<br>
      (prefixed with '$')
    - **local variable** -  only accessible within the block of its initialization<br>
      (prefixed with a lowercase letter || '_') - `name = "Beatriz" || _Name = "Beatriz"`
    - **class variables** - belongs to a class and it's available across different objects<br>
      (prefixed with '@@')
    - **instance variable** - its values are only available to specific instances of an object<br>
      (prefixed with '@') - `@name = "Beatriz"`
    - **constant** - are accessible within the scope of initialisation<br>
      (capital letters) - `APPLE = "Apple"`
<br>
> class varibles and constants need to be initialised and if they are not, it will result in an error.<br>
> local and instance variables don't have to be initialised, when uninitialised an instance varaible contains a `nil` value.<br>
> uninitialized global variable has a `nil` value and its use can cause the programs to be cryptic and complex.

- *What does “defining a variable” mean? What’s the syntax to define a variable?*<br>
You define a variable at the same time you assign it's value

- *What’s the proper convention for naming variables in Ruby?*<br>
    - `snake_case` when name contains multiple words;
    - all in lowercase;
    - not begin with the special characters *(like e.g. & (ampersand), $ (dollar))*;
    - Avoid one-character variables *(e.g. a, b)*;
    - Clear and descriptive variable names without abbreviations are preferred
<br>
<br>
- *What is variable assignation?*<br>
You assign a value to a variable with the following sytax:
```ruby
city = "Paris"
population = 2000000
```

- *Can we assign a new value to a variable already defined? How?*<br>
The identifier can be bound to a value during run time, and the value of the variable may change during the course of program execution.

```ruby
some_number = 1
some_number = some_number * 2
```

## Methods

- *What is a method?*<br> 

- *What are the methods in your program?*<br>
Methods called `instance methods`, can only be called on instances of the class.

- *What is method definition?*<br>

- *What is a method call?*<br>

- *What’s the difference between defining a method and calling a method?*<br>

- *What’s the return value of a method?*<br>

- *What is the simple Ruby convention for a method’s return?*<br>

## require_relative

`require_relative` loads a file on another file
the suffix `_relative` provides the path relative to the corrent location (file)