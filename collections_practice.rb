require 'pry'
# your code goes here
def begins_with_r(array)
  false_array = []
  array.each do |i|
    if i[0] != "r"
      false_array << false
    end
  end
  if false_array.length > 0
    return false
  else
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

def first_wa(array)
  array.each do |x|
    if x[0..1] == "wa"
      return x
    end
  end
end

def remove_non_strings(array)
  array.each_with_index do |element, i|
    if element.class != String
      array.delete(element)
    end
  end
  array
end


#r = ['rails', 'ruby', 'radio']
#not_r = ['rails', 'ruby', 'sails']

#puts begins_with_r(r)
#puts begins_with_r(not_r)
