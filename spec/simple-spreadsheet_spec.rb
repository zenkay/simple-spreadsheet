# encoding: utf-8
require 'spec_helper'

describe SimpleSpreadsheet do
  let(:xls_file)  { File.expand_path '../fixtures/file.xlsx', __FILE__ }
  let(:file_path) { Pathname.new xls_file }

  it 'allows pathnames as filename argument without raising exception' do
    expect { SimpleSpreadsheet::Workbook.read(file_path) }.to_not raise_error(NoMethodError)
  end
end