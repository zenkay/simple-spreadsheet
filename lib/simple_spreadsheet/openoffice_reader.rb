require 'simple_spreadsheet/engine_module_roo'

class OpenofficeReader < SpreadsheetReader
  
  def initialize(file)
    super
    @engine = Openoffice.new(@path) # Roo
  end
  
  include EngineModuleRoo

end