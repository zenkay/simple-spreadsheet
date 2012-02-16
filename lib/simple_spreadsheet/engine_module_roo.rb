module EngineModuleRoo
  
  def sheets
    @engine.sheets
  end

  def selected_sheet=(sheet)
    @engine.default_sheet = sheet
  end
  
  def first_row
    1
  end
  
  def last_row
    @engine.last_row
  end
  
  def cell(row, col)
    @engine.cell(row, col)
  end
  
end