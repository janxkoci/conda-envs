#!/usr/bin/env Rscript

## SOURCE THIS FILE IN R CONSOLE TO START THE SHINY APP
# source("run_shiny_admixtools.r")

# some locales have letter "ch" and sort "chimp" after Altai,
# so use e.g. "C" locale for proper sorting
Sys.setlocale("LC_ALL","C")

# explicitly set browser
options(browser="firefox")

library(admixtools)
run_shiny_admixtools()
