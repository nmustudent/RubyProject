#//using each iterator
array=[1,2,3,4,5,6,7,8,9,10]
array.each do |i|
puts i
end

#//print the element greater than 5
a=[1,2,3,4,5,6,7,8,9,10]
b = Array.new
b = a.select{|a| a>5}
puts b




#//using select method print odd element
a = [1,2,3,4,5,6,7,8,9,10]
b = Array.new
b =a.select{|n| n%2==1}
puts b


#//element import and expoert
a=[1,2,3,4,5,6,7,8,9,10]
b=Array.new
b=a.push 11
b=a.unshift 0
puts b



#//Get rid of "11". And append a "3".
a=[1,2,3,4,5,6,7,8,9,10]
b=Array.new
b=a.push 3
b=a.pop 11
puts b



a=[1,2,2,3,4,5,6,7,3,8,1,9,7,9]
b=Array.new
b=a.uniq   #//duplicate element removing
puts b



H =Hash["a"=>300, "b"=>600] #//creating hash with ruby syntax
puts "#{H['a']}"
puts "#{H['b']}"



h = {a:1, b:2, c:3, d:4}
puts "#{h[:b]}"    #//get the value of key b
h = {a:1, b:2, c:3, d:4}
h[:e]=5   # // add key element in hash
puts h
h = {a:1, b:2, c:3, d:4} #//remove key value pair whose value less than 3.5
h.delete_if{|k,n| n>3.5}
puts h



#//hash with array
Hash  = { "a"=>["a", "b", "c"], "b"=>["b", "c"] }
puts Hash
Hash  = { "a"=>["a", "b", "c"], "b"=>["b", "c"] }
puts Hash.values
#//array with hash
hash = { "firstname" => "Mark", "lastname" => "Martin", "age" => "24", "gender" => "M" }
array = []
puts array.push(hash)





#//delete_if start_with
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if{|x| x.start_with?("s")} #//delete word begin with s
puts arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
puts arr.delete_if{|x| x.start_with?("s","w")} #//delete begin a with s an w



#//flatter,split, map method following array
a= ['white snow', 'winter wonderland', 'melting ice',
    'slippery sidewalk', 'salted roads', 'white trees']
  puts a.flat_map(&:split).flatten
  puts a.flatten



  #//display output
  hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
  hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

  if hash1 == hash2
    puts "These hashes are the same!"
  else
    puts "These hashes are not the same!"
  end
