module PrimesMultiplication
  # Prints table to STDOUT
  class TableView < Struct.new(:table)
    EMPTY_WARNING = 'Table is empty!'.freeze

    def display
      return (puts EMPTY_WARNING) if table.empty?

      table.each { |row| display_row(row) }
    end

    private

    def display_row(row)
      puts row.map { |cell| cell.to_s.rjust(padding) }.join(' ')
    end

    def padding
      @padding ||= table[-1][-1].to_s.size
    end
  end
end
