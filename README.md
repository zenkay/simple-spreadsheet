# Simple Spreadsheet

Recently I wrote a module to import raw data from Excel-like files to database and export it in various formats. To accomplish this i have to use different gems with different usage patterns so I decide to wrap them in a single simple gem. This is a spreadsheet reader and writer that (will) supports common formats: CSV (.csv), Excel (.xls, .xlsx), Open-office (.ods) and Google (online).

Used gems: 

- Roo (http://roo.rubyforge.org/)
- Spreadsheet (http://spreadsheet.ch/)
- RubyXL (https://github.com/gilt/rubyXL)

## Installing

Add to your Gemfile and run the `bundle` command to install it.

 ```ruby
 gem "simple-spreadsheet"
 ```
 
**N.B. Tested only with Ruby 1.9.2.**

## Basic functionality

### Reading Spreadsheet

Example:

```ruby
require "simple-spreadsheet"

s = SimpleSpreadsheet::Workbook.read("my_spreadsheets_file.xls")
```

Supported formats:

<table>
  <tr>
    <th>Excel (.xls)</th>
    <th>Excelx (.xlsx)</th>
    <th>Openoffice (.ods)</th>
    <th>CSV (.csv)</th>
    <th>CSV Excel</th>
    <th>CSV Tab Separated</th>
  </tr>
  <tr>
    <td>Yes</td>
    <td>Yes</td>
    <td>Yes</td>
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

s = SimpleSpreadsheet::Workbook.read("my_spreadsheets_file.csv", ".csvt")
```

## Future plans

- Reading support for all formats
- More efficient reading for big spreadsheets (adding sequential reading to Roo standard methods)
- Writing support for all formats
- More reading functionalities
- Edit support for all formats
