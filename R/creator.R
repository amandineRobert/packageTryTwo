#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL

#  creator.R
#' Function which pastes 2 words to create a short sentence.
#'
#' @param x (`x`) A character/ string
#' @param y (`y`) A character/ string
#'
#'
#' @return (`numeric`) The words group made of the 2 words choosen>
#'
#' @examples
#'
#' creator("Hello", "world")
#'
#' @export
creator <- function(x, y) {
  if(!is.character(x) | !is.character(y)) stop("YOU NEED CHARACTERS")

  paste(x, y)
}
