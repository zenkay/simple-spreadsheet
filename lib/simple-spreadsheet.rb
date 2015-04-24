require "simple-spreadsheet/version"
require 'roo'

module SimpleSpreadsheet

  require 'simple-spreadsheet/modules/roo_module'

  class Workbook

    def self.read(file, ext = nil)
      file = file.to_s
      ext = File.extname(file) if ext.nil?
      case ext
      when '.xls'
        return ExcelReader.new(file)
      when '.xlsx'
        return ExcelxReader.new(file)
      when '.ods'
        return OpenofficeReader.new(file)
      when '.csv'
        return CsvReader.new(file)
      when '.csvx'
        return CsvxReader.new(file)
      when '.csvt', '.tsv'
        return CsvtReader.new(file)
      else
        return nil
      end
    end

    # def self.edit(file, ext = nil)
    #   ext = File.extname(file) if ext.nil?
    #   case ext
    #   when '.xls'
    #     ExcelEditor.new(file)
    #   when '.xlsx'
    #     ExcelxEditor.new(file)
    #   when '.ods'
    #     OpenofficeEditor.new(file)
    #   when '.csv'
    #     CsvEditor.new(file)
    #   when '.csvz'
    #     return CsvzEditor.new(file)
    #   when '.csvt'
    #     return CsvtEditor.new(file)
    #   else
    #     return nil
    #   end
    # end
    #
    # def self.write(file, ext = nil)
    #   ext = File.extname(file) if ext.nil?
    #   case ext
    #   when '.xls'
    #     ExcelWriter.new(file)
    #   when '.xlsx'
    #     ExcelxWriter.new(file)
    #   when '.ods'
    #     OpenofficeWriter.new(file)
    #   when '.csv'
    #     CsvWriter.new(file)
    #   when '.csvz'
    #     return CsvzWriter.new(file)
    #   when '.csvt'
    #     return CsvtWriter.new(file)
    #   else
    #     return nil
    #   end
    # end

  end

  # General
  require 'simple-spreadsheet/generic_sheet'

  # Extendend classes
  require 'simple-spreadsheet/classes/excel_extended'
  require 'simple-spreadsheet/classes/excelx_extended'
  require 'simple-spreadsheet/classes/csv_extended'
  require 'simple-spreadsheet/classes/csvx_extended'
  require 'simple-spreadsheet/classes/csvt_extended'

  # General for mode
  require 'simple-spreadsheet/readers/spreadsheet_reader'
  require 'simple-spreadsheet/editors/spreadsheet_editor'
  require 'simple-spreadsheet/writers/spreadsheet_writer'

  # .xls (Excel 97-2003)
  require 'simple-spreadsheet/readers/excel_reader'
  require 'simple-spreadsheet/editors/excel_editor'
  require 'simple-spreadsheet/writers/excel_writer'

  # .xlsx (Excel 2007-2010)
  require 'simple-spreadsheet/readers/excelx_reader'
  require 'simple-spreadsheet/editors/excelx_editor'
  require 'simple-spreadsheet/writers/excelx_writer'

  # .ods (Openoffice)
  require 'simple-spreadsheet/readers/openoffice_reader'
  require 'simple-spreadsheet/editors/openoffice_editor'
  require 'simple-spreadsheet/writers/openoffice_writer'

  # .csv (CSV)
  require 'simple-spreadsheet/readers/csv_reader'
  require 'simple-spreadsheet/editors/csv_editor'
  require 'simple-spreadsheet/writers/csv_writer'

  # .csvx (CSV)
  require 'simple-spreadsheet/readers/csvx_reader'

  # .csvt (CSV)
  require 'simple-spreadsheet/readers/csvt_reader'

end

# Gems
require 'roo'

if RUBY_VERSION < '1.9'
  require 'iconv'
end

