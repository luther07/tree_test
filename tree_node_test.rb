require_relative 'tree_node'
require 'test/unit'

class TreeNodeTest < Test::Unit::TestCase

  def setup
    @tree_node = TreeNode.new
    @named_tree_node = TreeNode.new('Homer Jay Simpson')
  end

  def test_has_no_children_when_created
    assert_equal(0, @tree_node.children_count,
                 "should have an empty children array when created")
  end

  def test_has_no_parent_when_created
    assert_nil(@tree_node.parent)
  end

  def test_has_no_name_when_created
    assert_nil(@tree_node.name)
  end

  def test_initialize_node_with_name
    assert_equal('Homer Jay Simpson', @named_tree_node.name)
  end

  def test_modify_node_name
    @named_tree_node.name = 'Marjorie "Marge" Simpson'
    assert_equal('Marjorie "Marge" Simpson', @named_tree_node.name)
  end

end

class TreeNodeChildAssignmentTest < Test::Unit::TestCase

  def setup
    @tree_node = TreeNode.new
    @child_node = TreeNode.new
    @tree_node.add_child(@child_node)
  end

  def test_children_count
    assert_equal(1, @tree_node.children_count,
                 "should have a single child when one is added")
  end

  def test_parent_assignment
    assert_equal(@tree_node, @child_node.parent)
  end

end
