require 'roo/generic_spreadsheet'
require 'roo/excel'

class ExcelExtended < Excel
  
  def foreach(sheet=nil, &block)
    sheet = @default_sheet unless sheet
    raise ArgumentError, "Error: sheet '#{sheet||'nil'}' not valid" if @default_sheet == nil and sheet==nil
    raise RangeError unless self.sheets.include? sheet
    
    if @cells_read[sheet]
      raise "sheet #{sheet} already read"
    end
    
    worksheet = @workbook.worksheet(sheet_no(sheet))
    row_index=1
    worksheet.each(0) do |row| 
      row_content = []
      (0..row.size).each do |cell_index|
        cell = row.at(cell_index)
        next if cell.nil?  #skip empty cells
        next if cell.class == Spreadsheet::Formula && cell.value.nil? # skip empty formula cells
        if date_or_time?(row, cell_index)
          vt, v = read_cell_date_or_time(row, cell_index)
        else
          vt, v = read_cell(row, cell_index)
        end
        formula = tr = nil #TODO:???
        col_index = cell_index + 1
        font = row.format(cell_index).font
        font.extend(ExcelFontExtensions)
        # set_cell_values(sheet,row_index,col_index,0,v,vt,formula,tr,font)
        row_content << v
      end #row
      yield(row_content, row_index)
      row_index += 1
    end # worksheet
  end
  
end