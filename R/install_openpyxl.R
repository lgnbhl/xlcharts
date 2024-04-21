#' Install openpyxl Python module
#'
#' @param method method
#' @param conda conda
#'
#' @return (Invisible) `TRUE` if the Conda environment was created successfully.
#' @export
install_openpyxl <- function(method = "auto", conda = "auto") {
  reticulate::py_install("openpyxl", method = method, conda = conda)

  invisible(TRUE)
}
