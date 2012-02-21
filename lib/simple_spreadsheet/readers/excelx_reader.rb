require 'simple_spreadsheet/modules/roo_module'

class ExcelxReader < SpreadsheetReader
  
  def initialize(file)
    super
    @engine = Excelx.new(file) # Roo
  end

  include RooModule

end