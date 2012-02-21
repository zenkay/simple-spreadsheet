require "simple_spreadsheet/version"

module SimpleSpreadsheet
  
  class Workbook
        
    def self.read(file, ext = nil)
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
      when '.csvt'
        return CsvtReader.new(file)
      else
        return nil
      end
    end

    def self.edit(file, ext = nil)
      ext = File.extname(file) if ext.nil?
      case ext
      when '.xls'
        ExcelEditor.new(file)
      when '.xlsx'
        ExcelxEditor.new(file)
      when '.ods'
        OpenofficeEditor.new(file)
      when '.csv'
        CsvEditor.new(file)
      when '.csvz'
        return CsvzEditor.new(file)
      when '.csvt'
        return CsvtEditor.new(file)
      else
        return nil
      end
    end

    def self.write(file, ext = nil)
      ext = File.extname(file) if ext.nil?
      case ext
      when '.xls'
        ExcelWriter.new(file)
      when '.xlsx'
        ExcelxWriter.new(file)
      when '.ods'
        OpenofficeWriter.new(file)
      when '.csv'
        CsvWriter.new(file)
      when '.csvz'
        return CsvzWriter.new(file)
      when '.csvt'
        return CsvtWriter.new(file)
      else
        return nil
      end
    end
    
  end
  
  # General
  require 'simple_spreadsheet/generic_sheet'

  # Extendend classes
  require 'simple_spreadsheet/classes/excel_extended'
  require 'simple_spreadsheet/classes/csv_extended'
  require 'simple_spreadsheet/classes/csvx_extended'
  require 'simple_spreadsheet/classes/csvt_extended'

  # General for mode
  require 'simple_spreadsheet/readers/spreadsheet_reader'
  require 'simple_spreadsheet/editors/spreadsheet_editor'
  require 'simple_spreadsheet/writers/spreadsheet_writer'

  # .xls (Excel 97-2003)
  require 'simple_spreadsheet/readers/excel_reader'
  require 'simple_spreadsheet/editors/excel_editor'
  require 'simple_spreadsheet/writers/excel_writer'

  # .xlsx (Excel 2007-2010)
  require 'simple_spreadsheet/readers/excelx_reader'
  require 'simple_spreadsheet/editors/excelx_editor'
  require 'simple_spreadsheet/writers/excelx_writer'

  # .ods (Openoffice)
  require 'simple_spreadsheet/readers/openoffice_reader'
  require 'simple_spreadsheet/editors/openoffice_editor'
  require 'simple_spreadsheet/writers/openoffice_writer'

  # .csv (CSV)
  require 'simple_spreadsheet/readers/csv_reader'
  require 'simple_spreadsheet/editors/csv_editor'
  require 'simple_spreadsheet/writers/csv_writer'

  # .csvx (CSV)
  require 'simple_spreadsheet/readers/csvx_reader'

  # .csvt (CSV)
  require 'simple_spreadsheet/readers/csvt_reader'

  
end

# Gems
require 'roo'

