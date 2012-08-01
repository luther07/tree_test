class TreeNode
  attr :children
  attr_reader :parent
  attr_accessor :name

  def initialize(name=nil)
    @name = name
    @children = []
  end

  def add_child(child)
    if !child.parent.nil?
      child.parent.remove_child_helper(child)
    end
    @children << child
    child.parent = self
  end

  def remove_child_helper(child)
    child_array = Array.[](child)
    @children = @children - child_array
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

  def node_path()
    if parent == nil
      return name.to_s
    else
      parent.node_path() + ' > ' + name
    end
  end

  # implement non-recursive with a stack
  def depth_first_each
    if block_given?
      shift_array = []
      node = self
      shift_array.unshift(node)

      while shift_array.size > 0
        yield shift_array.shift
        shift_array = node.children + shift_array
        node = shift_array[0]
      end

    return self

    end

  end

end
