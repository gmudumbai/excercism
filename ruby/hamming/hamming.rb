module BookKeeping
   VERSION = 3 # Where the version number matches the one in the test.
end

class Hamming
  def self.compute(first_strand, second_strand)   
    raise ArgumentError if first_strand.length != second_strand.length

    return 0 if first_strand == second_strand
  
    first_strand.chars.zip(second_strand.chars).count {|a, b| a != b }      
  end
end