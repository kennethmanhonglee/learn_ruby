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
