module PrimesMultiplication
  # Represents generator of Prime Numbers with Ruby code
  class PrimeNumberSlow < PrimeNumberBase
    def self.prime?(p)
      return false if p <= 1
      return false if (p % 2).zero? && p > 2

      (3..Math.sqrt(p)).step(2) do |i|
        return false if (p % i).zero?
      end

      true
    end
  end
end
