require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)
    # your code here
    if @root.nil?
      return nil
    end
    node_being_checked = @root
    while node_being_checked != nil
      if node_being_checked.value == value
        return node_being_checked 
      elsif value > node_being_checked.value  
        node_being_checked = node_being_checked.right
      elsif value < node_being_checked.value 
        node_being_checked = node_being_checked.left
      else
        return nil
      end
    end
  end

  def insert(value)
    # your code here
    if @root.nil?
      @root = Node.new(value)
      return @root
    else
      node_being_checked = @root
      previous_node = @root
    end
    while node_being_checked != nil
      previous_node = node_being_checked
      if node_being_checked.value == value
        return nil
      elsif value > node_being_checked.value 
        node_being_checked = node_being_checked.right
      elsif value < node_being_checked. value
        node_being_checked = node_being_checked.left
      end
    end
    if value > previous_node.value
      previous_node.right = Node.new(value)
      return previous_node.right
    else
      previous_node.left = Node.new(value)
      return previous_node.left
    end
  end

end 
