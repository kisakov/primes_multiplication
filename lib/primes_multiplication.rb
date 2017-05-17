require 'terminal-table'
require 'primes_multiplication/version'
require 'primes_multiplication/prime_number'
require 'primes_multiplication/table'
require 'primes_multiplication/processor'

module PrimesMultiplication
  module_function

  def run
    Processor.run
  end
end
