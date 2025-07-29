def stock_picker(stock_prices)
  profit = 0
  buy_sell_days = []
  stock_prices.each_with_index do |initial_price, initial_day|
    remaining_days = stock_prices[initial_day+1..]
    # we could write this as stock_prices[initial_day..]
    # but this would mean always comparing the initial day price to itself, giving $0 each time
    remaining_days.each_with_index do |final_price,final_day|
      if final_price - initial_price > profit
        profit = final_price - initial_price
        buy_sell_days = [initial_day,initial_day+final_day+1]
        # if stock_prices is [17,3,6,9,15], and day 0 = $17, day 1 = $3,
        # by the second day (day 1, $3), the remaining_days is [6,9,15] with idx 2 giving $15
        #
        # because this is 3 days (idx 2 + 1) after the second day (day 1),
        # we need to get the original index, add the final_day index, and add 1 
        # to account for the additional zero index from the remaining_days array
        # 
        # this means [17,3,6,9,15] correctly returns [1,4] instead of [1,3]
      end
    end
  end
  buy_sell_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([17,3,6,9,15,8,6,1,100])
p stock_picker([17,3,6,9,15,8,6,11,100])
p stock_picker([0,3,6,9,15,8,6,11,100])