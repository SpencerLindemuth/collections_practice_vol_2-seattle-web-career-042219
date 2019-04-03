require 'pry'
# your code goes here
def begins_with_r(array)
  false_array = []
  truth_array = []
  array.each do |i|
    if i[0] != 'r' || 'R'
      false_array << false
    elsif i[0] == 'r' || 'R'
      truth_array << true
    end
  end
  if false_array.length > 0
    return false
  elsif truth_array.length == array.length
    return true
  end
end


def contain_a(array)
  container = []
  array.each do |x|
    y = x.split("")
    y.each do |letter|
      if letter == 'a'
        container << x
      end
    end
  end
  container

end
