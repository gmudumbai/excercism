module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    ((1..@number).inject(:+))**2
  end

  def sum_of_squares
    (1..@number).inject{|sum, x| sum + x**2}
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
