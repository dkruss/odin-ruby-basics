require_relative 'lib/linked_list'

list = LinkedList.new

list.append('dog')
puts list
list.prepend('catz')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts 'Testing #size'
puts list.size

puts  'Testing #tail'
p list.tail

puts 'Testing #at'
puts list.at(0).value
puts list.at(3).value
p list.at(3).next_node
puts list.at(3).next_node.value

puts 'Testing #contains?'
puts "contains dog? #{list.contains?('dog')}"
puts "contains cat? #{list.contains?('cat')}"
puts "contains cast? #{list.contains?('cast')}"
puts "contains turtle? #{list.contains?('turtle')}"

puts 'Testing #find'
puts "Find 'catz': #{list.find('catz')}"
puts "Find 'cat': #{list.find('cat')}"
puts "Find 'turtle': #{list.find('turtle')}"
puts "Find 'cast': #{list.find('cast')}"
p list.find('cast')

puts list

puts 'Testing #remove_at'
list.remove_at(3)
puts list
list.remove_at(0)
puts list
list.remove_at(10)
puts list
list.remove_at(5) 
puts list

puts 'Testing #insert_at'
list.insert_at('papagei',3)
puts list
list.insert_at('zeroth',0)
puts list
list.insert_at('toobig',10)
puts list
puts list.size
list.insert_at('end',7)
puts list