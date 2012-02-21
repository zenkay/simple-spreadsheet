require 'simple_spreadsheet/modules/roo_module'

class CsvReader < SpreadsheetReader

  def initialize(file)
    super
    @engine = CsvExtended.new(@path) # Roo
  end
  
  include RooModule

end