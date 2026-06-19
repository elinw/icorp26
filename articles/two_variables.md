# Analysis of two variables

``` r

library(icorp26)
library(easystats)
library(here)
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
data_tabulate(rss1$PAY_PAYWORRY, 
              by = rss1$HIS_GENERAL)
rss1$PAY_PAYWORRY  | Excellent | Very good | Good | Fair | Poor | <NA> | Total
-------------------+-----------+-----------+------+------+------+------+------
Very worried       |        47 |       213 |  472 |  299 |   69 |    4 |  1104
Somewhat worried   |       163 |       940 | 1205 |  382 |   46 |    4 |  2740
Not at all worried |       417 |      1626 | 1288 |  332 |   55 |    8 |  3726
<NA>               |         5 |         9 |   11 |    2 |    2 |    0 |    29
-------------------+-----------+-----------+------+------+------+------+------
Total              |       632 |      2788 | 2976 | 1015 |  172 |   16 |  7599
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
              name = "Worry aboout pay") |> 
     print_html()
```

| rss1\$PAY_PAYWORRY | Excellent | Very good | Good | Fair | Poor | Total |
|----|----|----|----|----|----|----|
| Very worried | 47 (7.5%) | 213 (7.7%) | 472 (15.9%) | 299 (29.5%) | 69 (40.6%) | 1100 |
| Somewhat worried | 163 (26.0%) | 940 (33.8%) | 1205 (40.6%) | 382 (37.7%) | 46 (27.1%) | 2736 |
| Not at all worried | 417 (66.5%) | 1626 (58.5%) | 1288 (43.4%) | 332 (32.8%) | 55 (32.4%) | 3718 |
| Total | 627 | 2779 | 2965 | 1013 | 170 | 7554 |

Looking at the percents, we can see that those who are in excellent
health are generally less worried than those in poor health (7.5%
compared to 40.6%). And the middle income groups are between these This
doesn’t apply to everyone– there are people in poor health who are not
worried and people in good health who are worried–but it is an *overall
pattern*.

One way that researchers use to talk about how strong the relationship
is uses the concept of “effect size.” An effect size of 0 would mean
that the two varables are totally unrelated (the column percents would
be the same for all of the columns in our table). An effect size of 1
would mean that we know 100% of the time what value the people in a
column have, because they all have the same value.

Cramer’s V is one way to measure effect size. For our table, the effect
size is .19. This is only based on our sample, so the confidence
interval gives us a general idea of what we could say about the
population the sample is drawn from. In this case the potential values
are pretty broad, somewhere between .18 and 1.0.

``` r
data_tabulate(rss1$PAY_PAYWORRY, 
              by = rss1$HIS_GENERAL,
              remove_na = TRUE)  |> 
     effectsize()
Cramer's V (adj.) |       95% CI
--------------------------------
0.19              | [0.18, 1.00]

- One-sided CIs: upper bound fixed at [1.00].
```

Another thing that researchers usually do is to test for “statistical
significance.”

Statistical significance asks “if the true effect size *in the
population* is 0, how likely is it that a random sample of the
population would have a relationship the size of the relationship in our
sample or even stronger.

That is a lot! And the concept is complicated. Still, as a rule of
thumb, many analysts say that if the probability is less than 5% (or p
\< .05) that they are comfortable saying they “reject the null
hypothesis” that there is no relationship between the variables.

A common way of doing this for two categorical (nominal) variables is
with the chi square test.

``` r
# group the data by your control variable

data_tabulate(rss1, "PAY_PAYWORRY", 
              by = "HIS_GENERAL",
              remove_na = TRUE) |> 
     data_chisq() 

    Pearson's Chi-squared test

data:  X[[i]]
X-squared = 566.16, df = 8, p-value < 2.2e-16
```

Because the p-value is less than .05 (\< 2.2e-16) convention says we can
reject the null hypothesis.

In case it has been a while since you used scientific notation the
`e-16` means we could translate that number to:

.000000000000000022

which is definitely less that .05!

In this case because the variables are both ordered we could also use a
test (and effect size measure) such as polychoric correlation that
produces a statistic called *rho*.

``` r

correlation(rss1,
            select =
              c("PAY_PAYWORRY",
             "HIS_GENERAL"),
           method = "polychoric", 
           include_factors = TRUE
            ) |>
     print_html()
```

| Correlation Matrix (polychoric-method) |  |  |  |  |  |
|----|----|----|----|----|----|
| Parameter1 | Parameter2 | rho | 95% CI | t(7552) | p |
| PAY_PAYWORRY | HIS_GENERAL | -0.30 | (-0.32, -0.28) | -27.31 | \< .001\*\*\* |
| p-value adjustment method: Holm (1979); Observations: 7554 |  |  |  |  |  |

In this analysis the value of rho is -0.30. How can it be negative?
Weren’t they supposed to be between 0 and 1? The answer is that the size
is between 0 and 1 if you take the *absolute value*, which means turning
a negative number into a positive number.  
So the effect size using tau is slightly larger than that using Cramer’s
V, although they are not perfectly comparable.

The negative sign gives us some additional information about the
*direction* of the relationship. In this case, as the value of one
variable goes up, the value of the other variable goes down. So the
higher the score on health status, the lowerthe score on worry. What is
going on?

``` r

rss1 |> 
  data_tabulate(x = rss1$HIS_GENERAL, 
                by =
                 as.numeric(rss1$HIS_GENERAL), 
                remove_na = TRUE) |>
  print_html()
```

| rss1\$HIS_GENERAL | 1   | 2    | 3    | 4    | 5   | Total |
|-------------------|-----|------|------|------|-----|-------|
| Excellent         | 632 | 0    | 0    | 0    | 0   | 632   |
| Very good         | 0   | 2788 | 0    | 0    | 0   | 2788  |
| Good              | 0   | 0    | 2976 | 0    | 0   | 2976  |
| Fair              | 0   | 0    | 0    | 1015 | 0   | 1015  |
| Poor              | 0   | 0    | 0    | 0    | 172 | 172   |
| Total             | 632 | 2788 | 2976 | 1015 | 172 | 7583  |

``` r




rss1 |> 
  data_tabulate(x = rss1$PAY_PAYWORRY, 
                by =  
                 as.numeric(rss1$PAY_PAYWORRY),
                remove_na = TRUE) |>
   print_html()
```

| rss1\$PAY_PAYWORRY | 1    | 2    | 3    | Total |
|--------------------|------|------|------|-------|
| Very worried       | 1104 | 0    | 0    | 1104  |
| Somewhat worried   | 0    | 2740 | 0    | 2740  |
| Not at all worried | 0    | 0    | 3726 | 3726  |
| Total              | 1104 | 2740 | 3726 | 7570  |

If we look at a table of how the numeric and non numeric varsions of
GENERAL_HIS related to each other, we see that people in *poor* health
were scored with a 5, while people in *excellent* health were scored
with a 1. So the higher someone’s score, the worse their health.

When we do the same for PAY_PAYWORRY, the people who were very worried
got a 1 and the not at all worried got a 3. So the higher the scor, the
less the worry.

So, as we would expect, the negative sign indicates that as
self-reported health gets worse, worry about pay gets worse.

This is why it is very important to always make sure you understand your
variables before working with them or interpreting the results.
