require_relative "./adts/stack"

class BinaryTreePrinter
  attr_reader :node

  def initialize(node)
    @node = node
  end

  def bfs_print
    output = []

    return nil if node.nil?
    q = Queue.new
    q.enq node
    until q.empty?
      n = q.deq
      output << n.value unless n.value.nil?

      q.enq n.left unless n.left.nil?
      q.enq n.right unless n.right.nil?
    end

    output
  end

  def dfs_print
    output = []

    return nil if node.nil?
    s = Stack.new
    s.push node
    until s.empty?
      n = s.pop
      output << n.value unless n.value.nil?

      s.push n.right unless n.right.nil?
      s.push n.left unless n.left.nil?
    end

    output
  end
end

