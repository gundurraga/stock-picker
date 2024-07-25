def stock_picker(prices)
  best_buy = 0
  best_sell = 0
  max_profit = 0

  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day + 1..-1].each_with_index do |sell_price, days_after_buy|
      profit = sell_price - buy_price
      next unless profit > max_profit

      max_profit = profit
      best_buy = buy_day
      best_sell = buy_day + days_after_buy + 1
    end
  end

  [best_buy, best_sell]
end

p stock_picker([17, 3, 6, 9, 15, 0, 8, 6, 1, 10, 49])
