class ExcelReader < SpreadsheetReader
  
  def initialize(file)
    super
    @engine = Excel.new(@path) # Roo
  end
  
  # require 'engine_module_roo'
  
end