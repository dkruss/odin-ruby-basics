require_relative 'node'

class LinkedList
  attr_accessor :node_list

  def initialize
    @node_list = []
  end

  def append(value)
    new_node = Node.new(value)
    unless self.node_list.empty?
      self.node_list[-1].next_node = new_node
    end
    self.node_list << new_node
  end

  def prepend(value)
    new_node = Node.new(value)
    unless self.node_list.empty?
      new_node.next_node = self.node_list[0]
    end
    self.node_list.unshift(new_node)
  end

  def size
    self.node_list.length
  end

  def head
    self.node_list[0]
  end

  def tail
    self.node_list[-1]
  end

  def at(index)
    self.node_list[index]
  end

  def pop
    self.pop
    self.node_list[-1].next_node = nil
  end

  def contains?(value)
    for node in self.node_list
      return true if node.value == value
    end
    return false
  end

  def find(value)
    self.node_list.each_with_index { |node, idx| return idx if node.value == value }
    return nil
  end

  def insert_at(value, index)
    if index == 0
      self.prepend(value)
    elsif index == self.node_list.length - 1
      self.append(value)
    elsif index > 0 && index < self.node_list.length
      new_node = Node.new(value)
      left_sublist = self.node_list[..index - 1]
      right_sublist = self.node_list[index..]
      left_sublist[-1].next_node = new_node
      new_node.next_node = right_sublist[0]
      left_sublist << new_node
      self.node_list = left_sublist + right_sublist
    end
  end

  def remove_at(index)
    if index == 0
      self.node_list.shift
    elsif index == self.node_list.length - 1
      self.node_list.pop
    elsif index > 0 && index < self.node_list.length
      left_sublist = self.node_list[..index - 1]
      right_sublist = self.node_list[index + 1..]
      left_sublist[-1].next_node = right_sublist[0]
      self.node_list = left_sublist + right_sublist
    end
  end

  def to_s
    string_representation = ""
    for node in self.node_list
      string_representation += "( #{node.value} ) -> "
    end
    string_representation += "nil"
    string_representation
  end
end