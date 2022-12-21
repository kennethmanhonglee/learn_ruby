# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num_1, num_2)
  bigger = [num_1, num_2].max
  smaller = [num_1, num_2].min

  smaller_factors = (2...smaller).inject([]) do |acc, el|
    if smaller % el == 0
      acc << el
    end
    acc
  end
  
  smaller_factors.each do |num|
    return false if bigger % num == 0
  end
  return true
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
