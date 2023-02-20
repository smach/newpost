
# newpost

newpost is a simple, one-function package for Quarto blogs that helps you create a new folder and index.qmd file for a new blog post. It uses the RStudio IDE's API, so you do need to be running RStudio for this to work properly.

WARNING: This will create folders and files on your system!

## Installation

This package is not on cran, but you can install it with

``` r
remotes::install_github("smach/newpost")
```

## Example

Want to write a new post with the headline "Welcome to my blog!" and it's March 1, 2023? Run

``` r
library(newpost)
newpost("Welcome to my blog!")
```
and the function will create a `2023-03-03-welcome-to-my-blog` folder, set the working director to that folder, create an index.qmd file with some basic YAML, and open the file.

You may want to load the package 


