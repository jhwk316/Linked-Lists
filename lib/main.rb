
test = LinkedList.new
test.append(2)
test.append(4)
test.append(6)
test.prepend(2)
test.append(8)
test.append(10)
test.append(100)
test.append(200)
test.prepend(1)

# test.prepend(0) # => PREPEND MAKES THIS THE HEAD


puts
puts
# POP METHOD
test.pop
test.pop
puts
puts "---SIZE METHOD---"
p "The size of list is: #{test.size}"
puts
puts "---HEAD AND TAIL METHODS---"
p "The head is: #{test.head}"
p "The tail is: #{test.tail}"
puts
puts "---AT METHOD---"
p "The index position(0) is #{test.at(0)}"
p "The index postion (#{test.size - 1}) is #{test.at(test.size - 1)}"
# 0 > 2, 1 > 4, 2 < 6, 3 < 8
puts
puts "---CONTAINS? METHOD---"
p test.contains?(2) # => true
p test.contains?(10) # => true
p test.contains?(45)  # => false
p test.contains?(200) # => true
p test.contains?(201) # => false
puts
puts "---FIND METHOD---"
p test.find(200) # => 6
p test.find(10) # => 4
p test.find(4) # => 1
p test.find(100) # => 5
p test.find(2) # => 0
p test.find(6) # => 2
p test.find(8) # => 3
p test.find(88) # => nil
puts
puts "--- TO_S METHOD ---"
p test.to_s
