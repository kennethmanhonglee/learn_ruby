# frozen_string_literal: true

def my_map(array, &prc)
  results = []
  array.each { |ele| results << prc.call(ele) }
  results
end

def my_select(array, &prc)
  results = []
  array.each { |ele| results << ele if prc.call ele }
  results
end
