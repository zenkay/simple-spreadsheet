class CsvExtended < Roo::Csv

  def foreach(sheet = nil, &block)
    index = 1
    CSV.foreach(@filename, col_sep: ",") do |row|
      yield(row, index)
      index += 1
    end
  end

end