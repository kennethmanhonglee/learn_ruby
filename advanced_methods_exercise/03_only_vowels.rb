# frozen_string_literal: true

# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.

# def only_vowels?(str)
#   vowels = 'aeiou'
#   str.split('').all? {|char| vowels.include? char}
# end

def only_vowels?(str)
  #   this version will use a hash instead of a string, which would have better time complexity
  vowels = {
    'a' => 0,
    'e' => 0,
    'i' => 0,
    'o' => 0,
    'u' => 0
  }

  str.split('').all? { |char| vowels.key? char }
end

p only_vowels?('aaoeee')  # => true
p only_vowels?('iou')     # => true
p only_vowels?('cat')     # => false
p only_vowels?('over')    # => false
