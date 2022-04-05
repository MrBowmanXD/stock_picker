def stock_picker stocks 
  days = [0, 0]
  profit = 0

  min = stocks[0]
  min_index = 0
  stocks.each_with_index do |stock, index|
    if min > stock
      min = stock
      min_index = index
      next
    end

    if stock - min > profit
      profit = stock - min
      days = [min_index, index]
    end
  end

  days
end

puts stock_picker([17,3,6,9,15,8,6,1,10]) # the answer is [1, 4] and is zero based
