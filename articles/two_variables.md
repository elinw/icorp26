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

``` r

data_tabulate(rss1$CVL_DEPRESS,
              by = rss1$LONGCOVID,
              remove_na = TRUE,
              proportions = "column",
              name = "LC is Depression") |> 
     print_html()
```

| rss1\$CVL_DEPRESS | Yes         | No          | Never had COVID | Total |
|-------------------|-------------|-------------|-----------------|-------|
| Strongly disagree | 267 (41.7%) | 625 (35.0%) | 652 (40.0%)     | 1544  |
| Somewhat disagree | 175 (27.3%) | 576 (32.3%) | 533 (32.7%)     | 1284  |
| Somewhat agree    | 125 (19.5%) | 452 (25.3%) | 316 (19.4%)     | 893   |
| Strongly agree    | 74 (11.5%)  | 132 (7.4%)  | 131 (8.0%)      | 337   |
| Total             | 641         | 1785        | 1632            | 4058  |
