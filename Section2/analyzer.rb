puts "What is your first name?"
first_name = gets.chomp 
puts "What is your last name?"
last_name = gets.chomp 
# full_name = first_name + " " + last_name
puts "Your full name is #{first_name} #{last_name}"
# puts "Your full name is #{full_name}"
puts "Your full name reversed is #{first_name.reverse} #{last_name.reverse}"
# puts "Your full name reversed is #{full_name.reverse}"
puts "Your name has #{first_name.length + last_name.length} characters in it."
# puts "Your name has #{full_name.length-1} characters in it"