module PrimesMultiplication
  # Prints multiplication table to STDOUT
  class Table
    attr_reader :numbers, :table

    def initialize(num)
      @numbers = num
      @table = generate
    end

    def display
      puts Terminal::Table.new(headings: [nil] + numbers, rows: table)
    end

    private

    def generate
      numbers.inject([]) do |acc, n1|
        acc << [n1] + numbers.map { |n2| n1 * n2 }
      end
    end
  end
end
