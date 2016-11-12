class String
  def add_punctuation(word)
    punctuation = [',', '.', '?', '!']
    if punctuation.include?(self[self.length - 1])
      word + self[self.length - 1]
    else
      word
    end
  end

  def is_capitalized?
    self == self.capitalize
  end
end

class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    output = []
    str.split(' ').each do |word|
      if word.length > 4
        if word.is_capitalized?
          output << word.add_punctuation("Marklar")
        else
          output << word.add_punctuation("marklar")
        end
      else
        output << word
      end
    end
    output.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
  end

end
