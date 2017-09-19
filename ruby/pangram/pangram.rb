module BookKeeping
  VERSION = 5
end

class Pangram
  def self.pangram?(phrase)
    unused_letters = ('a'..'z').to_a - phrase.downcase.chars.to_a
    unused_letters.empty?
  end
end