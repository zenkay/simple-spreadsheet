# encoding: utf-8
require 'spec_helper'

describe SimpleSpreadsheet do
  
  describe "Open Excel (.xls) file read-only mode" do
    it "should can open the file" do
      @workbook = SimpleSpreadsheet::SimpleSheet.read(File.join(File.dirname(__FILE__), "fixtures/empty_file.xls"))
      @workbook.should_not be_nil
      @workbook.class.to_s.should eq("ExcelReader")
    end
  end

  describe "Open Excelx (.xlsx) file read-only mode" do
    it "should can open the file" do
      @workbook = SimpleSpreadsheet::SimpleSheet.read(File.join(File.dirname(__FILE__), "fixtures/empty_file.xlsx"))
      @workbook.should_not be_nil
      @workbook.class.to_s.should eq("ExcelxReader")
    end
  end
  
end