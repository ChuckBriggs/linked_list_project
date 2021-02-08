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
# puts "List size:\t#{list.size}"
