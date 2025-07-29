require_relative 'lib/linked_list'

list = LinkedList.new

list.append('dog')
list.prepend('catz')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list.node_list[0]
puts list.node_list[0].next_node
puts list.node_list[1]

puts 'Testing #size'
puts list.size

puts 'Testing #at'
puts list.at(3).value
puts list.at(3).next_node
puts list.at(3).next_node.value

puts 'Testing #contains?'
puts list.contains?('cat')
puts list.contains?('cast')

puts 'Testing #find'
puts "Find 'cat': #{list.find('cat')}"
puts "Find 'cast': #{list.find('cast')}"

puts list

puts 'Testing #remove_at'
list.remove_at(3)
puts list

puts 'Testing #insert_at'
list.insert_at('papagei',3)
puts list