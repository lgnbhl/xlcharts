# Worksheet Tables

Worksheet tables are references to groups of cells. This makes certain operations such as styling the cells in a table easier.

## Creating a table

```r
library(xlcharts)

table <- data.frame(
  "Fruit" = c("Apples", "Pears", "Bananas", "Oranges"),
  "2011" = c(10000, 2000, 6000, 500),
  "2012" = c(5000, 3000, 6000, 300),
  "2013" = c(8000, 4000, 6500, 200),
  "2014" = c(6000, 5000, 6000, 700)
)

write_xlsx(table, "table.xlsx")

wb <- load_workbook("table.xlsx")
ws <- wb$active

tab = Table(displayName="Table1", ref="A1:E5")

# Add a default style with striped rows and banded columns
style <- TableStyleInfo(
  name = "TableStyleMedium9", 
  showFirstColumn = FALSE,
  showLastColumn = FALSE,
  showRowStripes = TRUE, 
  showColumnStripes = TRUE
)

tab$tableStyleInfo <- style

#Table must be added using ws.add_table() method to avoid duplicate names.
#Using this method ensures table name is unque through out defined names and all other table name. 

ws$add_table(tab)
wb$save("table.xlsx")
```

Table names must be unique within a workbook. By default tables are created with a header from the first row and filters for all the columns and table headers and column headings must always contain strings.

<div class="admonition warning">
<p class="admonition-title">Warning</p>
<p>In write-only mode you must add column headings to tables manually and the values must always be the same as the values of the corresponding cells (ee below for an example of how to do this), otherwise Excel may consider the file invalid and remove the table.</p>
</div>

Styles are managed using `TableStyleInfo()`. This allows you to stripe rows or columns and apply the different colour schemes.

## Working with Tables

ws$tables is an object of all the tables in a particular worksheet:

```r
ws$tables
```

Get Table by name or range

```r
ws$tables[["Table1"]]
```

Get table name and range of all tables in a worksheet

The number of tables in a worksheet

```r
length(ws$tables)
```

### Filters

Filters will be added automatically to tables that contain header rows. It is **not** possible to create tables with header rows without filters.

## Table as a Print Area

Excel can produce documents with the print area set to the table name. Openpyxl cannot, however, resolve such dynamic definitions and will raise a warning when trying to do so.

If you need to handle this you can extract the range of the table and define the print area as the appropriate cell range.

```r
table_range <- ws$tables["Table1"]
ws$print_area <- table_range$Table1
```

<small>This page is an R replica of the related [OpenPyXL documentation page](https://openpyxl.readthedocs.io/en/stable/worksheet_tables.html).</small>
