class Map

  attr_reader :map

  def initialize
    @map = []
  end

  def set(key, value)
    map.push([key, value])
  end

  def get(key)
    map.select {|pair| pair[0] == key}[0][1]
  end

  def delete(key)
    map.each { |pair| map.delete(pair) if pair[0] == key }
    map
  end

  def has_key?(key)
    return true if get(key)
  end
end