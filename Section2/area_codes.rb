dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash 
def get_city_names(somehash)
  # write code here
end 

# Get area code based on given hash and key 
def get_area_code(somehash, key)
  # write code here
end 

# Execution flow 
loop do 
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase 
  break if answer != "y" 
end 

# puts "Do you want to look up an area code based on a city name? (Y/N)"
# if statement is true then prints out 
# puts "Which city do you want the area code for?"
    # lists the cities 
    # Enter your selection 

    # The area code for city name is area code 
    # then loops and goes back to step one. 
    # if enter a capital Y should also work 
    # press any other key on the third time beyond a capital Y or lower case y, it exits. 