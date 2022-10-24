# Introduction to Ruby 
Everything in Ruby is an Object. A pure programming language. Meant to give you a good time as you write in code. 

`www.ruby-lang.org/en/` official website.

`puts` short for put string. Prints out to the console. 

What's the `nil` returned underneath the string? Put string is a built in function. When you call it, it expects to return something. But the string doesn't return anything, so the return value is nil. Can also do `p "Hello World"` 

`p` does not return `nil`. It actually returns whatever the argument is that you give it. 

Another is `print`. `print` does not have a new line afterwards (unlike `puts`).

A string is basically textual data. 

Variable is a name we give with a reference to a spot of something in memory. 

Define a method to say hello, and the method will take in an argument 

Keyword `def` short for define. Space. Then method name. End keyword at the end. Whatever is within is the code. 

```ruby
def say_hello
  puts "Hello World"
end

say_hello
```

# Introduction to Ruby 
Ruby resource: [ruby-lang](www.ruby-lang.org)

To view current directory: `pwd` 

To create a directory: `mkdir directory_name` 

To move into a directory: `cd directory_name`

To list all directories and files within current directory: `ls`

To list all directories and files within the current directory including hidden files: `ls -a` 

To move out of a directory (1 level up the tree): `cd ..` 

To print hello world to the console or output: `puts "Hello World!"`

To run a ruby file from the command line, `ruby your_file_name.rb`

To create a variable called hello and print the value of hello:

```ruby
hello = "Hello World!"
puts hello
```
Structure of a method in Ruby:

```ruby
def methodname
  # contents of the method
end 
```

To write a method to say hello world: 

```ruby 
def say_hello
  puts "Hello World!"
end 
```

Then call the method by simply referencing the name: `say_hello`

Updated hello method:

```ruby
def say_hello(thing_to_say)
  puts thing_to_say
end
```

# Working with Strings: Part 1

Strings are defined by being put in double quotes `""`, or single quotes `''`

With single quotes, can't do string interpolation.

String interpolation, use the value of your variables within the string. Single quotes won't work, will just pring out the string itself `My first name is #{first_name} and my last name is #{last_name}`

Classes - can call `.class` on anything to see what it is. Can call it on `full_name.class` and see it's a String

Nil itself is nil. 

Pass by Value/Pass by reference. In Ruby, always think if a variable is pointing to another variable, it's actually pointing to the location in memory where that variable is pointing to. 

To escape the evaluation of #{variablename} within a String, prepend with a \:

`\#{variablename}`



# Working with Strings: Part 2 - Getting input from a user 

What if we want to prompt the user for their first name? 

Need to use `gets.chomp` 

```ruby
puts "What is your first name?"
first_name = gets.chomp
puts "Thank you, you said your first name is #{first_name}"
```

`gets.chomp` gets you a string

```ruby
puts "Enter a number to multiply by 2"
input = gets.chomp
puts input * 2 
# string concatenation 5 will return 55 "5" + "5"
```

Have to convert the input to a number or int. 

```ruby
puts "Enter a number to multiply by 2"
input = gets.chomp
puts input.to_i * 2 
```

```ruby
puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
```

Analyzer homework, making a file, analyzer.rb you want to have a program that asks 
Enter your first name
returns it 
Enter your last name
returns it
Your full name is ....
Your full name reversed is ....
Your name has _ characters in it. (skipping the space)

# Working with Numbers

Ctrl + L is how you go to the top of the screen in irb. 

Ruby drops the decimal with division. To do it correctly, have to convert one to a float. 

```ruby

10/4 
# 2

10.0 / 4
# 2.5

# Have to be careful
(10 / 4).to_f 
# 2.0 ... did the brackets first, didn't convert to a floating point number

"5" * "5" 
# (irb):1:in `*': no implicit conversion of String into Integer (TypeError)
# BUT, can do 
"5" * 2 
# 55

2 * "5"
# (irb)String can't be coerced into Integer (TypeError)

puts '-'*20
# --------------------

20.times { puts rand(10)} # rand is not inclusive of 0 - 9, not 1-10, rand random number between 0 and 1 unless specified

x = "5".to_i
```

# Comparison Operators 

When you're trying to compare 2 items.

```ruby
== 
!= 
>
<

10 == "10".to_f 
# true 10 and 10.0 are the same in Ruby
10 === "10"
# true 
10.eql?(10.0)
# false
# why?
```
`.eql?` is actually comparing the types, so an integer and a float are not the same. 

# Methods
When building our calculator, say it all done within the put statement itself. Not a good idea. Better to put it into a method.

In ruby, last evaluated statement is automatically returned. If it's the only expression, or the last, don't need to use a `return` statement. 

# Branching if/else conditionals 

```ruby
# if/else 

if true 
  # execute some code 
else 
  # execute some other code 
end 
```
Can do without the `else`. 

```ruby
# Most popular way to branch
name = "Evgeny"
if name == "Dani"
  puts "Welcome to the program, Dani"
elsif name == "Jack"
  puts "Welcome to the program, Jack"
elsif name == "Evgeny"
  puts "Go back to helping students Evgeny"
else 
  puts "Welcome to the program, User"
