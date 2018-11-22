require_relative "../adts/stack"

class TreePrinter
  attr_reader :node

  def initialize(node)
    @node = node
  end

  def bfs_print
    output = []

    return nil if node.nil?
    q = Queue.new.enq node

    until q.empty?
      n = q.deq

      output << n.value
      n.children.each do |c|
        q.enq c
      end
    end

    output
  end

  def dfs_print
    output = []

    s = Stack.new.push(node)

    until s.empty?
      n = s.pop
      output << n.value

      n.children.reverse_each do |c|
        s << c
      end
    end

    output
  end
end
