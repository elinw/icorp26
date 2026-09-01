# More graphs

``` r
library(icorp26)
library(easystats)
# Attaching packages: easystats 0.7.6 (red = needs update)
✔ bayestestR  0.18.1   ✔ correlation 0.8.8 
✔ datawizard  1.3.1    ✔ effectsize  1.0.3 
✔ insight     1.5.3    ✔ modelbased  0.17.0
✖ performance 0.18.0   ✔ parameters  0.29.2
✔ report      0.6.4    ✖ see         0.14.1

Restart the R-Session and update packages with `easystats::easystats_update()`.
library(ggplot2)
```

``` r


correlation::correlation(rss1,
            select =
              c("PAY_PAYWORRY",
             "HIS_GENERAL"),
           method = "polychoric", 
           include_factors = TRUE
            ) ->
     results
     plot(summary(results), 
          show_data = "points")
```

![](More_graphs_files/figure-html/unnamed-chunk-2-1.png)
