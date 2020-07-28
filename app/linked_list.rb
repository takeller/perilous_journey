require './app/node.rb'
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    @head = Node.new(surname)
  end

  def count
    return 0 if @head.nil?

    1
  end

  def to_string
    "The #{@head.surname} family"
  end
end
