#' Install pillow Python module
#'
#' Module needed to include images in an Excel file.
#'
#' @param method method
#' @param conda conda
#'
#' @return (Invisible) `TRUE` if the Conda environment was created successfully.
#' @export
install_pillow <- function(method = "auto", conda = "auto") {
  reticulate::py_install("pillow", method = method, conda = conda)

  invisible(TRUE)
}
