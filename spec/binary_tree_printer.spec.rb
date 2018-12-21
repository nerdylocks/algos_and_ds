require "./adts/binary_tree.rb"
require_relative "../algorithms/binary_tree_printer"
require_relative "spec_helper"

RSpec.describe BinaryTreePrinter do
  let(:root) { BinaryTree.new(1) }
  subject { described_class.new(root) }

  before(:each) do
    root.left = BinaryTree.new(2)
    root.right = BinaryTree.new(3)
    root.left.left = BinaryTree.new(4)
    root.left.right = BinaryTree.new(5)
    root.right.left = BinaryTree.new(6)
    root.right.right = BinaryTree.new(7)
  end

  describe "#bfs_print" do
    it "prints bfs order" do
      expect(subject.bfs_print).to eq([1, 2, 3, 4, 5, 6, 7])
    end
  end

  describe "#dfs_print" do
    it "prints dfs order" do
      expect(subject.dfs_print).to eq([1, 2, 4, 5, 3, 6, 7])
    end
  end
end
