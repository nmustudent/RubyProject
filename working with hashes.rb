has={:one=>'undo',:two=>'dos',:three=>'tres'}

puts "1.The value of 'two' key"
puts has[:two]

puts "2.Adding the new element"
has[:four]='cautro'
puts has[:four]

puts "3.Capitalize the first letter of the key four"
puts has[:four].capitalize

puts "4.Check wheather key is present or not"
puts has.key?(:four)
puts has.has_key?(:ten)
puts has.value?('dos')

puts "5.Flips the hash make key as value and value as key"
puts has.invert()
