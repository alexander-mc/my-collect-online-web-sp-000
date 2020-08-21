def my_collect(array)
  i = 0
  collect = []
  while i < array.length
    collection << yield array[i]
  end
end

