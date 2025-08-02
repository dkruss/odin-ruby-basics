require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)
    if self.head().nil?
      self.head = new_node
    else
      current_node = self.head()
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = self.head()
    self.head = new_node
  end

  def size
    #TODO
  end

  def head
    @head
  end

  def tail
    #TODO
  end

  def at(index)
    #TODO
  end

  def pop
    #TODO
  end

  def contains?(value)
    #TODO
  end

  def find(value)
    #TODO
  end

  def insert_at(value, index)
    #TODO
  end

  def remove_at(index)
    #TODO
  end

  def to_s
    string_representation = ""

    current_node = self.head()
    string_representation += "( #{current_node.value} ) -> "
    until current_node.next_node.nil?
      current_node = current_node.next_node
      string_representation += "( #{current_node.value} ) -> "
    end
    string_representation += "nil"
  end
end