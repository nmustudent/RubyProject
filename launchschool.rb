 print"1.Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value."

arr=Array(1..10)
arr.each{|n|puts n}



   puts"2.Same as above, but only print out values greater than 5."
    arr=Array(1..10)
    arr1=arr.select{|n|n > 5}
    puts arr1

    puts "3.Now, using the same array from #2, use the select method to extract all odd numbers into a new array."
     arr=Array(1..10)
     arr1=arr.select{|n|n%2==1}
     puts arr1

     puts "4.Append 11 to the end of the original array. Prepend 0 to the beginning"
     arr=Array(1..10)
     arr.unshift(0)

     #arr.insert(11,11)
      arr[11]=11
     puts arr

     puts "5.Get rid of 11. And append a 3."
     arr=Array(1..10)
      arr.delete_at(10)
     puts arr
     arr.insert(10,3)
     puts arr

     puts "6.Get rid of duplicates without specifically removing any one value."
         arr=Array(1..10)
         arr1=arr.uniq
         puts arr1



         puts "8.Create a Hash using both Ruby syntax styles."
         h=Hash['a'=>1,'b'=>2,'c'=>3,'d'=>4]
         puts h
         h1={a:1,b:2,c:3,d:4}
         puts h1

        puts" 9.Suppose you have a hash h = {a:1, b:2, c:3, d:4}.Get the value of key `:b`."

        puts "value of b is #{h1[:b]}"
        h1[:e]=5
         puts "After adding key:value pair `{e:5}'",h1
         puts" Remove all key:value pairs whose value is less than 3.5"
           h1.delete_if{|k,v| v < 3.5}
           puts h1

    #       puts"
        puts "10.Can hash values be arrays? Can you have an array of hashes? (give examples)"
          h2={a:[1,2,3]}
          puts h2
          a=[{a:1},{b:2}]
          puts a

          puts "12.Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person."

          contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
        ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

          contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


          contacts["Joe Smith"][:email] = contact_data[0][0]
         contacts["Joe Smith"][:address] = contact_data[0][1]
        contacts["Joe Smith"][:phone] = contact_data[0][2]
        contacts["Sally Johnson"][:email] = contact_data[1][0]
        contacts["Sally Johnson"][:address] = contact_data[1][1]
        contacts["Sally Johnson"][:phone] = contact_data[1][2]
        puts contacts
        puts "13.Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?"
        puts contacts["Joe Smith"][:email]
        puts contacts["Sally Johnson"][:phone]
        puts"14.iteration"
        contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
         contacts = {"Joe Smith" => {}}
         fields = [:email, :address, :phone]
         contacts.each do|name,hash|
           fields.each do|field|
             hash[field]=contact_data.shift
           end
         end
         puts "15.Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an s in the following array."
         arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
        arr.delete_if { |word| word.start_with?("s") }
          puts "Removing words starts with s",arr
          arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
        arr.delete_if { |word| word.start_with?('s','w')}
        puts "Removing words starts with s,w",arr
        puts"16"
        a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']
          b=a.map{|element|element.split(" ")}
          puts b
