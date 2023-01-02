# frozen_string_literal: true

def reverser(string, &prc)
  prc.call string.reverse
end

def word_changer(sentence, &prc)
  sentence.split(' ').map(&prc).join(' ')
end

def greater_proc_value(number, prc1, prc2)
  [prc1.call(number), prc2.call(number)].max
end

def and_selector(array, prc1, prc2)
  array.select { |ele| prc1.call(ele) && prc2.call(ele) }
end

def alternating_mapper(array, prc1, prc2)
  results = []
  array.each.with_index do |ele, i|
    results << if i.even?
                 prc1.call ele
               else
                 prc2.call ele
               end
  end
  results
end
