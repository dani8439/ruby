class Student 
    # instance variable 
    @first_name 
    @last_name 
    @email 
    @username 
    @password

    def to_s
        "First name: #{@first_name}"
    end
end

dani = Student.new 
puts dani
# will return an error because we haven't set it up properly within the class. No initialize method giving access to it. 
# dani.first_name = "Dani"
# puts dani
# #<Student:0x00007f9dbe014bf0> Saying it's a student class, and hex representation.

# First name: 