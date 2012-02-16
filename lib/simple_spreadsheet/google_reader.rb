require 'simple_spreadsheet/engine_module_roo'

class GoogleReader < SpreadsheetReader
  
  def initialize(file)
    super
    @engine = Google.new(@path) # Roo
  end
  
  include EngineModuleRoo

end