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
  new_array = []
  array.each do |element|
    if element.class == String
      new_array << element
    end
  end
  new_array
end

def count_elements(array)
  count_array = []
  array.each do |element|
    if count_array.length == 0
      count_array << {name: element[:name], count: 1}
    else
      count_array.each_with_index do |x, i|
        if x[:name] == element[:name]
          num = count_array[i][:count]
          num += 1
          count_array[i][:count] = num
        else
          count_array << {name: element[:name], count: 1}
        end
      end
    end
  end
  count_array
end

def merge_data(keys, data)
  keys.each do |name|
    binding.pry
  end
end

#r = ['rails', 'ruby', 'radio']
#not_r = ['rails', 'ruby', 'sails']

#puts begins_with_r(r)
#puts begins_with_r(not_r)
