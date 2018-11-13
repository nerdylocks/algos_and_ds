require "./binary_tree_node.rb"

root = Node.new(1)
root.left = Node.new(2)
root.right = Node.new(3)
root.left.left = Node.new(4)
root.left.right = Node.new(5)
root.right.left = Node.new(6)
root.right.right = Node.new(7)

def bfs(node)
  return nil if node.nil?
  q = Queue.new
  q.enq node
  until q.empty?
    n = q.deq
    puts n.value unless n.value.nil?

    q.enq n.left unless n.left.nil?
    q.enq n.right unless n.right.nil?
  end
end
