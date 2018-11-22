class BinaryTree
  attr_accessor :value, :left, :right

  def initialize(value = nil)
    @value = value
    @children = []
  end
end
