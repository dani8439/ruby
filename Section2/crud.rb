

# users = [
#   { username: "mashrur", password: "password1"},
#   { username: "jack", password: "password2"},
#   { username: "arya", password: "password3"},
#   { username: "johnsnow", password: "password4"},
#   { username: "heisenberg", password: "password5"}
# ]

module Crud 
  require 'bcrypt'
  puts "Module CRUD activated"

  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end 

  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def self.create_secure_users(list_of_users)
      # going through and creating a hash_digest of our users. 
    list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
    end  
    list_of_users
  end 

  # new_password = create_hash_digest("password1")
  # puts new_password == 'password1' # true 

  # new_users =  create_secure_users(users)
  # puts new_users

  def self.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      # if we have the username matching, and then the verified hash digest of the password equals the password sent in... 
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password 
        return user_record 
      end 
    end 
    "Credentials were not correct"
  end
end 

# puts authenticate_user('heisenberg', 'password5', new_users)

