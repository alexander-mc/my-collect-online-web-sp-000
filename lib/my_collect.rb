def my_collect(list)
  i = 0
  collection = []
  while i < list.length
    collection << yield list[i]
    i = i + 1
  end
  collection
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end