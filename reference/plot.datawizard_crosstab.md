# Plot method for crosstabs

The [`plot()`](https://rdrr.io/r/graphics/plot.default.html) method for
`dw_crosstabs` objects. These objects are lists of `dw_crosstab`objects.

## Usage

``` r
# S3 method for class 'datawizard_crosstab'
plot(x, y, ...)
```

## Arguments

- x:

  A `datawizard_crosstabs` object.

- y:

  Not currently used

- ...:

  Arguments to pass on. Currently accepts "title" as the graph title.

## Value

A ggplot2 representation of a datawizard cross tabulation.

## Details

There is no standard way to plot a cross tabulation. For these plot
functions the format respond to the value selected for the proportions
argument of `data_tabulate()` from the `datawizard` package. Those
options are "row" "column" and "full" along with NULL for no percentages
(numbers only).

For "row" and "column" percentages, stacked bar plots of the respective
row and colum npercentages are displayed. For row percentages the bars
display horizontally

For tables with no percentage–raw numbers only–a heat map describes the
number of observations in each cell.

For tables with "all" percents, i.e. with values representing the
percentage of the whole sample the graph is a variation of a mosaic plot
where the size of each rectangle represents the proportion of the whole
sample falls in each cell.

To remove missing values from the plots, the data_tabulate object should
be created with the `remove_na` argument of TRUE.

The plots can be modified using ggplot2 syntax and options.
