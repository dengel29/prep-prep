#   # RULES
#   # NO "shorting"— you need to buy before you can sell aka index of low must be lower than index of high
#   # CAN'T buy and sell in the same time step—at least 1 minute has to pass. 



def get_max_profit(stock_prices)
  min_price = stock_prices[0]
  max_profit = 0

  stock_prices.each do |current_price|

    # check if current price is lower than min_price
    min_price = [min_price, current_price].min

    # potential profit
    potential_profit = current_price - min_price 

    # update max profit if we can do better
    max_profit = [max_profit, potential_profit].max 
  end
  max_profit
end


stock_prices = [10, 7, 5, 8, 11, 9]
stock_prices2 = [10, 4, 5, 6, 7, 8, 3]
# returns 6 (buying for $5 and selling for $11)

get_max_profit(stock_prices2)
