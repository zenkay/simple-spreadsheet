# It does not work yet :) Please be patient.

# Simple Spreadsheet

Simple spreadsheet reader and writer for common formats: CSV (.csv), Excel (.xls, .xlsx), Open-office (.ods) and Google (online). Use multiple gems to access to it.

Used gems:
* Roo (https://github.com/hmcgowan/roo)
* Spreadsheet
* 


## Installing

Add to your Gemfile and run the `bundle` command to install it.

 ```ruby
 gem "simple_spreadsheet"
 ```
**N.B. Requires Ruby 1.9.2 or later.**

## Reading Spreadsheet

<table>
  <tr>
    <th>Format</th>
    <th>CSV (.csv)</th>
    <th>Excel (.xls)</th>
    <th>Excelx (.xlsx)</th>
    <th>Openoffice (.ods)</th>
    <th>Google</th>
  </tr>
  <tr>
    <th>Supported</th>
    <td>Yes (using Roo)</td>
    <td>Yes (using Roo)</td>
    <td>Yes (using Roo)</td>
    <td>Yes (using Roo)</td>
    <td>-</td>
  </tr>
</table>

```ruby
s = SimpleSpreadsheet::SimpleSheet.read("my_spreadsheets_file.xls")
s.select_worksheet = s.sheets.first
s.first_row.upto(@workbook.last_row) do |line|
  data1 = s.cell(line, 'A')
  data2 = s.cell(line, 'C')
end
```

## Writing Spreadsheet

<table>
  <tr>
    <th>Format</th>
    <th>CSV (.csv)</th>
    <th>Excel (.xls)</th>
    <th>Excelx (.xlsx)</th>
    <th>Openoffice (.ods)</th>
    <th>Google</th>
  </tr>
  <tr>
    <th>Supported</th>
    <td>-</td>
    <td>-</td>
    <td>-</td>
    <td>-</td>
    <td>-</td>
  </tr>
</table>

```ruby
@workbook = SimpleSpreadsheet::SimpleSheet.write("my_spreadsheets_file.xls")
```

## Editing Spreadsheet

<table>
  <tr>
    <th>Format</th>
    <th>CSV (.csv)</th>
    <th>Excel (.xls)</th>
    <th>Excelx (.xlsx)</th>
    <th>Openoffice (.ods)</th>
    <th>Google</th>
  </tr>
  <tr>
    <th>Supported</th>
    <td>-</td>
    <td>-</td>
    <td>-</td>
    <td>-</td>
    <td>-</td>
  </tr>
</table>

```ruby
@workbook = SimpleSpreadsheet::SimpleSheet.edit("my_spreadsheets_file.xls")
```
