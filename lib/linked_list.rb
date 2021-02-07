# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'node'

class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    # adds a new node containing value to the end of the list
    new_node = Node.new(value)
    if @head
      node = @head
      node = node.next_node while node.next_node
      node.next_node = new_node
    else
      @head = new_node
    end
  end

  def prepend(value)
    # adds a new node containing value to the start of the list
    new_node = Node.new(value, @head)
    @head = new_node
  end

  def size
    # returns the total number of nodes in the list
  end

  def head
    # returns the first node in the list
  end

  def tail
    # returns the last node in the list
  end

  def at(index)
    # returns the node at the given index
  end

  def pop
    # removes the last element from the list
  end

  def contains?(value)
    # returns true if the passed in value is in the list and otherwise returns false
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found
  end

  def to_s
    # represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  end

  def insert_at(value, index)
    # inserts the node with the provided value at the given index
  end

  def remove_at(index)
    # removes the node at the given index. (You will need to update the links of your nodes in the list when you remove a node.)
  end

  def print
    # print for testing
    if @head
      node = @head
      i = 0
      while node.next_node
        puts "#{i}:\t#{node.value}"
        node = node.next_node
        i += 1
      end
      puts "#{i}:\t#{node.value}"
    end
  end
end
