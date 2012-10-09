class SpreadsheetReader < GenericSheet

  def sheets
    # return array of sheets manes
  end

  def selected_sheet=(sheet)
    # set default sheet
  end
  
  def first_row
    # return first row index
  end
  
  def last_row
    # return last row index
  end
  
  def first_column
    # return first column index
  end
  
  def last_column
    # return last column index
  end
  
  def cell(row, col, sheet=nil)
    # return cell content
  end

  def celltype(row, col, sheet=nil)
    # return cell type
  end
  
  def parse(&block)
    # cicle on each line and execute block
  end
  
end