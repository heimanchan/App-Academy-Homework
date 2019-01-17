fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_oct(fish_arr)
  longest_fish = nil
  fish_arr.each_with_index do |fish1, i|
    fish_arr.each_with_index do |fish2, j|
      next if fish1 == fish2
      longest_fish = fish1 if fish1.length > fish2.length
    end
  end
  longest_fish
end

class Array
  def merge_sort
    return self if self.length <= 1

    mid = length / 2
    left = self.take(mid).merge_sort
    right = self.drop(mid).merge_sort

    Array.merge(left, right)
  end

  private
  def self.merge(left,right)
    result = []
    until left.empty? || right.empty?
      left.first > right.first ? result << left.shift : right.shift
    end
    result + left + right
  end
end

def dominant_oct(fish_arr)
  fish_arr.merge_sort
  fish_arr[-1]
end

def clever_oct(fish_arr)
  longest_fish = fish_arr[0]

  fish_arr.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end

  longest_fish
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up" ]

def slow_dance(dir, tiles_array)
  tiles_array.each_with_index do |direction, i|
    return i if dir == direction
  end
end

new_tiles_data_structure = {"up" => 0, 
"right-up" => 1, 
"right" => 2, 
"right-down" => 3, 
"down" => 4, 
"left-down" => 5, 
"left" => 6, 
"left-up" => 7}

def fast_dance(dir, new_tiles_data_structure)
  new_tiles_data_structure[dir]
end