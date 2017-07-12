
puts "1.create hash using both ruby syntax and style"
hsh={1=>"Renu",2=>"Harshu",3=>"Madhu"}
hsh.each do |key,value|
print "the key is=>", key, "  and the value is=>", value, "\n"
end

h = {a:1, b:2, c:3, d:4}
puts "2. Get the value of key `:b`"
puts h[:b]

puts "3.Add to this hash the key:value pair `{e:5}`"
h[:e]=5
puts h

puts "4. Remove all key:value pairs whose value is less than 3.5"
h.delete_if {|key,value| value<3.5}
puts h

puts "5.Can hash values be arrays? ?
 (give examples)"
puts "yes"
h={name:['renu','Kavi','smita']}
puts h
puts "Can you have an array of hashes"
arr=[{"a"=>1,"d"=>4},{"b"=>2,"n"=>5},{"c"=>0,"g"=>6}]
puts arr

puts "6.Given the following data structures. Write a program that moves the information
 from the array into the empty hash that applies to the correct person."

 contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email]=contact_data[0][0]
contacts["Joe Smith"][:address]=contact_data[0][1]
contacts["Joe Smith"][:phone]=contact_data[0][2]
contacts["Sally Johnson"][:email]=contact_data[1][0]
contacts["Sally Johnson"][:address]=contact_data[1][1]
contacts["Sally Johnson"][:phone]=contact_data[1][2]
puts contacts

puts "7.Using the hash you created from the previous exercise, demonstrate how you
 would access Joe's email and Sally's phone number?"
puts "Joe's email=#{contact_data[0][0]}"
puts "Sally's phone number #{contact_data[1][2]}"

puts "8.In exercise 12, we manually set the contacts hash values one by one. Now,
programmatically loop or iterate over the contacts hash from exercise 12,
 and populate the associated data from the contact_data array.
 Hint: you will probably need to iterate over ([:email, :address, :phone]),
 and some helpful methods might be the Array shift and first methods.

Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:"
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end
puts contacts


puts "9.Use Ruby's Array method delete_if and String method start_with? to delete
 all of the words that begin with an 's' in the following array."

   arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
  arr.delete_if{|word| word.start_with?('s')}
   puts arr

puts "Delete array element start with 'w' or 's'."
   arr.delete_if { |word| word.start_with?('s', 'w') }
   puts arr

puts "9.Take the following array:
and turn it into a new array that consists of strings containing one word.
 (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using
 Array's map and flatten methods, as well as String's split method."

 a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

     a = a.map { |pairs| pairs.split }
a = a.flatten
p a
puts a

puts "10.What will the following program output?"
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

puts "output"
puts "These hashes are the same!"
