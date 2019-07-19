class PolyTreeNode

  attr_accessor :children, :parent, :value

  def initialize(value, parent = nil)
    @parent = parent
    @children = []
    @value = value
  end

  def parent=(parent)
    @parent = parent
    if parent != nil && !parent.children.include?(self)
      parent.children << self
    end
  end


  def inspect
    { "parent" => @parent, "children" => @children, "value" => @value }.inspect
  end

end