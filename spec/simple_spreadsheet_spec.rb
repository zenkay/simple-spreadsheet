# encoding: utf-8
require 'spec_helper'

describe SimpleSpreadsheet do
  
  describe "Open Excel (.xls) file read-only mode" do
    it "should can open the file" do
      @workbook = SimpleSpreadsheet::SimpleSheet.new(File.join(File.dirname(__FILE__), "fixtures/empty_file.xls"), "r")
      @workbook.should_not be_nil
    end
  end

  describe "Open Excelx (.xlsx) file read-only mode" do
    it "should can open the file" do
      @workbook = SimpleSpreadsheet::SimpleSheet.new(File.join(File.dirname(__FILE__), "fixtures/empty_file.xlsx"), "r")
      @workbook.should_not be_nil
    end
  end
  
end