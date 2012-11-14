require 'roo/generic_spreadsheet'
require 'roo/excelx'

class ExcelxExtended < Excelx
  
    def foreach(sheet = nil, &block)
      sheet = @default_sheet unless sheet
      sheet_found = false
      raise ArgumentError, "Error: sheet '#{sheet||'nil'}' not valid" if @default_sheet == nil and sheet==nil
      raise RangeError unless self.sheets.include? sheet
      n = self.sheets.index(sheet)
      row_index = 1
      @sheet_doc[n].xpath("//*[local-name()='c']").each do |c|
        s_attribute = c['s'].to_i   # should be here
        # c: <c r="A5" s="2">
        # <v>22606</v>
        # </c>, format: , tmp_type: float
        if c['t'] == 's'
          tmp_type = :shared
        elsif c['t'] == 'b'
          tmp_type = :boolean
          # 2011-02-25 BEGIN
        elsif c['t'] == 'str'
          tmp_type = :string
          # 2011-02-25 END
          # 2011-09-15 BEGIN
        elsif c['t'] == 'inlineStr'
  	      tmp_type = :inlinestr
          # 2011-09-15 END
        else
          s_attribute = c['s'].to_i
          format = attribute2format(s_attribute)
          tmp_type = format2type(format)
        end
        formula = nil
        row_content = []
        c.children.each do |cell|
  	      # 2011-09-15 BEGIN
          if cell.name == 'is'
            cell.children.each do |is|
              if is.name == 't'
                inlinestr_content = is.content
                vt = :string
                str_v = inlinestr_content
                excelx_type = :string
                y, x = GenericSpreadsheet.split_coordinate(c['r'])
                v = nil
                tr=nil #TODO: ???s
                excelx_value = inlinestr_content #cell.content
                # set_cell_values(sheet,x,y,0,v,vt,formula,tr,str_v,excelx_type,excelx_value,s_attribute)
                puts v
                row_content << v
              end
            end
          end
  	      # 2011-09-15 END
          if cell.name == 'f'
            formula = cell.content
          end
          if cell.name == 'v'
            if tmp_type == :time or tmp_type == :datetime
              if cell.content.to_f >= 1.0 
                if (cell.content.to_f - cell.content.to_f.floor).abs > 0.000001 
                  tmp_type = :datetime 
                else
                  tmp_type = :date
                end
              else
              end 
            end
            excelx_type = [:numeric_or_formula,format.to_s]
            excelx_value = cell.content
            if tmp_type == :shared
              vt = :string
              str_v = @shared_table[cell.content.to_i]
              excelx_type = :string
            elsif tmp_type == :boolean
              vt = :boolean
              cell.content.to_i == 1 ? v = 'TRUE' : v = 'FALSE'
            elsif tmp_type == :date
              vt = :date
              v = cell.content
            elsif tmp_type == :time
              vt = :time
              v = cell.content
            elsif tmp_type == :datetime
              vt = :datetime
              v = cell.content
            elsif tmp_type == :formula
              vt = :formula
              v = cell.content.to_f #TODO: !!!!
              # 2011-02-25 BEGIN
            elsif tmp_type == :string
              vt = :string
              str_v = cell.content
              excelx_type = :string
              # 2011-02-25 END
            else
              vt = :float
              v = cell.content
            end
            y, x = GenericSpreadsheet.split_coordinate(c['r'])
            tr=nil #TODO: ???s
            # set_cell_values(sheet,x,y,0,v,vt,formula,tr,str_v,excelx_type,excelx_value,s_attribute)
            puts v
            row_content << v
          end
        end
        yield(row_content, row_index)
        row_index += 1
      end
      sheet_found = true #TODO:
      if !sheet_found
        raise RangeError
      end
      @cells_read[sheet] = true

    end
  
end