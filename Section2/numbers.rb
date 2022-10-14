# Numbers
# puts 1 + 2

# x = 5 
# y = 10 
# puts y / x

# "5" * "5" 
# (irb):1:in `*': no implicit conversion of String into Integer (TypeError)
# BUT, can do 
# "5" * 2 
# 55

# puts "I am a line"
# puts "-" * 20 
# puts "I am a diff line after a divider"
# 20.times {print "-"}

# I am a line
# --------------------
# I am a diff line after a divider
# --------------------

# 20.times { puts "hi"}

# 20.times { puts rand(10)} # rand is not inclusive of 0 - 9, not 1-10

# x = "5".to_i
# x.to_f

# y = "10".to_f

# x * y

# "hello".to_i 
# 0
# "hello".to_f 
# 0.0

# prompt the user for 2 numbers, and a program that does some kind of math on that. 

puts "Simple calculator"
25.times { print "-"}
puts 
puts "Enter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp
puts "The first number multiplied by the second number is #{num_1.to_f * num_2.to_f}"
puts "The first number divided by the second number is #{num_1.to_f / num_2.to_f}"
puts "The first number added to the second number is #{num_1.to_f + num_2.to_f}"
puts "The first number subtracted from the second number is #{num_2.to_f - num_1.to_f}"
puts "The first number's remainder of the second number is #{num_1.to_f % num_2.to_f}"
