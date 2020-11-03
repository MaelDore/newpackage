#' @title Ma super fonction
#'
#' @description Ceci est ma super function mais la je detaille
#'
#' @param x C'est un vecteur numerique dont on veut calculer la moyenne
#'
#' @return Un vecteur de longueur 1 qui est la moyenne de x
#' @export
#'
#' @import stats
#'
#' @importFrom stats na.omit
#'
#' @examples
#' ma_function(1:3)
#' \dontrun {
#' ma_function(1:3)
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
  # Check 'na_rm' argument [...] ----
  # Remove NA (if required) [...] ----
  # Compute mean [...] ----
}

# Version scolaire
ma_function <- function(x, na_rm = FALSE) {

  if( length(is.na(x)) > 0)
  mean <- sum(x) / length(x)

  return(mean)
}

# Version condensée
# ma_function <- function(x) sum(x) / length(x)
