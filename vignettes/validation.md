# Validating cells

Data validators can be applied to ranges of cells but are not enforced or evaluated. Ranges do not have to be contiguous: eg. “A1 B2:B5” is contains A1 and the cells B2 to B5 but not A2 or B2.

Examples

```r
library(xlcharts)

# Create the workbook and worksheet we'll be working with
wb <- Workbook()
ws <- wb$active

# Create a data-validation object with list validation
dv = DataValidation(type="list", formula1='"Dog,Cat,Bat"', allow_blank=TRUE)

# Optionally set a custom error message
dv$error ='Your entry is not in the list'
dv$errorTitle = 'Invalid Entry'

# Optionally set a custom prompt message
dv$prompt = 'Please select from the list'
dv$promptTitle = 'List Selection'

# make input and error messages visible
dv$showInputMessage <- TRUE
dv$showErrorMessage <- TRUE

# Add the data-validation object to the worksheet
ws$add_data_validation(dv)

# Create some cells, and add them to the data-validation object
c1 <- ws[["A1"]]
c1$value <- "Dog"
dv$add(c1)
c2 <- ws[["A2"]]
c2$value <- "An invalid value"
dv$add(c2)

# Or, apply the validation to a range of cells
dv$add('B1:B1048576') # This is the same as for the whole of column B

# Check cells in the validator
dv$cells
```
```
<MultiCellRange [A1 A2 B1:B1048576]>
```

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Validations without any cell ranges will be ignored when saving a workbook.</p>
</div>

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Excel and LibreOffice interpret the parameter showDropDown=True as the dropdown arrow should be hidden.</p>
</div>

## Other validation examples

Any whole number:

```r
dv <- DataValidation(type="whole")
```

Any whole number above 100:

```r
dv <- DataValidation(type="whole",
                    operator="greaterThan",
                    formula1=100)
```

Any decimal number:

```r
dv <- DataValidation(type="decimal")
```

Any decimal number between 0 and 1:

```r
dv <- DataValidation(type="decimal",
                    operator="between",
                    formula1=0,
                    formula2=1)
```

Any date:

```r
dv <- DataValidation(type="date")
```

or time:

```r
dv <- DataValidation(type="time")
```

Any string at most 15 characters:

```r
dv <- DataValidation(type="textLength",
                    operator="lessThanOrEqual",
                    formula1=15L)
```

Cell range validation:

TODO: transpose to R. Any contribution welcomed!

```python
>>> from openpyxl.utils import quote_sheetname
>>> dv = DataValidation(type="list",
 formula1="{0}!$B$1:$B$10".format(quote_sheetname(sheetname))
                      )
```

Custom rule:

```r
dv = DataValidation(type="custom",
                    formula1="SOMEFORMULA")
```

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>See http://www.contextures.com/xlDataVal07.html for custom rules</p>
</div>

<small>This page is an R replica of the related [OpenPyXL documentation page](https://openpyxl.readthedocs.io/en/stable/validation.html).</small>
