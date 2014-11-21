class CsvExtended < Roo::CSV
  def initialize(path)
    super(path, csv_options: { col_sep: "," })
  end

  def foreach(sheet = nil, &block)
    index = 1
    CSV.foreach(@filename, csv_options) do |row|
      yield(row, index)
      index += 1
    end
  end
end
