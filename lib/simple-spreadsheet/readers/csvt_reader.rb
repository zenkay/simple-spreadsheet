class CsvtReader < SpreadsheetReader

  def initialize(file)
    super
    @engine = CsvtExtended.new(@path) # Roo
  end
  
  include RooModule

end