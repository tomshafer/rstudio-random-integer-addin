
#' Query random.org for a random integer
#'
#' @param maxval Maximum random integer
#' @param minval Minimum random integer
#'
#' @return A sampled integer
#' @export
get_random_integer <- function(maxval = 1e8, minval = 0) {
  fmt <- "https://www.random.org/integers/?num=1&min=%d&max=%d&col=1&base=10&format=plain&rnd=new"

  con <- url(sprintf(fmt, as.integer(minval), as.integer(maxval)), open = "r")
  sampled_integer <- as.integer(readLines(con))
  close(con)

  sampled_integer
}


#' Insert random integer at cursor
#'
#' @param ... Arguments passed to [get_random_integer()]
#'
#' @return A string representing a randomly sampled integer
#' @export
insert_random_integer <- function(...) {
  string <- sprintf("%dL", get_random_integer())
  rstudioapi::insertText(text = string)
}
