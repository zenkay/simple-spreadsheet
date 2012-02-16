class ExcelxReader < SpreadsheetReader
  
  def initialize(file)
    super
    @engine = Excelx.new(file) # Roo
  end

  # require 'engine_module_roo'
  
end