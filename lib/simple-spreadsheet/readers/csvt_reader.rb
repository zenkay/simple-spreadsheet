class CsvtReader < SpreadsheetReader

  def initialize(file)
    super
    @engine = CsvtExtended.new(@path) # Roo
  end
  
  def foreach(sheet, &block)
    @engine.foreach(sheet, &block)
  end
  
  include RooModule

end