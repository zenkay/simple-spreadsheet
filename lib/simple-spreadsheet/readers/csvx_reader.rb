class CsvxReader < SpreadsheetReader

  def initialize(file)
    super
    @engine = CsvxExtended.new(@path) # Roo
  end
  
  include RooModule

end