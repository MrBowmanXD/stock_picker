def stock_picker(array, new_array = [])
  if new_array == []
    sorted_array = array.sort
  else
    sorted_array = new_array
  end
  max = sorted_array[-1]
  min = sorted_array[0]
  max_index = 0
  min_index = 0
  array.each_with_index do |stock, index|
    max_index = index if stock == max
    min_index = index if stock == min
  end

  if min_index < max_index
    [min_index, max_index]
  else
    sorted_array.shift
    sorted_array.pop
    if sorted_array[0] == nil
      return
    else
      stock_picker(array, sorted_array)
    end
  end
end

# stock_picker([17,3,6,9,15,8,6,1,10])
#Answer: [1,4]
stock = [17,3,6,9,15,8,6,1,10]

p stock_picker(stock)