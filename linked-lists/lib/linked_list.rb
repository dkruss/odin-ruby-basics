require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)
    if self.head.nil?
      self.head = new_node
    else
      current_node = self.head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = self.head
    self.head = new_node
  end

  def size
    length = 0
    if self.head.nil?
      length
    else
      length = 1
      current_node = self.head
      until current_node.next_node.nil?
        length += 1
        current_node = current_node.next_node
      end
    end
    length
  end

  def head
    @head
  end

  def tail
    current_node = self.head
    if current_node.nil? || current_node.next_node.nil?
      current_node
    else
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
    end
    current_node
  end

  def at(index)
    current_node = self.head
    if index == 0
      current_node
    else
      current_idx = 0
      until current_idx == index
        current_idx += 1
        current_node = current_node.next_node
      end
    end
    current_node
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