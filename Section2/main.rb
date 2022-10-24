require_relative 'crud'

users = [
    { username: "mashrur", password: "password1"},
    { username: "jack", password: "password2"},
    { username: "arya", password: "password3"},
    { username: "johnsnow", password: "password4"},
    { username: "heisenberg", password: "password5"}

]

hashed_users = Crud.create_secure_users(users)
puts hashed_users