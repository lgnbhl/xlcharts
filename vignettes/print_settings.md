# Print Settings

openpyxl provides reasonably full support for print settings.

## Edit Print Options

```r
library(xlcharts)

wb <- Workbook()
ws <- wb$active

ws$print_options$horizontalCentered <- TRUE
ws$print_options$verticalCentered <- TRUE
```

## Headers and Footers

Headers and footers use their own formatting language. This is fully supported when writing them but, due to the complexity and the possibility of nesting, only partially when reading them. There is support for the font, size and color for a left, centre/center, or right element. Granular control (highlighting individuals words) will require applying control codes manually.

```r
ws$oddHeader$left$text = "Page Number"
ws$oddHeader$left$size = 14
ws$oddHeader$left$font = "Tahoma,Bold"
ws$oddHeader$left$color = "CC3366"
```

Also supported are evenHeader and evenFooter as well as firstHeader and firstFooter.

## Add Print Titles

You can print titles on every page to ensure that the data is properly labelled.

```r
ws$print_title_cols <- 'A:B' # the first two cols
ws$print_title_rows <- '1:1' # the first row
```

## Add a Print Area

You can select a part of a worksheet as the only part that you want to print

```r
ws$print_area <- 'A1:F10'
```

## Change page layout and size

You can adjust the size and print orientation per sheet of a workbook.

```r
ws$page_setup$orientation = ws$ORIENTATION_LANDSCAPE
ws$page_setup$paperSize = ws$PAPERSIZE_A5
```

The table size is stored internally as an integer, a number of alias variables are also available for common sizes (refer to PAPERSIZE_* in openpyxl.worksheet.worksheet ). If you need a non-standard size, a full list can be found by searching ECMA-376 pageSetup and setting that value as the paperSize.

<small>This page is an R replica of the related [OpenPyXL documentation page](https://openpyxl.readthedocs.io/en/stable/print_settings.html).</small>
