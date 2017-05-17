module PrimesMultiplication
  class Processor
    def self.run
      n = (ARGV[0] || 10).to_i
      primes = PrimeNumber.first(n)
      table = Table.new(primes)

      table.display
    end
  end
end
