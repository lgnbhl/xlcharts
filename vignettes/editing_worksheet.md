# Inserting and deleting rows and columns, moving ranges of cells

## Inserting rows and columns

You can insert rows or columns using the relevant worksheet methods:

- insert_rows()
- insert_cols()
- delete_rows()
- delete_cols()

The default is one row or column. For example to insert a row at 7 (before the existing row 7):

```r
library(xlcharts)

wb <- Workbook()
ws <- wb$active

ws$insert_rows(7L)
```

## Deleting rows and columns

To delete the columns F:H:

```r
ws$delete_cols(6L, 3L)
```

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Openpyxl does not manage dependencies, such as formulae, tables, charts, etc., when rows or columns are inserted or deleted. This is considered to be out of scope for a library that focuses on managing the file format. As a result, client code must implement the functionality required in any particular use case.</p>
</div>

## Moving ranges of cells

You can also move ranges of cells within a worksheet:

```r
ws$move_range("D4:F10", rows=-1, cols=2)
```

This will move the cells in the range D4:F10 up one row, and right two columns. The cells will overwrite any existing cells.

If cells contain formulae you can let openpyxl translate these for you, but as this is not always what you want it is disabled by default. Also only the formulae in the cells themselves will be translated. References to the cells from other cells or defined names will not be updated; you can use the Parsing Formulas translator to do this:

```r
ws$move_range("G4:H10", rows=1L, cols=1L, translate=TRUE)
```

This will move the relative references in formulae in the range by one row and one column.

## Merge / Unmerge cells

When you merge cells all cells but the top-left one are removed from the worksheet. To carry the border-information of the merged cell, the boundary cells of the merged cell are created as MergeCells which always have the value None. See Styling Merged Cells for information on formatting merged cells.

```r
wb <- Workbook()
ws <- wb$active

ws$merge_cells('A2:D2')
ws$unmerge_cells('A2:D2')

# or equivalently
ws$merge_cells(start_row=2, start_column=1, end_row=4, end_column=4)
ws$unmerge_cells(start_row=2, start_column=1, end_row=4, end_column=4)
```

<small>This page is an R replica of the related [OpenPyXL documentation page](https://openpyxl.readthedocs.io/en/stable/editing_worksheets.html).</small>
