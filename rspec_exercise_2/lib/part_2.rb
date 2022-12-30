# frozen_string_literal: true

def palindrome?(string)
  middle = string.length / 2 + 1
  (0..middle).each do |i|
    return false unless string[i] == string[-i - 1]
  end

  true
end
