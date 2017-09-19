module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

def Fixnum
  def to_roman
    numerals = {1 => I, 5 => V, 10 => X, 50 => L, 100 => C, 500 => D, 1000 => M}
    numbers = numerals.keys.reverse
    roman_rep = ''

    remainder = 0
    numbers.each do |divisor|
      temp_rem = this.remainder(divisor)
      
    end
  end
end