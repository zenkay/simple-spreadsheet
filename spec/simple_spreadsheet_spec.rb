# encoding: utf-8
require 'spec_helper'

describe SimpleSpreadsheet do
  
  describe "Open Excel (.xls) file read-only mode" do
    before do
      @workbook = SimpleSpreadsheet::SimpleSheet.read(File.join(File.dirname(__FILE__), "fixtures/file.xls"))
    end
    it "should can open the file" do
      @workbook.should_not be_nil
    end
    it "should use right class" do
      @workbook.class.to_s.should eq("ExcelReader")
    end
    it "should see the right number of sheets" do
      @workbook.sheets.count.should eq(2)
    end
    it "should read strings from first sheets" do
      @workbook.cell(1, 1).should eq("String1")
    end
    it "should read integer from first sheets" do
      @workbook.cell(1, 2).should eq(1)
    end
    it "should read strings from other sheets" do
      @workbook.cell(1, 1, 2).should eq("String2")
    end
    it "should read integer from other sheets" do
      @workbook.cell(1, 2, 2).should eq(2)
    end
    it "should read strings from other sheets (way 2)" do
      @workbook.default_sheet = 2
      @workbook.cell(1, 1).should eq("String2")
    end
    it "should read integer from other sheets (way 2)" do
      @workbook.default_sheet = 2
      @workbook.cell(1, 2).should eq(2)
    end
  end

  describe "Open Excelx (.xlsx) file read-only mode" do
    before do
      @workbook = SimpleSpreadsheet::SimpleSheet.read(File.join(File.dirname(__FILE__), "fixtures/file.xlsx"))
    end
    it "should can open the file" do
      @workbook.should_not be_nil
    end
    it "should use right class" do
      @workbook.class.to_s.should eq("ExcelxReader")
    end
    it "should see the right number of sheets" do
      @workbook.sheets.count.should eq(2)
    end
    it "should read strings from first sheets" do
      @workbook.cell(1,1).should eq("String1")
    end
    it "should read integer from first sheets" do
      @workbook.cell(1,2).should eq(1)
    end
    it "should read strings from other sheets" do
      @workbook.cell(1, 1, 2).should eq("String2")
    end
    it "should read integer from other sheets" do
      @workbook.cell(1, 2, 2).should eq(2)
    end
    it "should read strings from other sheets (way 2)" do
      @workbook.default_sheet = 2
      @workbook.cell(1, 1).should eq("String2")
    end
    it "should read integer from other sheets (way 2)" do
      @workbook.default_sheet = 2
      @workbook.cell(1, 2).should eq(2)
    end
  end
  
  describe "Open Openoffice (.ods) file read-only mode" do
    before do
      @workbook = SimpleSpreadsheet::SimpleSheet.read(File.join(File.dirname(__FILE__), "fixtures/file.ods"))
    end
    it "should can open the file" do
      @workbook.should_not be_nil
    end
    it "should use right class" do
      @workbook.class.to_s.should eq("OpenofficeReader")
    end
    it "should see the right number of sheets" do
      @workbook.sheets.count.should eq(2)
    end
    it "should read strings from first sheets" do
      @workbook.cell(1,1).should eq("String1")
    end
    it "should read integer from first sheets" do
      @workbook.cell(1,2).should eq(1)
    end
    it "should read strings from other sheets" do
      @workbook.cell(1, 1, 2).should eq("String2")
    end
    it "should read integer from other sheets" do
      @workbook.cell(1, 2, 2).should eq(2)
    end
    it "should read strings from other sheets (way 2)" do
      @workbook.default_sheet = 2
      @workbook.cell(1, 1).should eq("String2")
    end
    it "should read integer from other sheets (way 2)" do
      @workbook.default_sheet = 2
      @workbook.cell(1, 2).should eq(2)
    end
  end
  
  # describe "Open CSV (.csv) file read-only mode" do
  #   before do
  #     @workbook = SimpleSpreadsheet::SimpleSheet.read(File.join(File.dirname(__FILE__), "fixtures/file.csv"))
  #   end
  #   it "should can open the file" do
  #     @workbook.should_not be_nil
  #   end
  #   it "should use right class" do
  #     @workbook.class.to_s.should eq("CsvReader")
  #   end
  #   it "should see the right number of sheets" do
  #     @workbook.sheets.count.should eq(1)
  #   end
  #   it "should read strings from first sheets" do
  #     @workbook.cell(1,1).should eq("String1")
  #   end
  #   it "should read integer from first sheets" do
  #     @workbook.cell(1,2).should eq(1)
  #   end
  # end
  
end