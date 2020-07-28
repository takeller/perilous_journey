require './app/node.rb'
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    return @head = Node.new(surname) if @head.nil?

    tail = list_iterator(@head)[:tail]
    tail.append_node(surname)
  end

  def count
    return list_iterator(@head)[:count] unless @head.nil?

    0
  end

  def to_string
    "The #{@head.surname} family"
  end

  def list_iterator(current_node, count = 0)
    count += 1
    return { tail: current_node, count: count } if current_node.next_node.nil?

    list_iterator(current_node.next_node)
  end
end
