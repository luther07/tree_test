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

  def child?(node)
    memberhood = false
    @children.each do |item|
      if item == node
        memberhood = true
      end
    end
    return memberhood
  end

end
