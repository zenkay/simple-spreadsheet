require 'simple_spreadsheet/engine_module_roo'

class ExcelxReader < SpreadsheetReader
  
  def initialize(file)
    super
    @engine = Excelx.new(file) # Roo
  end

  include EngineModuleRoo

end