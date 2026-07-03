# Plot method for grouped means

The [`plot()`](https://rdrr.io/r/graphics/plot.default.html) method for
the
[`datawizard::means_by_group()`](https://easystats.github.io/datawizard/reference/means_by_group.html)
function

## Usage

``` r
# S3 method for class 'dw_groupmeans'
plot(x, y, ...)
```

## Arguments

- x:

  An object returned `datawizard::means_by_group.data()`.

- y:

  Not currently used

- ...:

  Additional options. Acceptable values include `title` with a string to
  use as a title.

## Details

Produces a faceted plot when there is more than one means-table in the
list. If there is a single item a standard plot is returned.

## Examples

``` r
group_means_object <-  datawizard::means_by_group(iris$Sepal.Width, iris$Species)
plot(group_means_object, title = "group means", ci = FALSE, caption = FALSE)


group_means_object <- datawizard::means_by_group(
  iris,
  c("Sepal.Width", "Petal.Width"),
  "Species"
)

plot(group_means_object, title = "group means")
#> Warning: Removed 3 rows containing missing values or values outside the scale range
#> (`geom_segment()`).
#> Warning: Removed 3 rows containing missing values or values outside the scale range
#> (`geom_segment()`).


group_means_object <- datawizard::means_by_group(
  iris$Sepal.Width, iris$Species)
plot(group_means_object, title = "group means")
#> Warning: Removed 3 rows containing missing values or values outside the scale range
#> (`geom_segment()`).

```
