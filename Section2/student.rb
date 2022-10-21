class Student 
    attr_accessor :first_name, :last_name, :email, :username, :password
    # attr_reader :username # if you want to change it to just read it and not write it

    @first_name 
    @last_name 
    @email 
    @username
    @password

    def initialize(firstname, lastname, username, email, password)
      @first_name = firstname 
      @last_name = lastname
      @username = username 
      @email = email 
      @password = password 
    end

    # def first_name=(name)
    #     @first_name = name 
    # end 

    # def first_name 
    #     @first_name
    # end 

    # def set_username 
    #   @username = "Hallo1"
    # end 

    def to_s
        "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
    end
end

# dani = Student.new 

# will return an error because we haven't set it up properly within the class. No initialize method giving access to it. 
# dani.first_name = "Dani" # does not work
# dani.first_name("Dani") #But not the notation we're looking for. To have a setter, need an = .
# puts dani
# #<Student:0x00007f9dbe014bf0> Saying it's a student class, and hex representation.

# dani.last_name = "Shoe-man"
# dani.email = "hellovicky@mail.com"
# # dani.username = "Hallo"
# dani.set_username

# puts dani.first_name # Dani
# puts dani.last_name 
# puts dani.email
# puts dani.username

# all of the above is deleted, and it becomes: 

mashrur = Student.new("Mashrur", "Hossain", "mashrur1", "mashrur@example.com", "password1")
john = Student.new("John", "Doe", "john1", "john1r@example.com", "password2")

puts mashrur
puts john
mashrur.last_name = john.last_name 
puts "Mashrur is altered"
puts mashrur

# First name: Mashrur, Last name: Hossain, Username: mashrur1, email address: mashrur@example.com
# First name: John, Last name: Doe, Username: john1, email address: john1r@example.com
