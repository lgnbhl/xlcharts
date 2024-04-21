#' @title NumVal
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chart.data_source.html}
#'
#' @param idx idx
#' @param formatCode formatCode
#' @param v v
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' NumVal(idx = 1L)
#' }
#'
#' @export
NumVal <- function(idx = NULL, formatCode = NULL, v = NULL) {

  python_function_result <- openpyxl$chart$data_source$NumVal(
    idx = idx,
    formatCode = formatCode,
    v = v
  )
  return(python_function_result)
}
