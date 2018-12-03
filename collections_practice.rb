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
