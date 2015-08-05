# Simple Spreadsheet 

[![Code Climate](https://codeclimate.com/github/zenkay/simple-spreadsheet/badges/gpa.svg)](https://codeclimate.com/github/zenkay/simple-spreadsheet) [![Travis CI](https://travis-ci.org/zenkay/simple-spreadsheet.svg?branch=master)](https://travis-ci.org/zenkay/simple-spreadsheet) [![Gem Version](https://badge.fury.io/rb/dandelionapi.svg)](http://badge.fury.io/rb/dandelionapi) [![Coverage Status](https://coveralls.io/repos/github/zenkay/simple-spreadsheet/badge.svg?branch=master)](https://coveralls.io/github/zenkay/simple-spreadsheet?branch=master)

A spreadsheet reader and (in the future) writer that supports common formats: CSV (.csv), Excel (.xls, .xlsx), Open-office (.ods) and Google (online).

## Setup

Add to your Gemfile and run the `bundle` command to install it.

 ```ruby
 gem "simple-spreadsheet"
 ```

## Functionality

### Reading Spreadsheet

Example:

```ruby
require "simple-spreadsheet"

s = SimpleSpreadsheet::Workbook.read("my_spreadsheets_file.xls")
```

Supported formats:

<table>
  <tr>
  	<th></th>
    <th>Excel (.xls)</th>
    <th>Excelx (.xlsx)</th>
    <th>Openoffice (.ods)</th>
    <th>CSV (.csv)</th>
    <th>CSV Excel</th>
    <th>CSV Tab Separated</th>
  </tr>
  <tr>
  	<td>Reading whole file</td>
    <td>Yes</td>
    <td>Yes</td>
    <td>Yes</td>
    <td>Yes</td>
    <td>Yes</td>
    <td>Yes</td>
  </tr>
  <tr>
  	<td>Reading line by line</td>
    <td>Yes</td>
    <td>-</td>
    <td>-</td>
    <td>Yes</td>
    <td>Yes</td>
    <td>Yes</td>
  </tr>
</table>


## Recipes

### Get all data from some cols of first sheet of a XLS file

```ruby
require "simple-spreadsheet"

s = SimpleSpreadsheet::Workbook.read("my_spreadsheets_file.xls")
s.selected_sheet = s.sheets.first
s.first_row.upto(s.last_row) do |line|
  data1 = s.cell(line, 1)
  data2 = s.cell(line, 3)
end
```

### Get all data from some cols of first sheet of a XLS file (option 2)

```ruby
require "simple-spreadsheet"

s = SimpleSpreadsheet::Workbook.read("my_spreadsheets_file.xls")
s.first_row.upto(s.last_row) do |line|
  data1 = s.cell(line, 1, 1)
  data2 = s.cell(line, 3, 1)
end
```

### Accessing CSV Excel (semicolon separated)

```ruby
require "simple-spreadsheet"

s = SimpleSpreadsheet::Workbook.read("my_spreadsheets_file.csv", ".csvx")
```

### Accessing CSV Tab separated

```ruby
require "simple-spreadsheet"

# specify format
s = SimpleSpreadsheet::Workbook.read("my_spreadsheets_file.csv", ".csvt")
# use .tsv
s = SimpleSpreadsheet::Workbook.read("my_spreadsheets_file.tsv")
```

## Future plans

- Reading support for all formats
- More efficient reading for big spreadsheets (adding sequential reading to Roo standard methods)
- Writing support for all formats
- More reading functionalities
- Edit support for all formats

## Credits

Roo (http://roo.rubyforge.org/)
SimpleZSLWriter (http://rubyforge.org/projects/simplxlsxwriter/)
Spreadsheet (http://rubyforge.org/projects/spreadsheet/)
XLSX (http://rubygems.org/gems/xlsx)
WriteExcel (https://github.com/cxn03651/writeexcel/)
