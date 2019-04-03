# your code goes here
def begins_with_r(array)
  array.each do |i|
    if i[0] == 'r' || 'R'
      return true
    else
      return false
    end
end