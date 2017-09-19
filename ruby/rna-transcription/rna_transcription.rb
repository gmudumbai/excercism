module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

class Complement
  def self.of_dna(dna)
    begin
      dna.chars.collect{|strand| self.of_strand(strand)}.join('')
    rescue ArgumentError
      ''
    end
  end

  def self.of_strand(strand)
    case strand
    when 'A'
      'U'
    when 'T'
      'A'
    when 'C'
      'G'
    when 'G'
      'C'
    else
      raise ArgumentError
    end
  end
end