# It does not work yet :) Please be patient.

# Simple Spreadsheet

Simple spreadsheet reader and writer for common formats: CSV (.csv), Excel (.xls, .xlsx), Open-office (.ods) and Google (online).

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
    <td>Works?</td>
    <td>YES (Roo)</td>
    <td>YES (Roo)</td>
    <td>YES (Roo)</td>
    <td>YES (Roo)</td>
    <td>YES (Roo)</td>
  </tr>
</table>

```ruby
@workbook = SimpleSpreadsheet::SimpleSheet.read()
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
    <td>Works?</td>
    <td>NO</td>
    <td>NO</td>
    <td>NO</td>
    <td>NO</td>
    <td>NO</td>
  </tr>
</table>

```ruby
@workbook = SimpleSpreadsheet::SimpleSheet.write()
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
    <td>Works?</td>
    <td>NO</td>
    <td>NO</td>
    <td>NO</td>
    <td>NO</td>
    <td>NO</td>
  </tr>
</table>

```ruby
@workbook = SimpleSpreadsheet::SimpleSheet.edit()
```
