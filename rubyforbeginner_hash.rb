dictionary = { :one => 'uno', :two => 'dos', :three => 'tres' }
puts "4.1",dictionary[:two]
dictionary[:four]='cuatro'
puts "4.2",dictionary[:four]
puts "4.3",dictionary[:four].capitalize
puts "4.4",dictionary.key?(:three)
puts dictionary.invert
