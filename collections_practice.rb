def begins_with_r(array)
  num = 0
  array.each do |i|
    name = i[0]
    if name == "r"
      num += 1
    end
  end
  if num == (array.length)
      true
  else
      false
  end
end

def contain_a(array)
  newarray = []
  array.each do |i|
  if i.include?("a")
    newarray << i
  end
end
newarray
end

def first_wa(array)
  newstring = ""
  array.each do |i|
  if i[0..1] == "wa"
    newstring << i
    break
  end
  end
  newstring
end

def remove_non_strings(array)
  newarray = []
  array.each do |i|
  if String === i
    newarray << i
  end
end
newarray
end

def count_elements(array)
  array.each do |values|
    values[:count] = 0
    name = values[:name]
    array.each do |hash|
       if hash[:name] == name
        values[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  collection = []
  keys.each do |name|
    firstname = name[:first_name]
    data.each do |persondata|
      if persondata[firstname]
        joined = persondata[firstname]
        joined[:first_name] = firstname
        collection << joined
      end
    end
  end
  collection
end

def find_cool(data)
newarray = []
  data.each do |values|
    if values[:temperature] == "cool"
      newarray << values
    end
  end
  newarray
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, values|
    location = values[:location]
    if organized_schools[location]
      organized_schools[location] << school
    else
      organized_schools[location] = []
      organized_schools[location] << school
    end
  end
  organized_schools
end
