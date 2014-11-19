class CsvxExtended < Roo::CSV

  def foreach(sheet = nil, &block)
    index = 1
    CSV.foreach(@filename, col_sep: ";") do |row|
      yield(row, index)
      index += 1
    end
  end

  def read_cells(sheet=nil)
    sheet ||= @default_sheet
    return if @cells_read[sheet]
    @first_row[sheet] = 1
    @last_row[sheet] = 0
    @first_column[sheet] = 1
    @last_column[sheet] = 1
    rownum = 1
    each_row csv_options.merge(col_sep: ";") do |row|
      row.each_with_index do |elem,i|
        @cell[[rownum,i+1]] = cell_postprocessing rownum,i+1, elem
        @cell_type[[rownum,i+1]] = celltype_class @cell[[rownum,i+1]]
        if i+1 > @last_column[sheet]
          @last_column[sheet] += 1
        end
      end
      rownum += 1
      @last_row[sheet] += 1
    end
    @cells_read[sheet] = true
    #-- adjust @first_row if neccessary
    while !row(@first_row[sheet]).any? and @first_row[sheet] < @last_row[sheet]
      @first_row[sheet] += 1
    end
    #-- adjust @last_row if neccessary
    while !row(@last_row[sheet]).any? and @last_row[sheet] and
        @last_row[sheet] > @first_row[sheet]
      @last_row[sheet] -= 1
    end
    #-- adjust @first_column if neccessary
    while !column(@first_column[sheet]).any? and
          @first_column[sheet] and
          @first_column[sheet] < @last_column[sheet]
      @first_column[sheet] += 1
    end
    #-- adjust @last_column if neccessary
    while !column(@last_column[sheet]).any? and
          @last_column[sheet] and
          @last_column[sheet] > @first_column[sheet]
      @last_column[sheet] -= 1
    end
  end

end