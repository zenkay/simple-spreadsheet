class CsvReader < SpreadsheetReader

  def initialize(file)
    super
    @engine = CsvExtended.new(@path) # Roo
  end
  
  include RooModule

end