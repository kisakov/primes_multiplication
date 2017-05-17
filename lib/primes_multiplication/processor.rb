module PrimesMultiplication
  # Read an argument n (first n prime numbers). If no argunemnt - th e dafualt value for n is 10
  class Processor
    def self.run
      n = (ARGV[0] || 10).to_i
      primes = PrimeNumber.first(n)
      table = Table.new(primes).table
      view = TableView.new(table)

      view.display
    end
  end
end
