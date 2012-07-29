class TreeNode
  attr :children
  attr_reader :parent
  attr_accessor :name

  def initialize(name=nil)
    @name = name
    @children = []
  end

  def add_child(child)
    @children << child
    child.parent = self
  end

  def parent=(new_parent)
    @parent = new_parent
  end

  def children_count()
    @children.size
  end

end
