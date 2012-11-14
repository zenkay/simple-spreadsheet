class CsvxReader < SpreadsheetReader

  def initialize(file)
    super
    @engine = CsvxExtended.new(@path) # Roo
  end
  
  def foreach(sheet, &block)
    @engine.foreach(sheet, &block)
  end
  
  include RooModule

end