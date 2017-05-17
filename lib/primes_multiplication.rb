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
end
