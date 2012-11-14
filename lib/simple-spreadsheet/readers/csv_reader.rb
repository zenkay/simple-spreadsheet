class CsvReader < SpreadsheetReader

  def initialize(file)
    super
    @engine = CsvExtended.new(@path) # Roo
  end
  
  def foreach(sheet, &block)
    @engine.foreach(sheet, &block)
  end
  
  include RooModule

end