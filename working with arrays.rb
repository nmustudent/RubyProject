
puts "1.Create array and produce output 5"
num=[1,2,3,4,5]
 puts num[4]
 puts "2.Add new element at that place"
 num[4]=99
 puts num[4]
 puts "3.Print only even number from array"
 num.each do|i|
   if i%2==0
     puts i
   end
 end

puts "4.Another way"
puts num.select{|num| num.even?}

puts "5.Abpove output reverse"
puts num.select{|num| num.even?}.reverse

puts "6.Delete 6 from the above output"
num= num.select{|num| num.even?}.reverse
 num.delete(6)
puts num
puts "7 create array arr=['one','two','three','four']
 and display output only ['one','three','four']"

 arr=['one','two','three','four','five']
  #arr=arr.reject{|word| word=='two' or word== 'five'}
  arr.delete('two')
  arr.delete('five')
  puts arr
  puts "Make each word capitalize"
  arr.each do|i |
   puts "#{i.capitalize}<3"
 end

 puts "8.Print the output as 'One<3','Three<3<3<3',
 'Five<3<3<3<3<3'"
  arr=['one','two','three','four','five']
  arr=arr.select.with_index{|word, ix| ix.even?}
  arr=arr.map{|word| word.capitalize}
  arr=arr.map.with_index do |word,ix|
  h='<3'*(ix*2+1)
 "#{word} #{h}"

 end
puts arr
