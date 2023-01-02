# frozen_string_literal: true

def my_map(array, &prc)
  results = []
  array.each { |ele| results << prc.call(ele) }
  results
end
