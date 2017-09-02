require "creek"
module Drivers
    class Xlsx
    def initialize(filename, opts = {})
        @filename = filename
        @from = opts.fetch(:from_row, 1) - 1
    end

    def process
        sheet.rows.each_with_index do |row, i|
            yield Row.new(row) if i >= @from
        end
    end

    def book
        @book ||= Creek::Book.new(@filename)
    end

    def sheet
        @sheet ||= book.sheets[0]
    end

    class Row
        def initialize(native_row)
            @row = native_row.values
        end

        def [](i)
            @row[i]
        end
    end
    end
end