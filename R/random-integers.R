
#' Query random.org for a random integer
#'
#' @param maxval Maximum random integer
#' @param minval Minimum random integer
#' @param seed Random seed for testing the generator, should not be used
#'
#' @return A sampled integer
#' @export
#' @examples
#' get_random_integer()
get_random_integer <- function(maxval = 1e8, minval = 0, seed = NULL) {
  link <- sprintf(
    "https://www.random.org/integers/?num=1&min=%d&max=%d&col=1&base=10&format=plain&rnd=%s",
    as.integer(minval),
    as.integer(maxval),
    ifelse(is.null(seed), "new", paste0("id.", seed))
  )

  con <- url(link, open = "r")
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
#' @examples
#' \dontrun{
#' insert_random_integer()
#' }
insert_random_integer <- function(...) {
  string <- sprintf("%dL", get_random_integer())
  rstudioapi::insertText(text = string)
}


#' Insert `set.seed()` at cursor with random integer
#'
#' @param ... Arguments passed to [get_random_integer()]
#'
#' @return A `set.seed()` string
#' @export
#'
#' @examples
#' \dontrun{
#' insert_random_set_seed()
#' }
insert_random_set_seed <- function(...) {
  string <- sprintf("set.seed(%dL)", get_random_integer())
  rstudioapi::insertText(text = string)
}
