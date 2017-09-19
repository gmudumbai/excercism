module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Raindrops
  
  def self.convert(number)
    raindrops = ''
    if number.remainder(3).zero?
      raindrops << 'Pling'
    end
    if number.remainder(5).zero?
      raindrops << 'Plang'
    end
    if number.remainder(7).zero?
      raindrops << 'Plong'
    end

    raindrops.empty? ? number.to_s : raindrops
  end
end