require "easy_parser/version"
require "drivers/xlsx"

module EasyParser
  def self.process(filepath, opts = {})
  puts filepath.downcase
    driver = case(File.extname(filepath))
      when ".xlsx" then Drivers::Xlsx
      else raise("Unsupported file extension")
    end
    driver.new(filepath, opts).process { |row| yield row }
  end
end
