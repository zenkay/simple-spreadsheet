require 'simple-spreadsheet/modules/roo_module'

class ExcelReader < SpreadsheetReader
  
  def initialize(file)
    super
    @engine = ExcelExtended.new(@path) # Roo
  end
  
  include RooModule
  
end