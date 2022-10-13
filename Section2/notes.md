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