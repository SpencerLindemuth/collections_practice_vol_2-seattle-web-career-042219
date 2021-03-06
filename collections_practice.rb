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
  final = []
  array.each do |element|
    count_array << element[:name]
  end
  counts = Hash.new 0
  count_array.each do |word|
    counts[word] += 1
  end
  counts.each do |name, times|
    final << {name: name, count: times.to_i}
  end
  final
end

def merge_data(keys, data)
  merged_array = []
  keys.each_with_index do |name, i|
    merged_array[i] = {first_name: name[:first_name],
                      awesomeness: data[0][name[:first_name]][:awesomeness],
                      height: data[0][name[:first_name]][:height],
                      last_name: data[0][name[:first_name]][:last_name],
                      motto: name[:motto]
                      }

  end
  merged_array
end

def find_cool(array)
  cool_array = []
  array.each do |element|
    if element[:temperature] == "cool"
      cool_array << element
    end
  end
  cool_array
end

def organize_schools(schools)
  organized_hash = {}
  schools.each do |keys, values|
    if organized_hash[values[:location]]
      organized_hash[values[:location]] << keys
    else
      organized_hash[values[:location]] = []
      organized_hash[values[:location]] << keys
    end
  end
  organized_hash
end

#r = ['rails', 'ruby', 'radio']
#not_r = ['rails', 'ruby', 'sails']

#puts begins_with_r(r)
#puts begins_with_r(not_r)
