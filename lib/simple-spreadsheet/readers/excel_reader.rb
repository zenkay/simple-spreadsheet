class ExcelReader < SpreadsheetReader
    
  def initialize(file)
    super
    @engine = ExcelExtended.new(@path) # Roo
  end
  
  def foreach(sheet, &block)
    @engine.foreach(sheet, &block)
  end
  
  include RooModule
  
end