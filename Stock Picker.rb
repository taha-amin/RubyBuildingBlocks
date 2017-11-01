=begin
Implement a method @stock_picker that takes in an array of stock prices,
one for each hypothetical day. It hsould return a pair of days representing
the best day to buy and the best day to sell. Days start at 0.
=end

def buy_and_sell(prices)
	best_buy = 0
	best_sell = 0
	best_diff_val = prices[best_sell] - prices[best_buy]
	current_buy = best_buy
	current_sell = best_sell
	prices.each_with_index do |number, index|
		if prices[current_sell] < number
			current_sell = index
		end
		if number < prices[current_buy]
			current_buy = index
			current_sell = index
		end
		if prices[current_sell] - prices[current_buy] > best_diff_val
			best_buy = current_buy
			best_sell = current_sell
			best_diff_val = prices[current_sell] - prices[current_buy]
		end
	end
	return [best_buy, best_sell]
end

prices = []
puts "Enter stock price for each day seperated by commas: "
input = gets.chomp
input = input.split(",")
input.each do |number|
	prices << number.to_i
end

print "#{buy_and_sell(prices)}\n"