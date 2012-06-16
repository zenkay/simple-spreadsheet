class ExcelReader < SpreadsheetReader
    
  def initialize(file)
    super
    @engine = ExcelExtended.new(@path) # Roo
  end
  
  include RooModule
  
end