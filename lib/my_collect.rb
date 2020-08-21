def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

=begin
def my_collect(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield array[i]
    i = i + 1
  end
  collection
end
=end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
hello(array) do |name|
  name.split(" ").first
end