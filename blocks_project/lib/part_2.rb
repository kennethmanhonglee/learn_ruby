# frozen_string_literal: true

def all_words_capitalized?(words)
  words.all? { |word| word == "#{word[0].upcase}#{word[1...word.length].downcase}" }
end

def no_valid_url?(urls)
  valid_urls = ['com', 'net', 'io', 'org']

  urls.none? { |url| valid_urls.include? url.split('.')[1] }
end
