module PrimesMultiplication
  # Represents generator of Prime Numbers using "AKS primality test" algorythm
  class PrimeNumber
    class << self
      def prime?(p)
        return false if p < 2

        coeff = x_minus_1_to_the(p)
        coeff[0] += coeff.pop
        coeff.all? { |n| (n % p).zero? }
      end

      def first(n)
        sequence.take(n)
      end

      private

      def sequence
        Enumerator.new do |y|
          n = 2
          loop do
            y << n if prime?(n)
            n += 1
          end
        end
      end

      def x_minus_1_to_the(p)
        p.times.inject([1]) do |ex, _|
          ([0] + ex).zip(ex + [0]).map { |x, y| x - y }
        end
      end
    end
  end
end
