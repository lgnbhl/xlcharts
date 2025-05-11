# Simple Formulae

## Using formulae

Formulae may be parsed and modified as well.

```r
library(xlcharts)

wb <- Workbook()
ws <- wb$active
# add a simple formula
ws[["A1"]]$value <- "=SUM(1, 1)"
wb$save("formula.xlsx")
```

<div class="admonition warning">
<p class="admonition-title">Warning</p>
<p>NB you must use the English name for a function and function arguments must be separated by commas and not other punctuation such as semi-colons.</p>
</div>

openpyxl never evaluates formula.

If you’re trying to use a formula that isn’t known this could be because you’re using a formula that was not included in the initial specification. Such formulae must be prefixed with _xlfn. to work.

## Special formulae

Openpyxl also supports two special kinds of formulae: Array Formulae and Data Table Formulae. Given the frequent use of “data tables” within OOXML the latter are particularly confusing.

In general, support for these kinds of formulae is limited to preserving them in Excel files but the implementation is complete.

## Array Formulae

Although array formulae are applied to a range of cells, they will only be visible for the top-left cell of the array. This can be confusing and a source of errors. To check for array formulae in a worksheet you can use the ws$array_formulae property which returns a dictionary of cells with array formulae definitions and the ranges they apply to.

Creating your own array formulae is fairly straightforward

```r
wb <- Workbook()
ws <- wb$active
ws[["E2"]]$value <- ArrayFormula("E2:E11", "=SUM(C2:C11*D2:D11)")
wb$save("formula.xlsx")
```

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>The top-left most cell of the array formula must be the cell you assign it to, otherwise you will get errors on workbook load.</p>
</div>

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>In Excel the formula will appear in all the cells in the range in curly brackets {} but you should never use these in your own formulae.</p>
</div>

## Data Table Formulae

As with array formulae, data table formulae are applied to a range of cells. The table object themselves contain no formulae but only the definition of table: the cells covered and whether it is one dimensional or not, etc. For further information refer to the OOXML specification.

To find out whether a worksheet has any data tables, use the ws$table_formulae property.

<small>This page is an R replica of the related [OpenPyXL documentation page](https://openpyxl.readthedocs.io/en/stable/simple_formulae.html).</small>
