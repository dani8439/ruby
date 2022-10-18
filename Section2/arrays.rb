a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# puts a
# print a
p a.last

x = 1..100
x.to_a # to make it an array. 
x.to_a.shuffle # to mix it up
x # still a range 1..100
x.to_a.shuffle! # doesn't mutate it. Mutation is happening to the array 
z = x.to_a.shuffle!
z # order maintained in the array

x = (1..10).to_a
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
x.reverse # won't mutate it. have to do x.reverse! 

x = "a".. "z"
x.to_a
# ["a", "b", .... "z"]
x.to_a.shuffle # mixes it up
y = x.to_a.shuffle 
y.length # 26
a.length # 9
a << 10 
a.length # 10
a.last # 10
a.first # 1
a.unshift("Dani")
# ["Dani", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.append("Dani")
# ["Dani", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Dani"]
a.uniq!
#["Dani", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.empty?
# False 
b = []
b.empty? # true 
a.include?("Dani") # true 
a.include?("Dog") # false 
a.push("new item")
# ["Dani", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "new item"]
b = a.pop # "new item"

a.join
#Dani12345678910
a.join('-')
#Dani-1-2-3-4-5-6-7-8-9-10
b = a.join("-")
#[Dani-1-2-3-4-5-6-7-8-9-10]
b.split # split puts it into an array.
b.split("-") # ["Dani", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
%w(my name is bob and Ruby is amazing)
["my", "name", "is", "bob", "and", "Ruby", "is", "amazing"]
# z = _ # grabs last expression. 
z # ["my", "name", "is", "bob", "and", "Ruby", "is", "amazing"]

# traditional way in other languages
for i in z 
    print i + " "
end

# Iterators 
z.each do |food| 
    print food + " "
end 
# my name is bob and Ruby is amazing => ["my", "name", "is", "bob", "and", "Ruby", "is", "amazing"]

# preferred way is within 1 line not a block:
z.each {|food| print food + " "}
# my name is bob and Ruby is amazing => ["my", "name", "is", "bob", "and", "Ruby", "is", "amazing"]

# tests for Booleans if true... false...
z.select 

z = (1..100).to_a.shuffle
z.select{|number| number.odd?}

p a.methods

