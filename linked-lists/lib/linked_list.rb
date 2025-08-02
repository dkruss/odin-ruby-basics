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
    current_node = self.head
    if current_node.nil?
      length
    else
      length = 1
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
    if self.size == 0 || self.size == 1
      self.head = nil
    else
      current_node = self.head
      until current_node.next_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = nil
    end
  end

  def contains?(value)
    contained = false
    current_node = self.head
    if current_node.nil?
      return
    elsif current_node.value == value
      contained = true
    else
      until current_node.next_node.nil?
        current_node = current_node.next_node
        if current_node.value == value
          contained = true
          return contained
        end
      end
    end
    contained
  end

  def find(value)
    idx = 0
    current_node = self.head
    if current_node.nil?
      return nil
    elsif current_node.value == value
      return idx
    else
      until current_node.next_node.nil?
        idx += 1
        current_node = current_node.next_node
        if current_node.value == value
          return idx
        end
      end
    end
    return nil
  end

  def insert_at(value, index)
    new_node = Node.new(value)
    current_node = self.head
    previous_node = current_node
    if index == 0
      self.prepend(value)
    elsif index > self.size
      return
    else
      current_idx = 0
      until current_idx == index
        current_idx += 1
        previous_node = current_node
        current_node = current_node.next_node
      end
      new_node.next_node = current_node
      previous_node.next_node = new_node
    end
  end

  def remove_at(index)
    current_node = self.head
    previous_node = current_node
    if index == 0
      self.head = current_node.next_node
    elsif index >= self.size
      return
    else
      current_idx = 0
      until current_idx == index
        current_idx += 1
        previous_node = current_node
        current_node = current_node.next_node
      end
      previous_node.next_node = current_node.next_node
    end
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