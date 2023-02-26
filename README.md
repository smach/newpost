
# newpost

newpost is a simple, two-function package for Quarto blogs that helps you create a new folder and index.qmd file for a new blog post. It uses the RStudio IDE's API, so you do need to be running RStudio for this to work properly.

WARNING: This will create folders and files on your system!

## Installation

This package is not on CRAN, but you can install it with

``` r
remotes::install_github("smach/newpost", build_vignettes = TRUE)
```

## Example

Let's say you want to write a new post with the headline "Welcome to my blog!" and it's March 1, 2023. Run

``` r
library(newpost)
newpost("Welcome to my blog!")
```
and the function will create a `2023-03-01-welcome-to-my-blog` folder, set the working director to that folder, create an index.qmd file with some basic YAML, and open the file.


The `newpost()` function has one required argument: the headline for your post. If you run `newpost("Welcome to my blog!")` on March 8, 2023, it will create a folder `2023-03-08-welcome-to-my-blog` in your blog's posts directory, and also create an index.qmd file in that new directory with "Welcome to my blog!" as the YAML title. There are optional arguments for description, author, and categories. Categories should be a single comma-separated string and _not_ a character _vector_, such as "General, Community".

See the intro vignette for more details.
