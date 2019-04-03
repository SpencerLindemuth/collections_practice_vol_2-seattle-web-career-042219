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
  container = []
  array.each do |x|
    binding.pry
    y = x.split("")
    y.each do |letter|
      if letter == 'a'
        container << x
      end
    end
  end


end
