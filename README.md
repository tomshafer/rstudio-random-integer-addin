# Insert a Random Integer Into the Current Document

<!-- badges: start -->
[![R-CMD-check](https://github.com/tomshafer/rstudio-random-integer-addin/workflows/R-CMD-check/badge.svg)](https://github.com/tomshafer/rstudio-random-integer-addin/actions)
[![lint](https://github.com/tomshafer/rstudio-random-integer-addin/workflows/lint/badge.svg)](https://github.com/tomshafer/rstudio-random-integer-addin/actions)
[![test-coverage](https://github.com/tomshafer/rstudio-random-integer-addin/workflows/test-coverage/badge.svg)](https://github.com/tomshafer/rstudio-random-integer-addin/actions)
<!-- badges: end -->


Quickly gather a random integer from [random.org][] and
insert it into the current document. The primary use case is
for creating random seeds during analysis.


## Installation

```r
remotes::install_github("tomshafer/rstudio-random-integer-addin")
```


## Use

This package installs two [RStudio Addins][]:

1. *Insert Random Integer*, which inserts an integer from [random.org][]
2. *Insert Random Seed*, which inserts a full `set.seed()` statement with a random integer

RStudio's "Tools > Modify Keyboard Shortcuts…" menu allows
the user to bind one or both of these addins to keyboard
shortcuts. I've bound *Insert Random Seed* to Cmd-Shift-I.


[random.org]: https://random.org/integers/
[RStudio Addins]: https://rstudio.github.io/rstudioaddins/
