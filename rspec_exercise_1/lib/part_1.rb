# frozen_string_literal: true

def average(num1, num2)
  (num1 + num2) / 2.0
end

def average_array(nums)
  nums.inject(&:+) / nums.length.to_f
end

def repeat(str, num)
  str * num
end

def yell(str)
  "#{str.upcase}!"
end

def alternating_case(str)
  sentence_a = str.split
  print sentence_a
  puts
  sentence_a.each.with_index do |word, i|
    sentence_a[i] = i.even? ? word.upcase : word.downcase
  end

  sentence_a.join(' ')
end
