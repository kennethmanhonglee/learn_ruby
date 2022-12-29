# frozen_string_literal: true

def hipsterfy(word)
  vowels = 'aeiou'
  last_vowel = nil
  (0...word.length).reverse_each do |i|
    if vowels.include? word[i]
      last_vowel = i
      break
    end
  end

  last_vowel ? "#{word[0...last_vowel]}#{word[last_vowel + 1..word.length - 1]}" : word
end

def vowel_counts(string)
  vowels = Hash.new(0)
  vowels_string = 'aeiou'

  string.each_char { |char| vowels[char.downcase] += 1 if vowels_string.include? char.downcase }
  vowels
end
