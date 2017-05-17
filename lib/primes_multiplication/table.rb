module PrimesMultiplication
  # Generates multiplication table
  class Table
    attr_reader :numbers, :table

    def initialize(num)
      @numbers = num
      @table = generate
    end

    private

    def generate
      [headers] + numbers.inject([]) do |acc, n1|
        acc << [n1] + numbers.map { |n2| n1 * n2 }
      end
    end

    def headers
      @headers ||= [nil] + numbers
    end
  end
end
