class OpenofficeReader < SpreadsheetReader

  def initialize(file)
    super
    @engine = Roo::OpenOffice.new(@path) # Roo
  end

  include RooModule

end