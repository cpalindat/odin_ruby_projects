def stock_picker(stock_prices)
  # iterate over array, storing the lowest value
  # check the next value, and calculate the profit
  # if the profit is higher, then update the lowest and highest values

  # Initiate lowest values based on index of stock_prices array
  buy_index = 0
  sell_index = 0
  

  # Loop over and check the values
  stock_prices.each_with_index do |price, index|
    max_profit = stock_prices[sell_index] - stock_prices[buy_index]
    p "Current Max Profit: #{max_profit}"
    
    stock_prices[index+1..-1].each_with_index do |future_price, future_index|
      p "Comparing #{stock_prices[sell_index]} against #{future_price}"
      if (future_price - stock_prices[buy_index]) > max_profit
        sell_index = future_index
        p "updated sell index"
      end
    end

  end

end


stock_picker([17,3,6,9,15,8,6,1,10])