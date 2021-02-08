# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'linked_list'

list = LinkedList.new

list.append(38)
list.append(8)
list.prepend(666)
list.append(40)
list.append(95)

puts list.print
list.insert_at(1312, 2)
puts list.print
puts list.at(2)
# puts list.to_s
# list.remove_at(1)

# p list.find('x')
# p list.find(0)
# p list.find(666)
# p list.find(38)
# p list.find(8)
# p list.find(40)
# p list.find(95)
# puts "List size:\t#{list.size}"
