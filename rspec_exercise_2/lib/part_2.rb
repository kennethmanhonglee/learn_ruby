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
  results = []
  (0...string.length).each do |i|
    results << string[i]
    (i + 1...string.length).each do |j|
      results << "#{results[-1]}#{string[j]}"
    end
  end

  results
end

def palindrome_substrings(string)
  substrings(string).filter { |sub| palindrome?(sub) && sub.length > 1 }
end
