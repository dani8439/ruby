class User 
  attr_accessor :name, :email 

  def initialize(name, email)
    @name = name
    @email = email 
  end 

  def run 
    puts "Hey I'm running"
  end 

  def self.identify_yourself 
    puts "Hey I am a class method"
  end 
end 

user = User.new("mashrur", "mashrur@example.com")
user.run 
User.identify_yourself

# Hey I'm running
# Hey I am a class method