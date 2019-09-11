require 'byebug'

def max_profit(prices)
    max = 0
    iterate_times = prices.length - 1
    (prices.length-1).times do |i|
        rest = prices[(i+1)..(prices.length-1)]
        if rest[0]
            rest_diff = rest.max - prices[i]
            if rest_diff > max
               max = rest_diff
            end
        end
    end
    max
end

p max_profit([1,2])
