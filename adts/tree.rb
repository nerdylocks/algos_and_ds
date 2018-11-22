class Tree
  attr_accessor :value, :children

  def initialize(value = nil)
    @value = value
    @children = []
  end
end
