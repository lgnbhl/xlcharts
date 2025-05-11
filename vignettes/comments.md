# Comments

<div class="admonition warning">
<p class="admonition-title">Warning</p>
<p>Openpyxl currently supports the reading and writing of comment text only. Formatting information is lost. Comment dimensions are lost upon reading, but can be written. Comments are not currently supported if read_only=True is used.</p>
</div>

## Adding a comment to a cell

Comments have a text attribute and an author attribute, which must both be set

```r
library(xlcharts)

wb <- Workbook()
ws <- wb$active

comment <- ws[["A1"]]$comment
comment <- Comment(
  text = 'This is the comment text', 
  author = 'Comment Author')

comment$text
```
```
[1] "This is the comment text"
```

```r
comment$author
```
```
[1] "Comment Author"
```

If you assign the same comment to multiple cells then openpyxl will automatically create copies

```r
wb <- Workbook()
ws <- wb$active

comment <- Comment(text = "Text", author = "Author")

ws[["A1"]]$comment <- comment
ws[["B2"]]$comment <- comment
```

## Loading and saving comments

Comments present in a workbook when loaded are stored in the comment attribute of their respective cells automatically. Formatting information such as font size, bold and italics are lost, as are the original dimensions and position of the comment’s container box.

Comments remaining in a workbook when it is saved are automatically saved to the workbook file.

Comment dimensions can be specified for write-only. Comment dimension are in pixels.

```r
wb <- Workbook()
ws <- wb$active

comment <- Comment(text = "Text", author = "Author")
comment$width <- 300
comment$height <- 50

ws[["A1"]]$comment <- comment

wb$save('commented_book.xlsx')
```

If needed, openpyxl.utils.units contains helper functions for converting from other measurements such as mm or points to pixels:

```r
wb <- Workbook()
ws <- wb$active

comment = Comment("Text", "Author")
comment$width <- points_to_pixels(300)
comment$height <- points_to_pixels(50)

ws[["A1"]]$comment <- comment
```

<small>This page is an R replica of the related [OpenPyXL documentation page](https://openpyxl.readthedocs.io/en/stable/comments.html).</small>
