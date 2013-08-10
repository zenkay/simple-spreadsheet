class OpenofficeReader < SpreadsheetReader

  def initialize(file)
    super
    @engine = Roo::Openoffice.new(@path) # Roo
  end

  include RooModule

end