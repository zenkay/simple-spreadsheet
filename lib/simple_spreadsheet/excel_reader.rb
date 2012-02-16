require 'simple_spreadsheet/engine_module_roo'

class ExcelReader < SpreadsheetReader
  
  def initialize(file)
    super
    @engine = Excel.new(@path) # Roo
  end
  
  include EngineModuleRoo
  
end