module PrimesMultiplication
  # Represents generator of Prime Numbers with Ruby code
  class PrimeNumberSlow < PrimeNumberBase
    def self.prime?(p)
      return false if ((p % 2).zero? && p > 2) || p <= 1

      (3...p / 2).step(2) do |i|
        return false if (p % i).zero?
      end

      true
    end
  end
end
