require "easy_parser/version"
require "drivers/xlsx"
require "drivers/csv"

module EasyParser
  def self.process(filepath, opts = {})
  puts filepath.downcase
    driver = case(File.extname(filepath))
      when ".xlsx" then Drivers::Xlsx
      when ".csv" then Drivers::Csv
      else raise("Unsupported file extension")
    end
    driver.new(filepath, opts).process { |row| yield row }
  end
end
