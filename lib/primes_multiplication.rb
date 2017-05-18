require 'benchmark'
require 'primes_multiplication/version'
require 'primes_multiplication/prime_number_base'
require 'primes_multiplication/prime_number_fast'
require 'primes_multiplication/prime_number_slow'
require 'primes_multiplication/table'
require 'primes_multiplication/table_view'
require 'primes_multiplication/processor'

# Prints out a multiplication table of the first n prime number
module PrimesMultiplication
  module_function

  def run(fast = true)
    Processor.run(fast)
  end

  def benchmark(n)
    n ||= 100_000
    numbers = (1..n.to_i).to_a

    [PrimeNumberFast, PrimeNumberSlow].each do |klass|
      Benchmark.benchmark do |x|
        x.report(klass) do
          numbers.each { |num| klass.prime?(num) }
        end
      end
    end
  end
end
