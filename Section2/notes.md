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