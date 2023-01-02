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
