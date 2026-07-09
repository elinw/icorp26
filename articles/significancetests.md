# Significance tests

Work in Progress

``` r
library(icorp26)
library(easystats)
# Attaching packages: easystats 0.7.6
✔ bayestestR  0.18.1   ✔ correlation 0.8.8 
✔ datawizard  1.3.1    ✔ effectsize  1.0.3 
✔ insight     1.5.2    ✔ modelbased  0.16.0
✔ performance 0.17.1   ✔ parameters  0.29.2
✔ report      0.6.4    ✔ see         0.14.1
```

So far we have been looking at statistics that describe people in the
RSS sample. However, in the social sciences we are almost always
interested in whether we can draw any conclusions (make an *inference
about*) the larger population.

The *sample* is drawn from a larger population. In the case of the RSS
the populaton of interest is the whole adult population of the United
States, about 253 million people. The rss1 data set has 7599
observations. That’s a big number, but just 0.003% of the total
population.

Even with the very best samplng procedures it is extremely unlikely that
a sample will match the population exactly. And it is possible that a
sample could be very inaccurate.

Statisticians have come up with many different ways to address this
problem. Some of these involve *how the sample is selected*. Others
involve how to calculate statistics that are based on samples instead of
populations. A third approach focuses on the math of how samples relate
to populations. It turns out that there are patterns in this and we can
leverage them. Over the last 200 years statisticians have developed
several approaches to this.

One approach to this is called Null Hypothesis Significance Testing.