end
```

# Arrays and Iterators

`[]` 
- Anything within the brackets is an array. An ordered list of items. Each one can be anything, number, string, another array, hash, objects. 
- Maintains an index. (starts at 0)

# Hashes aka Dictionaries 

```ruby
sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
my_details = {'name' => 'dani', 'favcolor' => 'black'}
my_details['favcolor']
my_hash = {}
```

Everything's a string in the key value pairs. But rails also gives you a symbol. 

```ruby
another_hash = {a: 1, b: 2, c:3}
# {:a=>1, :b=>2, :c=>3}
```

Symbols are all over the place in rails. Ruby is smart enough to know we wanted a, b, and c to be symbols. `[:session], [:username]` all symbols. See them all over rails. 

# Ruby Style Guide

```ruby
this_is_snake_case # want to use for methods and variable assignment

also_snake_case

# ruby uses 2 spaces, not 4 of a tab automatic indentation
def my_name_is 
  # and my code is here
end

CamelCase 

camelCase 

class SomeClass
end
```

**Ruby Style Guide** [https://github.com/rubocop/ruby-style-guide)[https://github.com/rubocop/ruby-style-guide]

# Homework Project: Area Codes

Area code interactive little program.

# Practice what you have learnt

(Try Ruby)[https://try.ruby-lang.org/]

# Intro To Object Oriented Programming 

## Definition
OOP is a programming paradigm that uses objects and their interactions to design and porgram applications. 

EX:

**University** 
Student - to access the record, you pick out an individual student record and work with it. Limiting what the object can do, and you as the developer can set those parameters. 
-- students - first name, last name, email, student it 
Course 
-- courses - course name, course description, course id. 

An object in programming, is a "thing'. 
Thing <---> Object, created from a class 'blueprint'
- Features of the 'thing' <---> Attributes of the object, specified in class 

Student <---> class 
- First name, Last name, Username, Password (all attributes)

Course <---> class 
- course id, short name, name, description (attributes)

Creating a class: 
```ruby
class Student 
end
```

Work with instance variables inside classes. To create an object, you use the `new` keyword. 

Classes by default have a `to_s` method. Whenever you try to print out that class, it defaults to that method, and prints out whatever is there. 

# Attributes, Getters, and Setters


```ruby
   def first_name=(name)
        @first_name = name 
    end 

    def first_name 
        @first_name
    end 
```
Can go down this route creating setter and getter methods. But, much easier to just use attribute accesors which does it all for us. attribute accessors `attr_accessor` assigned using symbols. This method takes in these identities and makes them available. 


Initialize method run whenever you create a new class, and sets all the values. 
```ruby 
    def initialize(firstname, lastname, username, email, password)
      @first_name = firstname 
      @last_name = lastname
      @username = username 
      @email = email 
      @password = password 
    end
```

# Final Ruby Project: Classes, Modules, Mix ins - 1 - bcrypt

Passwords not stored in strings. Stored as hashed digests in the db. A popular hashing algorithm is MD5. bcrypt uses this, and adds in a salt to it, to hash passwords. Creates a hash digest of the string. 

`gem install bcrypt`

# Final Ruby Project: Classes, Modules, Mix ins - 2 - methods

Can't do this puts my_password == my_password_1 
Only way to verify is to know the actual password to get the hashed value. 
`puts my_password == "my password"`
So can create a method that uses this to come up wtih passwords.

```ruby 
def create_hash_digest(password)
    BCrypt::Password.create(password)
end 

new_password = create_hash_digest("password1")
puts new_password == 'password1' # true 
```

How can we create a verification method? 

```ruby
def verify_hash_digest(password)
    BCrypt::Password.new(password)
end
```

Creating a hash of the users and passwords: 
```ruby
def create_secure_users(list_of_users)
    # going through and creating a hash_digest of our users. 
  list_of_users.each do |user_record|
  user_record[:password] = create_hash_digest(user_record[:password])
  end  
  list_of_users
end 
```

This is all how a module can be used in Ruby. Say have 5 or 6 methods like this put together, name it CRUD, and use it as a toolkit for whatever program we're working with. Can include a module into a class by doing a mixin. And then use the methods in that module inside that class. Becomes the tools of that class. Think of modules as toolkits and it gives you different tools for the things to use. 

# Final Ruby Project: Classes, Modules, Mix ins - 3 - methods

Need a way to authenticate the user. Anticipating we'll get a username, and a password we need to authenticate it. Will get a hash password, and have to authenticate it.

```ruby 
def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    # if we have the username matching, and then the verified hash digest of the password equals the password sent in... 
    if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password 
      return user_record 
    end 
  end 
  "Credentials were not correct"
end
```

To convert it to a module, say `module Crud` and `end`

```ruby
module Crud 
  require 'bcrypt'
  puts "Module CRUD activated"

  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end 

  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(list_of_users)
      # going through and creating a hash_digest of our users. 
    list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
    end  
    list_of_users
  end 

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password 
        return user_record 
      end 
    end 
    "Credentials were not correct"
  end
end 
```

Then `require_relative 'crud'` in main.rb.

```ruby
# will also work
$LOAD_PATH << "."
require 'crud'
```

Except when running in main.rb, it doesn't work. Put `Crud.` in front of all method names in `crub.rb` then run the methods by calling `Crud.create_secure_users(users)`. That will not cause errors. Better to use the class mixin. 

# 'self' notation for method names

In last video, directly called the module `Crud` and the method in it. Called it by the module name, then the method name. Can similarly use `self.` for all of them.

This type of notation when used in classes, called a class method. Does not require an instance of an object to make this method work. Can directly call it, by calling the name of the class or the module in this case. Will see methods like this that will be used at class level. 

Instance methods however, will go for next. Just the method associated with an object of a class.