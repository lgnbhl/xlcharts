#' @title Break
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.pagebreak.html}
#'
#' @param id id
#' @param min min
#' @param max max
#' @param man man
#' @param pt pt
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' Break()
#' }
#'
#' @export
Break <- function(id = 0L, min = 0L, max = 16383L, man = TRUE, pt = NULL, ...) {

  py_obj <- openpyxl$worksheet$pagebreak$Break(
    id = as.integer(id),
    min = as.integer(min),
    max = as.integer(max),
    man = man,
    pt = pt
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
