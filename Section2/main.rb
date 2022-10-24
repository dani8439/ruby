require 'bcrypt'

my_password = BCrypt::Password.create("my password")
my_password_1 = BCrypt::Password.create("my password")
my_password_2 = BCrypt::Password.create("my password")

puts my_password
puts my_password_1
puts my_password_2

# can't do this puts my_password == my_password_1 
# only way to verify is to know the actual password to get the hashed value. 
puts my_password == "my password"
# So can create a method that uses this to come up wtih passwords. 

# my_password = BCrypt::Password.new("$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa")
# puts my_password == "my password"     #=> true
# my_password == "not my password" #=> false