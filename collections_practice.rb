require 'pry'
# your code goes here
def begins_with_r(array)
  array.each do |i|
    if i[0] != 'r' || 'R'
      binding.pry
      return false
    end
  end
  return true
end
