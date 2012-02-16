# Simple Spreadsheet

Recently a wrote a module to import raw data from Excel-like files to database and export it in various formats. To accomplish this i have to use different gems with different usage patterns so I decide to wrap them in a single simple gem. This is a spreadsheet reader and writer that (will) supports common formats: CSV (.csv), Excel (.xls, .xlsx), Open-office (.ods) and Google (online).

Used gems:
-  Roo (http://roo.rubyforge.org/)
-  Spreadsheet (http://spreadsheet.ch/)
-  RubyXL (https://github.com/gilt/rubyXL)

## Installing

Add to your Gemfile and run the `bundle` command to install it.

 ```ruby
 gem "simple_spreadsheet"
 ```
 
**N.B. Requires Ruby 1.9.2 or later.**

## Reading Spreadsheet

Example:

```ruby
s = SimpleSpreadsheet::SimpleSheet.read("my_spreadsheets_file.xls")
s.select_worksheet = s.sheets.first
s.first_row.upto(@workbook.last_row) do |line|
  data1 = s.cell(line, 1)
  data2 = s.cell(line, 3)
end
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
    <td>Yes (using Roo)</td>
    <td>Yes (using Roo)</td>
    <td>Yes (using Roo)</td>
    <td>Yes (using Roo)</td>
    <td>Not yet</td>
  </tr>
</table>



## Writing Spreadsheet

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

## Editing Spreadsheet

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

