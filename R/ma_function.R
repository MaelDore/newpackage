#' @title Ma super fonction = Arithmetic mean
#'
#' @description This function computes the arithmetic mean of a numerical vector.
#'
#' @param x a numerical vector (can contain 'NA' values).
#' @param na_rm a logical value indicating whether 'NA' values should be
#' stripped before the computation proceeds.
#'
#' @return The arithmetic mean of the values as a numeric vector of length one.
#'
#' @details An error will be returned if 'x' contains 'NA' values and 'na_rm' is
#' set to 'FALSE' or if 'x' contains less than two values (after removing 'NA').
#'
#' @export
#'
#' @import stats
#'
#' @importFrom stats na.omit
#'
#' @examples
#' ma_function(1:10)
#' \dontrun {
#' ma_function(c(1:10, NA)) # Error
#' }

# Version avec test warnings
ma_function <- function(x, na_rm = FALSE) {
  # Check 'x' argument ----
  if (missing(x)) {
    stop("Missing x.")
  }
  if (is.null(x)) {
    stop("x must be a numerical vector.")
  }
  if (sum(is.na(x)) == length(x)) {
    stop("x cannot be NA.")
  }
  if (!is.vector(x)) {
    stop("x must be a numerical vector.")
  }
  if (!is.numeric(x)) {
    stop("x must be a numerical vector.")
  }
  if (length(x) < 2) {
    stop("x must be length > 1.")
  }

  # Check 'na_rm' argument ----
  if (is.null(na_rm)) {
    stop("na_rm must be TRUE or FALSE.")
  }
  if (sum(is.na(na_rm)) == length(na_rm)) {
    stop("na_rm cannot be NA.")
  }
  if (length(na_rm) > 1) {
    stop("na_rm must be TRUE or FALSE.")
  }
  if (!is.logical(na_rm)) {
    stop("na_rm must be TRUE or FALSE.")
  }

  # Remove NA (if required) ----
  if (any(is.na(x))) {
    if (na_rm) {
      x <- na.omit(x)
      if (length(x) < 2) {
        stop("x has < 2 non-NA values.")
      }
    } else {
      stop("x contains NA values. Use na_rm = TRUE.")
    }
  }

  # Compute mean ----
  sum(x) / length(x)
}

# Version scolaire
# ma_function <- function(x, na_rm = FALSE) {
#
#   if( length(is.na(x)) > 0)
#   mean <- sum(x) / length(x)
#
#   return(mean)
# }

# Version condensée
# ma_function <- function(x) sum(x) / length(x)
