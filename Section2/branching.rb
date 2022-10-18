# if/else 

# if true 
#     # execute some code 
# else 
#     # execute some other code 
# end 

# if true 
#     puts "Hello"
# end 
# Hello

# if !true 
#     puts "Hello"
# else 
#     puts "Bye"
# end 
# puts "La la la"

# Hello
# La la la

# condition = false
# another_condition = false
# # if condition && another_condition # leads to false if one condition is false. 
# if !condition || !another_condition 
#     puts "this evaluated to true"
# else 
#     puts "this evaluated to false"
# end 
# puts "La la la"

# # Most popular way to branch
# name = "Evgeny"
# if name == "Dani"
#     puts "Welcome to the program, Dani"
# elsif name == "Jack"
#     puts "Welcome to the program, Jack"
# elsif name == "Evgeny"
#     puts "Go back to helping students Evgeny"
# else 
#     puts "Welcome to the program, User"
# end


def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end 

def divide(first_num, second_num)
    first_num.to_f / second_num.to_f
end

def add(first_num, second_num)
    first_num.to_f + second_num.to_f
end 

def subtract(first_num, second_num)
    first_num.to_f - second_num.to_f
end 

def modulo(first_num, second_num)
    first_num.to_f % second_num.to_f
end


puts "Simple Calculator"
20.times { print "-" }
puts 
puts "Please enter your first number"
first_number = gets.chomp 
puts "Please enter your second number"
second_number = gets.chomp 
puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction"
user_entry = gets.chomp 
# puts "You selected #{user_entry}"
if user_entry == "1"
    puts "You have chosen to multiply #{first_number} and #{second_number}. The result is #{multiply(first_number, second_number)}"
elsif user_entry == "2"
    puts "You have chosen to add #{first_number} and #{second_number}. The result is #{add(first_number, second_number)}"
elsif user_entry == "3"
    puts "You have chosen to subtract #{first_number} and #{second_number}. The result is #{subtract(first_number, second_number)}"
else 
    puts "Invalid entry"
end
