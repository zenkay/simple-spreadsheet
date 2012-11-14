require 'roo/generic_spreadsheet'
require 'roo/csv'

class CsvExtended < Csv
  
  def foreach(sheet = nil, &block)
    index = 1
    CSV.foreach(@filename, col_sep: ",") do |row|
      yield(row, index)
      index += 1
    end
  end
  
end