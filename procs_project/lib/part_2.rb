# frozen_string_literal: true

def reverser(string, &prc)
  prc.call string.reverse
end

def word_changer(sentence, &prc)
  sentence.split(' ').map(&prc).join(' ')
end
