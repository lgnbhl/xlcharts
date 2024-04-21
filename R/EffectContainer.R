#' @title EffectContainer
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.effect.html}
#'
#' @param type type
#' @param name name
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' EffectContainer(type = "sib")
#' }
#'
#' @export
EffectContainer <- function(type = NULL, name = NULL, ...) {

  py_obj <- openpyxl$drawing$effect$EffectContainer(
    type = type,
    name = name
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
