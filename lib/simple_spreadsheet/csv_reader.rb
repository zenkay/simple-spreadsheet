require 'simple_spreadsheet/engine_module_roo'

class CsvReader < SpreadsheetReader

  def initialize(file)
    super
    @engine = Csv.new(@path) # Roo
  end
  
  include EngineModuleRoo

end