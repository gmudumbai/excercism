module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(number)
    @number = number
  end

  def primes_hash
    primes = [] 
    number_hash = Hash[(2..@number).to_a.collect { |v| [v, true] }]

    number_hash.each do |num, is_prime| 
      break if Math.sqrt(@number) < num
      next unless is_prime       
           
      (num*num).step(@number, num) do |num_1|
        number_hash[num_1] = false         
      end      
    end 
     
    primes = number_hash.keep_if{|num, is_prime| is_prime}.keys
    primes
  end

  def primes
    primes = (2..@number).to_a

    primes.each_with_index do |num, index|
      next if num.nil?
      break if Math.sqrt(@number) < num       

      (num*num).step(@number, num) do |num_1|        
          primes[num_1 - 2] = nil        
      end
    end

    primes.compact
  end

end