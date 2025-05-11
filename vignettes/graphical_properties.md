# Advanced Options with Graphical Properties

Many advanced options require using the Graphical Properties of OOXML. This is a much more abstract API than the chart API itself and may require considerable studying of the OOXML specification to get right. It is often unavoidable to look at the XML source of some charts you’ve made. However, as openpyxl tries very hard to implement the OOXML specification correctly, you should be able to do most things quite easily. To things easier to read, openpyxl includes some aliases for some of the more obscure element or attribute names, eg. GraphicalProperties for `spPr or line for line.

## Make the chart background transparent

```r
library(xlcharts)

chart <- BarChart(
  graphical_properties = GraphicalProperties(noFill = TRUE)
)
```

## Remove the border from a chart

```r
chart <- BarChart(
  graphical_properties = GraphicalProperties(
    line = LineProperties(noFill = TRUE, prstDash = NULL)
  )
)
```

<small>This page is an R replica of the related [OpenPyXL documentation page](https://openpyxl.readthedocs.io/en/stable/charts/graphical.html).</small>
