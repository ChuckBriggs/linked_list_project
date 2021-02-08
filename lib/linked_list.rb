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
    node_count = 0
    current_node = @head
    if current_node
      node_count += 1
      while current_node.next_node
        node_count += 1
        current_node = current_node.next_node
      end
    end
    node_count
  end

  def head
    # returns the first node in the list
    @head
  end

  def tail
    # returns the last node in the list
    node = @head
    if node
      while node.next_node
        node = node.next_node
      end
    end
    node
  end

  def at(index)
    # returns the node at the given index
    node = @head
    index.times do
      node = node.next_node
    end
    node
  end

  def pop
    # removes the last element from the list
    return unless @head

    if @head.next_node
      second_to_last_node = @head
      last_node = @head.next_node
      while last_node.next_node
        second_to_last_node = last_node
        last_node = last_node.next_node
      end
      second_to_last_node.next_node = nil
    else
      last_node = @head.dup
      @head = nil
    end
    last_node
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
