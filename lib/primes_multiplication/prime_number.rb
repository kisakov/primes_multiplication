module PrimesMultiplication
  class PrimeNumber
    class << self

      def prime?(p)
        return false if p < 2

        coeff = x_minus_1_to_the(p)
        coeff[0] += coeff.pop
        coeff.all? { |n| n % p == 0 }
      end

      private

      def x_minus_1_to_the(p)
        p.times.inject([1]) do |ex, _|
          ([0] + ex).zip(ex + [0]).map { |x, y| x - y }
        end
      end

    end
  end
end
