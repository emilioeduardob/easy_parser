module Drivers
  class Csv
    def initialize(filename, opts = {})
        @filename = filename
        @from = opts.fetch(:from_row, 1) - 1
    end

    def process
      i = 0
      CSV.foreach(@filename, col_sep: ";", quote_char: '"') do |row|
        yield row if i >= @from
        i = i + 1
      end
    end
  end
end