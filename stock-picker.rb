def stock_picker(prices)
    max_profit = {buy: 0, sell: 0, profit: 0}
    prices.each_with_index do |buy, buy_index|
        prices.each_with_index do |sell, sell_index|
            sell_index < buy_index ? next : nil
            if (sell - buy) > max_profit[:profit]
                max_profit[:profit] = sell - buy
                max_profit[:buy] = buy_index
                max_profit[:sell] = sell_index
            end
        end
    end
    return max_profit[:buy],max_profit[:sell]
end

stock_prices = [17,3,6,9,15,8,6,1,10]
p stock_picker(stock_prices)