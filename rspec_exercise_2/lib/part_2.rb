# frozen_string_literal: true

def palindrome?(string)
  middle = string.length / 2 + 1
  (0..middle).each do |i|
    return false unless string[i] == string[-i - 1]
  end

  true
end

def substrings(string)
  #   nested loop - i starts at 0
  #     j starts at i
  #       results << results[-1] += string[j]
end
