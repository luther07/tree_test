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
    assert_nil(@tree_node.parent,
               "node has no parent by default")
  end

  def test_has_no_name_when_created
    assert_nil(@tree_node.name,
               "node has no name by default")
  end

  def test_initialize_node_with_name
    assert_equal('Homer Jay Simpson', @named_tree_node.name,
                 "should accept a name during construction")
  end

  def test_modify_node_name
    @named_tree_node.name = 'Marjorie "Marge" Simpson'
    assert_equal('Marjorie "Marge" Simpson', @named_tree_node.name,
                 "should allow you to modify node name")
  end

end

class TreeNodeChildAssignmentTest < Test::Unit::TestCase

  def setup
    @tree_node = TreeNode.new
    @second_node = TreeNode.new
    @child_node = TreeNode.new
  end

  def test_children_count
    @tree_node.add_child(@child_node)
    assert_equal(1, @tree_node.children_count,
                 "should have a single child when one is added")
  end

  def test_parent_assignment
    @tree_node.add_child(@child_node)
    assert_equal(@tree_node, @child_node.parent)
  end


  def test_node_for_child
    @tree_node.add_child(@child_node)
    assert_equal(true, @tree_node.child?(@child_node),
                 "should indicate if node has specified child")
  end

  def test_child_reassignment
    @tree_node.add_child(@child_node)
    @second_node.add_child(@child_node)
    assert_equal(false, @tree_node.child?(@child_node),
                 "child reassignment should remove child from previous parents' children")
  end

end
