module BookKeeping
  VERSION = 6
end

class Gigasecond
  GIGASECOND = 1E9
  def self.from(birth_time)
    birth_time + GIGASECOND
  end
end
