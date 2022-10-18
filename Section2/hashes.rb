sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
my_details = {'name' => 'dani', 'favcolor' => 'black'}
p my_details['favcolor']
p sample_hash['b']
my_hash = {}

another_hash = {a: 1, b: 2, c:3}
another_hash[:a]
# => 1 

sample_hash.keys 
# => ["a", "b", "c"] 

sample_hash.values 
# => [1, 2, 3] 

sample_hash.each do |key,value| 
    puts "The class for key is #{key.class} and the value is #{value.class}"
end

# The class for key is String and the value is Integer
# The class for key is String and the value is Integer
# The class for key is String and the value is Integer
#  => {"a"=>1, "b"=>2, "c"=>3} 

myhash = {a:1, b:2, c:3, d: 4}
#  => {:a=>1, :b=>2, :c=>3, :d=>4} 

myhash[:e] = "Mashur"
#  => "Mashur" 
myhash 
# => {:a=>1, :b=>2, :c=>3, :d=>4, :e=>"Mashur"} 

myhash.each {|some_key, some_value| puts "The key is #{some_key} an
d the value is #{some_value}"}
# The key is a and the value is 1
# The key is b and the value is 2                                                 
# The key is c and the value is Ruby                                              
# The key is d and the value is 4                                                 
# The key is e and the value is Mashur                                            
#  => {:a=>1, :b=>2, :c=>"Ruby", :d=>4, :e=>"Mashur"}  

myhash.select {|k, v| v.is_a?(String)}
# => {:c=>"Ruby", :e=>"Mashur"} 

myhash.each {|k, v| myhash.delete(k) if v.is_a?(String)}
# => {:a=>1, :b=>2, :d=>4}