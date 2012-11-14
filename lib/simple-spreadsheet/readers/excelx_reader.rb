class ExcelxReader < SpreadsheetReader
  
  def initialize(file)
    super
    @engine = ExcelxExtended.new(file) # Roo
  end

  def foreach(sheet, &block)
    @engine.foreach(sheet, &block)
  end
  
  include RooModule

end