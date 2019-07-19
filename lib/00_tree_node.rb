class PolyTreeNode

  attr_accessor :children, :parent, :value

  def initialize(value, parent = nil)
    @parent = parent
    @children = []
    @value = value
  end

  def parent=(parent)
    old_parent = @parent
    
    if old_parent != nil
      old_parent.children.delete_if {|child| child == self }
    end

    @parent = parent
    if parent != nil && !parent.children.include?(self)
      parent.children << self
    end

  end

  #In addition to (1) re-assigning the parent attribute of the child and (2) adding it to the new parent's array of children, we should also remove the child from the old parent's list of children (if the old parent isn't nil). Modify your #parent= method to do this.

  def inspect
    { "parent" => @parent, "children" => @children, "value" => @value }.inspect
  end

end