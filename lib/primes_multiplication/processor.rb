module PrimesMultiplication
  # Read an argument n (first n prime numbers). If no argument - the default value for n is 10.
  class Processor
    def self.run(fast)
      n = (ARGV[0] || 10).to_i
      klass = fast ? PrimeNumberFast : PrimeNumberSlow
      primes = klass.first(n)
      table = Table.new(primes).table
      view = TableView.new(table)

      view.display
    end
  end
end
