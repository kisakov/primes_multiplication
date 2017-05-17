module PrimesMultiplication
  # Prints multiplication table to STDOUT
  class Table
    attr_reader :numbers, :table

    def initialize(num)
      @numbers = num
      @table = generate
    end

    def display
      return (puts 'Table is empty!') if table.empty?

      table.each { |row| display_row(row) }
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

    def display_row(row)
      puts row.map { |cell| cell.to_s.rjust(padding) }.join(' ')
    end

    def padding
      @padding ||= table[-1][-1].to_s.size
    end
  end
end
