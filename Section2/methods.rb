# Rewrite the analyzer with methods

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

puts "Enter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp
puts "The first number multiplied by the second number is #{multiply(num_1, num_2)}"
puts "The first number divided by the second number is #{divide(num_1, num_2)}"
puts "The first number added to the second number is #{add(num_1, num_2)}"
puts "The first number subtracted from the second number is #{subtract(num_2, num_1)}"
puts "The first number's remainder of the second number is #{modulo(num_1, num_2)}"


