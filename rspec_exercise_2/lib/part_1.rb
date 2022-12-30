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
