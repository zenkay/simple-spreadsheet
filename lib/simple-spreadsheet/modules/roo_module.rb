module RooModule

  def sheets
    @engine.sheets
  end

  def selected_sheet=(sheet)
    if sheet.is_a? Integer
      @engine.default_sheet = @engine.sheets[sheet - 1]
    else
      @engine.default_sheet = sheet
    end
  end

  def first_row
    1
  end

  def last_row
    @engine.last_row
  end

  def first_column
    @engine.first_column
  end

  def last_column
    @engine.last_column
  end

  def cell(row, col, sheet=nil)
    sheet = @engine.default_sheet if sheet.nil?
    if sheet.is_a? Integer
      @engine.cell(row, col, @engine.sheets[sheet - 1])
    else
      @engine.cell(row, col, sheet)
    end
  end

  def celltype(row, col, sheet=nil)
    sheet = @engine.default_sheet if sheet.nil?
    if sheet.is_a? Integer
      @engine.celltype(row, col, @engine.sheets[sheet - 1])
    else
      @engine.celltype(row, col, sheet)
    end
  end

end
