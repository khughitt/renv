# renv

<!-- badges: start -->
[![Travis build status](https://travis-ci.org/rstudio/renv.svg?branch=master)](https://travis-ci.org/rstudio/renv)
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

## Overview

The `renv` package is a new effort to bring private project-local R libraries
to your projects. The goal is for `renv` to be a robust, stable replacement for
the [Packrat](https://rstudio.github.io/packrat/) package, with fewer surprises
and better default behaviors.

## Workflow

The general workflow when working with `renv` is:

1. Call `renv::init()` to initialize a new project-local environment, with a
   private R library;

2. Work in the project as normal, installing and removing new R packages as
   they are needed in the project,

3. Call `renv::snapshot()` to save the state of the project library to the
   lockfile (called `renv.lock`),

4. Call `renv::restore()` to restore the state of the project library, based
   on the state of the lockfile previously generated by `renv::snapshot()`.

See the [Introduction vignette](https://rstudio.github.io/renv/articles/renv.html)
for more details.
