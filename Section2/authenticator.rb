users = [
    { username: "mashrur", password: "password1"},
    { username: "jack", password: "password2"},
    { username: "arya", password: "password3"},
    { username: "johnsnow", password: "password4"},
    { username: "heisenberg", password: "password5"}

]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end 
  "Credentials were not correct"
end 

puts "Welcome to authenticator"
25.times { print "-" }
puts 
puts "This program will take input from the user and compare password"

attempts = 1
while attempts < 4 
  print "Username: "
  username = gets.chomp 
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication 
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end 
puts "You have exceeded the number of attempts" if attempts == 4

# prompt for username
# prompt for password 
# Credentials were not correct 
# Press n to quite or any other key to continue:
# can only attempt three times, on fourth attempt it will kick you out. 
# puts "If password is correct, you will get back to the user object"

# We will learn Hash, Arrays, Barnching, Whle loops and designing program execution flow



# attempts = 1
# while attempts < 4 
#     print "Username: "
#     username = gets.chomp 
#     print "Password: "
#     password = gets.chomp
#     users.each do |user|
#         if user[:username] == username && user[:password] == password
#             puts user 
#             break 
#         else 
#             puts "Credentials were not correct"
#         end
#     end 
#     puts "Press n to quit or any other key to continue: "
#     input = gets.chomp.downcase
#     break if input == "n"
#     # if input == "n"
#     #     break
#     # end 
#     attempts += 1
# end 