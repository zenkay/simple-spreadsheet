require 'simple-spreadsheet/modules/roo_module'

class OpenofficeReader < SpreadsheetReader
  
  def initialize(file)
    super
    @engine = Openoffice.new(@path) # Roo
  end
  
  include RooModule

end