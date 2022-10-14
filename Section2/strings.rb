sentence1 = "My name is Hank"
sentence = 'My name is Dani'
# p sentence

# String concatenation 
first_name = "Dani"
last_name = "Schuhman"

puts first_name + " " + last_name

# String interpolation 
# puts "My first name is Dani and my last name is Schuhman"
puts "My first name is #{first_name} and my last name is #{last_name}"

full_name = first_name + last_name
puts full_name

# Or
full_name = "#{first_name} #{last_name}"

#irb for ruby in terminal. 

# Methods, how to find them
# Can call .class on things to see what type they are
full_name.class
# String 
"Dani".class 
# String
10.class
# Int 

first_name.methods 
# will return everything that's available by default

10.to_s.class # method chaining
# String 

"".nil?
# false 

nil.nil?
# true 

# Common methods 
sentence = "Welcome to the jungle"

sentence.sub("the jungle", "utopia") # subgstitute, gsub is global substitute
# "Welcome to utopia"

# Variable assignment 

first_name = "Dani"
new_first_name = first_name 
new_first_name 
# Dani
first_name = "Hank"
new_first_name 
# Dani
first_name 
# Hank

# Points to the variable, not what it's assigned to. 

# Escaping

'the new first name is #{new_first_name}' # won't work 
# "the new first name is \#{new_first_name}" 

# backslash means escape the special character that immediately follows it. 

'Dani asked 'Hey John, how are you doing?''
# syntax error 
'Dani asked \'Hey John, how are you doing?\'' # will let us escape this.

# Getting input from a user 
puts "What is your first name?"
first_name = gets.chomp
puts "Thank you, you said your first name is #{first_name}"