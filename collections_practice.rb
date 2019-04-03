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
    y = x.split("")
    y.each do |letter|
      binding.pry
      if letter == 'a'
        container << x
      end
    end
  end


end
