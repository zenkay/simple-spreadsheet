require "simple_spreadsheet/version"

module SimpleSpreadsheet
  
  class SimpleSheet
    
    # READ_ONLY = "r"
    # READ_AND_WRITE = "rw"
    # WRITE_ONLY = "w"
    # 
    # def self.create(file, mode = READ_ONLY)
    #   @mode = mode
    #   case @mode
    #   when READ_ONLY
    #     self.init_reader(file)
    #   when READ_AND_WRITE
    #     self.init_editor(file)
    #   when WRITE_ONLY
    #     self.init_writer(file)
    #   else
    #     raise NotRecognizedModeException
    #   end
    # end
    
    def self.read(file)
      case File.extname(file)
      when '.xls'
        return ExcelReader.new(file)
      when '.xlsx'
        return ExcelxReader.new(file)
      when '.ods'
        return OpenofficeReader.new(file)
      when '.csv'
        return CsvReader.new(file)
      when '.xml'
        return ExcelxmlReader.new(file)
      else
        return GoogleReader.new(file)
      end
    end

    def self.edit(file)
      case File.extname(file)
      when '.xls'
        ExcelEditor.new(file)
      when '.xlsx'
        ExcelxEditor.new(file)
      when '.ods'
        OpenofficeEditor.new(file)
      when '.csv'
        CsvEditor.new(file)
      when '.xml'
        ExcelxmlEditor.new(file)
      else
        GoogleEditor.new(file)
      end
    end

    def self.write(file)
      case File.extname(file)
      when '.xls'
        ExcelWriter.new(file)
      when '.xlsx'
        ExcelxWriter.new(file)
      when '.ods'
        OpenofficeWriter.new(file)
      when '.csv'
        CsvWriter.new(file)
      when '.xml'
        ExcelxmlWriter.new(file)
      else
        GoogleWriter.new(file)
      end
    end
    
  end
  
  # General
  require 'simple_spreadsheet/generic_sheet'

  # General for mode
  require 'simple_spreadsheet/spreadsheet_reader'
  require 'simple_spreadsheet/spreadsheet_editor'
  require 'simple_spreadsheet/spreadsheet_writer'

  # .csv (CSV)
  require 'simple_spreadsheet/csv_reader'
  require 'simple_spreadsheet/csv_editor'
  require 'simple_spreadsheet/csv_writer'

  # .xls (Excel 97-2003)
  require 'simple_spreadsheet/excel_reader'
  require 'simple_spreadsheet/excel_editor'
  require 'simple_spreadsheet/excel_writer'

  # .xlsx (Excel 2007-2010)
  require 'simple_spreadsheet/excelx_reader'
  require 'simple_spreadsheet/excelx_editor'
  require 'simple_spreadsheet/excelx_writer'

  # .xml (Excel XML)
  require 'simple_spreadsheet/excelxml_reader'
  require 'simple_spreadsheet/excelxml_editor'
  require 'simple_spreadsheet/excelxml_writer'

  # .ods (Openoffice)
  require 'simple_spreadsheet/openoffice_reader'
  require 'simple_spreadsheet/openoffice_editor'
  require 'simple_spreadsheet/openoffice_writer'

  # url (Google Spreadsheet Online)
  require 'simple_spreadsheet/google_reader'
  require 'simple_spreadsheet/google_editor'
  require 'simple_spreadsheet/google_writer'
  
end

# Gems
require 'roo'
