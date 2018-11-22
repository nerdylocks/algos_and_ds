
class Stack
  attr_accessor :array
  # look into how to delegate class methods in pure Ruby
  # delegate :empty?, to: Array.empty?

  def initialize(array = [])
    @array = array
  end

  def pop
    array.pop
  end

  def peek
    array.last
  end

  def push(element)
    array << element
  end

  def empty?
    array.empty?
  end
end
