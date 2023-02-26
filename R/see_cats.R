

#' See all categories in a blog
#'
#' Set an R environment variable BLOG_URL to your blog's URL including the https:// if you don't want to enter the URL manually.
#'
#' @param blog_url
#'
#' @return character vector with available categories on blog home page
#' @export
#'
#' @examples
#' see_cats("https://themockup.blog/")
see_cats <- function(blog_url = Sys.getenv("BLOG_URL")) {
  categories <- rvest::read_html(blog_url) |>
    rvest::html_nodes(".category") |>
    rvest::html_text2() |>
    stringr::str_remove_all("\\s\\(.*?\\)")
  return(categories)
}

