require 'pry'
# your code goes here
def begins_with_r(array)
  array.each do |i|
    if i[0] != 'r' || 'R'
      return false
    end
  end
  return true
end


def contain_a(array)
  array.each do |x|
    y = array.split("")
    binding.pry
  end


end