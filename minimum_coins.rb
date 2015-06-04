  #You are given 3 coins of value 1, 3 and 5. You are also given a total which
  #you have to arrive at. Find the minimum number of coins to arrive at it.

class MinimumCoinFinder
  def coin_counter
    [5,3,1].each do |number|
      return if @total_count == 0
      coins = @total_count.to_i / number
      @total_count = @total_count - (number * coins)
      @number_of_coins += coins
    end
  end

  def run
    File.open(ARGV[0]).each_line do |line|
      @number_of_coins = 0
      @total_count = line.to_i
      coin_counter

      puts @number_of_coins
    end
  end
end

coin_counter = MinimumCoinFinder.new
coin_counter.run



