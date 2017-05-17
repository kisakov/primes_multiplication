module PrimesMultiplication
  # Represents base class for Prime Numbers
  class PrimeNumberBase
    class << self
      def prime?(p)
        raise NotImplementedError
      end

      def first(n = 1)
        sequence.first(n)
      end

      private

      def sequence
        (2..Float::INFINITY).lazy.select { |i| prime? i }
      end
    end
  end
end
