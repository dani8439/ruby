# require 'bundler/inline'

# gemfile true do 
#  source 'http://rubygems.org'
#  gem 'bcrypt'
# end 

require 'bcrypt'

users = [
  { username: "mashrur", password: "password1"},
  { username: "jack", password: "password2"},
  { username: "arya", password: "password3"},
  { username: "johnsnow", password: "password4"},
  { username: "heisenberg", password: "password5"}
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end 

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
    # going through and creating a hash_digest of our users. 
  list_of_users.each do |user_record|
  user_record[:password] = create_hash_digest(user_record[:password])
  end  
  list_of_users
end 

# new_password = create_hash_digest("password1")
# puts new_password == 'password1' # true 

puts create_secure_users(users)

