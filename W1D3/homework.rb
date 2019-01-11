require 'byebug'

def sum_to(num)
  if num == 0
    return 0
  else
    num += sum_to(num-1)
  end
end

def add_numbers(arr)
  return arr[0] if arr.length < 2
  arr[-1] = arr[-2] + arr.pop
  add_numbers(arr)
end

def gamma_fnc(num)
  return 1 if num == 1
  n = num -1
  n * gamma_fnc(n)
end

def ice_cream_shop(flavors, favorite)
  if flavors[0] == favorite
    return true 
  else
    ice_cream_shop(flavors[1..-1], favorite)
  end
end

def reverse(str)
  return str[-1] if str.length <= 1
  str[-1] + reverse(str[0..-2])
end