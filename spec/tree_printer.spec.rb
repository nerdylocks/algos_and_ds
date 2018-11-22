require "./adts/tree"
require_relative "../algorithms/tree_printer"
require_relative "spec_helper"

RSpec.describe TreePrinter do
  let(:root) { Tree.new(1) }
  subject { described_class.new(root) }

  before(:each) do
    root.children << Tree.new(2)
    root.children << Tree.new(3)
    root.children << Tree.new(4)
    root.children[0].children << Tree.new(5)
    root.children[0].children << Tree.new(6)
    root.children[0].children << Tree.new(7)
    root.children[1].children << Tree.new(8)
    root.children[1].children << Tree.new(9)
    root.children[1].children << Tree.new(10)
    root.children[2].children << Tree.new(11)
    root.children[2].children << Tree.new(12)
    root.children[2].children << Tree.new(13)
  end

  describe "#bfs_print" do
    it "prints bfs order" do
      expect(subject.bfs_print).to eq((1..13).to_a)
    end
  end

  describe "#dfs_print" do
    it "prints dfs order" do
      expect(subject.dfs_print).to eq([1, 2, 5, 6, 7, 3, 8, 9, 10, 4, 11, 12, 13])
    end
  end
end
