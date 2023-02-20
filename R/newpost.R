

#' Create new folder and index.qmd in your blog's posts directory
#'
#' @param character string with planned post headline
#' @param root_dir string your blog's root directory, defaults to here::here()
#'
#' @return Creates a new folder in posts directory with yyy--mm-dd-headline-in-lowercase where yyyy-mm-dd is current system date
#' @export
#'
newpost <- function(headline, root_dir = here::here()){
  slug <- tolower(headline)
  slug <- gsub('[[:punct:] ]+',' ', slug)
  slug <- trimws(slug)
  slug <- gsub(" ", "-", slug)
  folder_name <- paste0(root_dir, "/posts/", Sys.Date(), "-", slug)
fs::dir_create(folder_name)
setwd(folder_name)
  file_contents <- stringr::str_glue('---
title: "{headline}"
author: ""
date: "{Sys.Date()}"
categories: []
---
')
cat(file_contents, file = 'index.qmd')
rstudioapi::documentOpen('index.qmd')
}
