# frozen_string_literal: true

def all_words_capitalized?(words)
  words.all? { |word| word == "#{word[0].upcase}#{word[1...word.length].downcase}" }
end
