class HashMap
  def initialize(load_factor=0.75,capacity=16)
    @load_factor = load_factor
    @capacity = capacity
    @buckets = Array.new(capacity)
  end

  def hash(key)
    hash_code = 0
    prime_number = 31
    
    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
    
    hash_code
  end

  def set(key, value)
    #TODO
  end

  def get(key)
    #TODO
  end

  def has?(key)
    #TODO
  end

  def remove(key)
    #TODO
  end

  def length
    #TODO
  end

  def clear
    #TODO
  end

  def keys
    #TODO
  end

  def values
    #TODO
  end

  def entries
    #TODO
  end

end