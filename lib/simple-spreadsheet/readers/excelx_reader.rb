class ExcelxReader < SpreadsheetReader
  
  def initialize(file)
    super
    @engine = ExcelxExtended.new(file) # Roo
  end

  def foreach(sheet, &block)
    @engine.foreach(sheet, &block)
  end
  
  def excelx_value(row, col, sheet=nil)
    sheet = @engine.default_sheet if sheet.nil?
    if sheet.is_a? Integer
      @engine.excelx_value(row, col, @engine.sheets[sheet - 1])
    else
      @engine.excelx_value(row, col, sheet)
    end
  end
  
  include RooModule

end