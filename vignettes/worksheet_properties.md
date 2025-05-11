# Additional Worksheet Properties

These are advanced properties for particular behaviours, the most used ones are the “fitTopage” page setup property and the tabColor that define the background color of the worksheet tab.

## Available properties for worksheets

- “enableFormatConditionsCalculation”
- “filterMode”
- “published”
- “syncHorizontal”
- “syncRef”
- “syncVertical”
- “transitionEvaluation”
- “transitionEntry”
- “tabColor”

## Available fields for page setup properties

“autoPageBreaks” “fitToPage”

## Available fields for outlines

- “applyStyles”
- “summaryBelow”
- “summaryRight”
- “showOutlineSymbols”

Search ECMA-376 "pageSetup" for more details.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>By default, outline properties are intitialized so you can directly modify each of their 4 attributes, while page setup properties don’t. If you want modify the latter, you should first initialize a openpyxl.worksheet.properties.PageSetupProperties object with the required parameters. Once done, they can be directly modified by the routine later if needed.</p>
</div>

```r
library(xlcharts)

wb <- Workbook()
ws <- wb$active

wsprops <- ws$sheet_properties
wsprops$tabColor <- "1072BA"
wsprops$filterMode <- FALSE
wsprops$pageSetUpPr = PageSetupProperties(
  fitToPage=TRUE, 
  autoPageBreaks = FALSE
)
wsprops$outlinePr$summaryBelow <- FALSE
wsprops$outlinePr$applyStyles <- TRUE
wsprops$pageSetUpPr$autoPageBreaks <- TRUE
```

## Worksheet Views

There are also several convenient properties defined as worksheet views. You can use ws$sheet_view to set sheet attributes such as zoom, show formulas or if the tab is selected.

```r
wb <- Workbook()
ws <- wb.active

ws$sheet_view$zoomScale <- 85 # Sets 85% zoom
ws$sheet_view$showFormulas <- TRUE
ws$sheet_view$tabSelected <- TRUE
```

For some reason `zoomScale` returns an error while the zoom indeed set to 85%.

## Fold (outline)

```python
>>> import openpyxl
>>> wb = openpyxl.Workbook()
>>> ws = wb.create_sheet()
>>> ws.column_dimensions.group('A','D', hidden=True)
>>> ws.row_dimensions.group(1,10, hidden=True)
>>> wb.save('group.xlsx')
```

TODO: translate into R. Any contribution welcomed!

<small>This page is an R replica of the related [OpenPyXL documentation page](https://openpyxl.readthedocs.io/en/stable/worksheet_properties.html).</small>
