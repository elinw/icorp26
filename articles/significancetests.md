# Significance_tests

Work in Progress

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
```

So far we have been looking at statistics that describe people in the
RSS sample. However, in the social sciences we are almost always
interested in whether we can draw any conclusions (make an *inference
about*) the larger population.

The *sample* is drawn from a population. In the case of the RSS the
populaton of interest is the whole adult population of the United
States, about 253 million people. The rss1 data set has 7599
observations. That’s a big number, but just 0.003% of the total
population.

Why would we think we can use such a small number of people to represent
a whole population?

Even with the very best samplng procedures it is extremely unlikely that
a sample will match the population *exactly*. And it is possible that a
sample could be very inaccurate.

Let’s look at why that is using Statkey

<https://www.lock5stat.com/StatKey/>

What is interesting and useful is that over *many* samples there are
certain patterns that emerge in the results.

Statisticians have come up with many different ways to address this
problem. Some of these involve *how the sample is selected*. Others
involve how to calculate statistics that are based on samples instead of
populations. A third approach focuses on the math of how samples relate
to populations. It turns out that there are patterns in this and we can
leverage them. Over the last 200 years statisticians have developed
several approaches to this.

One approach to this is called Null Hypothesis Significance Testing.
This is usually the first approach that students learn, and it is the
one you most often see in publications, especially older ones.

Some of the most commonly used NHST are the t test, the F test and the
Chi Square test. The choice of tests depends on the variables and
assumptions we are willing to make. However they all follow the same
logic.

A null hypothesis takes the form:

There is no relationship between variable A and variable B.

Here are some examples of what this could mean:

The mean of sun screen misinformation is the same for all racial and
ethnic groups.

The proportion of people in our population of interest who use sunscreen
most of the time is the same for all racial/ethnic groups.

The “alternative hypothesis” is that there *is* a relationship between
the variables in the population.

*Challenge*: When we take random samples of a population the
relationships in the *sample* may not match what is in the *population.*

## Step one

## Important points to remember

1.  Statistically significant does not mean *important*.  
2.  We never accept hypotheses, we just either reject or fail to reject
    the *null hypothesis* of no difference.  
3.  Tests assume random sampling with replacement.
4.  Statistical significance is *not* about the probability that a
    hypothesis is true.
