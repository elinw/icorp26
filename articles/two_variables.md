# two_variables

``` r

library(icorp26)
library(easystats)
#> # Attaching packages: easystats 0.7.6
#> ✔ bayestestR  0.18.1   ✔ correlation 0.8.8 
#> ✔ datawizard  1.3.1    ✔ effectsize  1.0.2 
#> ✔ insight     1.5.1    ✔ modelbased  0.15.0
#> ✔ performance 0.17.0   ✔ parameters  0.29.1
#> ✔ report      0.6.4    ✔ see         0.14.0
library(here)
#> here() starts at /home/runner/work/icorp26/icorp26
```

Most of the time in research we are interested in understanding the
relationships between variables. That is, we want to know whether
differences in one variable are associated with differences in another
variable.

Let’s look at whether there is a relationship between self-reported
health and how worried respondents are about losing pay if they become
sick.

We can see that both variables are ordinal, meaning that there are
distinct categories that have a logical ordering.

We can also think of the health status as the independent variable and
worry as the dependent variable. For example, we might think that those
with worse health would be more worried

``` r

data_tabulate(rss1$PAY_PAYWORRY, by = rss1$HIS_GENERAL)
#> rss1$PAY_PAYWORRY  | Excellent | Very good | Good | Fair | Poor | <NA> | Total
#> -------------------+-----------+-----------+------+------+------+------+------
#> Very worried       |        47 |       213 |  472 |  299 |   69 |    4 |  1104
#> Somewhat worried   |       163 |       940 | 1205 |  382 |   46 |    4 |  2740
#> Not at all worried |       417 |      1626 | 1288 |  332 |   55 |    8 |  3726
#> <NA>               |         5 |         9 |   11 |    2 |    2 |    0 |    29
#> -------------------+-----------+-----------+------+------+------+------+------
#> Total              |       632 |      2788 | 2976 | 1015 |  172 |   16 |  7599
```

We can make this more readable by dropping the missing cases and using a
nice print function.

``` r

data_tabulate(rss1$PAY_PAYWORRY, 
              by = rss1$HIS_GENERAL,
              remove_na = TRUE,
              name = "Worry by health status") |> 
     print_html()
```

| rss1\$PAY_PAYWORRY | Excellent | Very good | Good | Fair | Poor | Total |
|--------------------|-----------|-----------|------|------|------|-------|
| Very worried       | 47        | 213       | 472  | 299  | 69   | 1100  |
| Somewhat worried   | 163       | 940       | 1205 | 382  | 46   | 2736  |
| Not at all worried | 417       | 1626      | 1288 | 332  | 55   | 3718  |
| Total              | 627       | 2779      | 2965 | 1013 | 170  | 7554  |

To make it easier to interpret we can add the column percentages to the
table. We always calculate the percents within categories of the
independent variable.

``` r

data_tabulate(rss1$PAY_PAYWORRY, 
              by = rss1$HIS_GENERAL,
              remove_na = TRUE,
              proportions = "column",
              name = "LC is Depression") |> 
     print_html()
```

| rss1\$PAY_PAYWORRY | Excellent | Very good | Good | Fair | Poor | Total |
|----|----|----|----|----|----|----|
| Very worried | 47 (7.5%) | 213 (7.7%) | 472 (15.9%) | 299 (29.5%) | 69 (40.6%) | 1100 |
| Somewhat worried | 163 (26.0%) | 940 (33.8%) | 1205 (40.6%) | 382 (37.7%) | 46 (27.1%) | 2736 |
| Not at all worried | 417 (66.5%) | 1626 (58.5%) | 1288 (43.4%) | 332 (32.8%) | 55 (32.4%) | 3718 |
| Total | 627 | 2779 | 2965 | 1013 | 170 | 7554 |

Looking at the percents, we can see that those who are in excellent
health are generally less worried than those in poor health. This
doesn’t apply to everyone– there are people in poor health who are not
worried and people in good health who are worried–but it is an overall
pattern.

``` r

data_tabulate(rss1$PAY_PAYWORRY, 
              by = rss1$HIS_GENERAL,
              remove_na = TRUE)  |> 
     effectsize()
#> Cramer's V (adj.) |       95% CI
#> --------------------------------
#> 0.19              | [0.18, 1.00]
#> 
#> - One-sided CIs: upper bound fixed at [1.00].
```

``` r

data_tabulate(rss1$PAY_PAYWORRY, 
              by = rss1$HIS_GENERAL,
              remove_na = TRUE) # |> 
#> rss1$PAY_PAYWORRY  | Excellent | Very good | Good | Fair | Poor | Total
#> -------------------+-----------+-----------+------+------+------+------
#> Very worried       |        47 |       213 |  472 |  299 |   69 |  1100
#> Somewhat worried   |       163 |       940 | 1205 |  382 |   46 |  2736
#> Not at all worried |       417 |      1626 | 1288 |  332 |   55 |  3718
#> -------------------+-----------+-----------+------+------+------+------
#> Total              |       627 |      2779 | 2965 | 1013 |  170 |  7554
   #  as_table() |>
    # chisq.test()
```
