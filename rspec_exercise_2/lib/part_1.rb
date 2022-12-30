# frozen_string_literal: true

def partition(array, num)
  result = [[], []]

  array.each do |ele|
    if ele >= num
      result[1] << ele
    else
      result[0] << ele
    end
  end

  result
end

def merge(hash1, hash2)
  result = {}

  hash1.each { |key, val| result[key] = val }
  hash2.each { |key, val| result[key] = val }

  result
end

def censor(sentence, curses)
  sentence_a = sentence.split(' ')
  result = []

  sentence_a.each do |word|
    result << if curses.include? word.downcase
                censor_vowels(word)
              else
                word
              end
  end

  result.join(' ')
end

def censor_vowels(word)
  vowels = 'aeiou'
  result = ''

  word.each_char do |char|
    result += if vowels.include? char.downcase
                '*'
              else
                char
              end
  end

  result
end
