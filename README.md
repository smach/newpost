
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

WARNING: This package will create folders and files on your system!

The `newpost()` function has one required argument: the headline for your post. If you run `newpost("Welcome to my blog!")` on March 8, 2023, it will create a folder `2023-03-08-welcome-to-my-blog` in your blog's posts directory, and also create an index.qmd file in that new directory with "Welcome to my blog!" as the YAML title. There are optional arguments for description, author, and categories. Categories should be a single comma-separated string and _not_ a character _vector_, such as "General, Community".

I suggest using a code snippet for this function, which gives you fill-in-the-blank code. I use this snippet, which I addded to my snippets with the `usethis::edit_rstudio_snippets()` function:

```
snippet qnp
	newpost::newpost("${1:headline}", "${2:description}", "${3:categories}", author = "Sharon Machlis")
```

Note that there needs to be a **tab** before newpost::newpost, _not_ spaces.

When I type `qnp` and hit the tab key, I see this in my console:

`newpost::newpost("headline", "description", "categories", author = "Sharon Machlis")`

with the cursor having jumped to `headline` as a variable. After filling in the headline spot, you can tab to description and then tab again to categories.

## Categories

While it's easy to check available blog categories by going to your blog's home page, you can stay in your R console and run the `see_cats()` function. It will check the blog home page for you and print out the vector of available categories. 

`see_cats()` takes one argument, the full blog URL including `https://` . You can set an R environment variable `BLOG_URL` to your full blog URL so you don't have to enter it manually into the function.






