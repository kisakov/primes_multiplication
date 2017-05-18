require 'inline'

module PrimesMultiplication
  # Represents generator of Prime Numbers with C code
  class PrimeNumberFast < PrimeNumberBase
    inline do |builder|
      builder.c_singleton '
        int prime(int num) {
          if (num <= 1) return 0;
          if (num % 2 == 0 && num > 2) return 0;

          for(int i = 3; i < num / 2; i+= 2)
          {
             if (num % i == 0) return 0;
          }

          return 1;
        }
      '
    end

    def self.prime?(p)
      prime(p) == 1
    end
  end
end
