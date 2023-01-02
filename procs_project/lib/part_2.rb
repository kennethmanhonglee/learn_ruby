# frozen_string_literal: true

def reverser(string, &prc)
  prc.call string.reverse
end
