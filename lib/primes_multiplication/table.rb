module PrimesMultiplication
  class Table
    attr_reader :numbers, :table

    def initialize(_numbers)
      @numbers = _numbers
      @table = generate
    end

    def generate
      numbers.inject([]) do |acc, n1|
        acc << [n1] + numbers.map { |n2| n1 * n2 }
      end
    end
  end
end
