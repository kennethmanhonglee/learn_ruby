# frozen_string_literal: true

def select_even_nums(nums)
  nums.select(&:even?)
end

def reject_puppies(dogs)
  dogs.reject { |dog| dog['age'] <= 2 }
end

def count_positive_subarrays(arrays)
  arrays.count { |array| array.sum.positive? }
end

def aba_translate(word)
  vowels = 'aeiou'
  result = ''
  word.each_char do |char|
    result += if vowels.include? char
                "#{char}b#{char}"
              else
                char
              end
  end
  result
end
