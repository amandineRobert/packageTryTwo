#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL

#  addme.R
#' Function which adds 2 two numbers choosen by the user.
#'
#' @param a (`a`) A number
#' @param b (`b`) A number
#'
#'
#' @return (`numeric`) The addition of the 2 numbers
#'
#' @examples
#'
#' addme(2, 5)
#' addme(5, 5)
#'
#' @export
addme <-
  function(a, b) {
    if (!is.numeric(a) | !is.numeric(b)) stop("YOU NEED NUMBERS")
    return(a+b)
  }
