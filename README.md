# Simple Spreadsheet

Recently a wrote a module to import raw data from Excel-like files to database and export it in various formats. To accomplish this i have to use different gems with different usage patterns so I decide to wrap them in a single simple gem. This is a spreadsheet reader and writer that (will) supports common formats: CSV (.csv), Excel (.xls, .xlsx), Open-office (.ods) and Google (online).

Used gems: 

- Roo (http://roo.rubyforge.org/)
- Spreadsheet (http://spreadsheet.ch/)
- RubyXL (https://github.com/gilt/rubyXL)

## Installing

Add to your Gemfile and run the `bundle` command to install it.

 ```ruby
 gem "simple_spreadsheet"
 ```
 
**N.B. Requires Ruby 1.9.2 or later.**

## Basic functionality

### Reading Spreadsheet

Example:

```ruby
s = SimpleSpreadsheet::SimpleSheet.read("my_spreadsheets_file.xls")
```

Supported formats:

<table>
  <tr>
    <th>CSV (.csv)</th>
    <th>Excel (.xls)</th>
    <th>Excelx (.xlsx)</th>
    <th>Openoffice (.ods)</th>
    <th>Google</th>
  </tr>
  <tr>
    <td>Not yet</td>
    <td>Yes (using Roo)</td>
    <td>Yes (using Roo)</td>
    <td>Yes (using Roo)</td>
    <td>Not yet</td>
  </tr>
</table>

### Writing Spreadsheet

Example:

```ruby
s = SimpleSpreadsheet::SimpleSheet.write("my_spreadsheets_file.xls")
```

Supported formats:

<table>
  <tr>
    <th>CSV (.csv)</th>
    <th>Excel (.xls)</th>
    <th>Excelx (.xlsx)</th>
    <th>Openoffice (.ods)</th>
    <th>Google</th>
  </tr>
  <tr>
    <td>Not yet</td>
    <td>Not yet</td>
    <td>Not yet</td>
    <td>Not yet</td>
    <td>Not yet</td>
  </tr>
</table>

### Editing Spreadsheet

Example:

```ruby
s = SimpleSpreadsheet::SimpleSheet.edit("my_spreadsheets_file.xls")
```

Supported formats:

<table>
  <tr>
    <th>CSV (.csv)</th>
    <th>Excel (.xls)</th>
    <th>Excelx (.xlsx)</th>
    <th>Openoffice (.ods)</th>
    <th>Google</th>
  </tr>
  <tr>
    <td>Not yet</td>
    <td>Not yet</td>
    <td>Not yet</td>
    <td>Not yet</td>
    <td>Not yet</td>
  </tr>
</table>

## Recipes

### Get all data from some cols of first sheet of a XLS file

```ruby
s = SimpleSpreadsheet::SimpleSheet.read("my_spreadsheets_file.xls")
s.select_worksheet = s.sheets.first
s.first_row.upto(@workbook.last_row) do |line|
  data1 = s.cell(line, 1)
  data2 = s.cell(line, 3)
end
```

### Get all data from some cols of first sheet of a XLS file (option 2)

```ruby
s = SimpleSpreadsheet::SimpleSheet.read("my_spreadsheets_file.xls")
s.first_row.upto(@workbook.last_row) do |line|
  data1 = s.cell(line, 1, 1)
  data2 = s.cell(line, 3, 1)
end
```

## Future plans

- Reading support for all formats
- More efficent reading for big spreadsheets (extending Roo)
- Writing support for all formats
- More reading functionalities
- Edit support fo all formats
