#' Deep copy operation from deepcopy Python module
#'
#' \url{https://docs.python.org/3/library/copy.html}
#'
#' @param x x
#' @param memo memo
#' @param nil _nil
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' wb <- Workbook()
#' deepcopy(wb)
#' }
#'
#' @name deepcopy
#' @export
deepcopy <- function(x, memo = NULL, nil = c()) {
  copy <- reticulate::import("copy")
  copy$deepcopy(
    x = x,
    memo = memo,
    `_nil` = nil
  )
}
