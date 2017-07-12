arr=[1,2,3,4,5,6,7,8,9,10]
puts "1.Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
 and print out each value.
"
puts "Multiline"
arr.each do |i|
  puts i
end
puts "Single Line"
arr.each{|i| puts i}

puts "2.Same as above, but only print out values greater than 5."

arr.each do |i|
  if i>5
  puts i
  end
  end

puts "3.Now, using the same array from #2, use the select method to extract all
odd numbers into a new array."
  puts "Mulitline"
   arr.select do |i|
  if (i%2)!=0
  puts i
  end
  end
  puts "single line"
   arr.select{|i| if i%2!=0 then puts i end}

puts "4.Append "11" to the end of the original array. Prepend "0" to the beginning."

arr.push(11)
arr.unshift(0)

puts "5.Get rid of '11'. And append a '3'."
arr.push(11)
arr<<11
arr.unshift(0)
#arr.shift()
arr.pop()
arr.pop()
arr.push(3)
arr.each do|i|
  puts i
end
arr=["a","a","a","b","b","c","D","e","r","r","f","f                "]

puts arr.uniq!
