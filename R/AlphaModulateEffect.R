#' @title AlphaModulateEffect
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.effect.html}
#'
#' @param cont cont
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' AlphaModulateEffect(cont = EffectContainer(type = "tree"))
#' }
#'
#' @export
AlphaModulateEffect <- function(cont = NULL, ...) {

  py_obj <- openpyxl$drawing$effect$AlphaModulateEffect(
    cont = cont
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
