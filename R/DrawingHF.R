#' @title DrawingHF
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.chartsheet.relation.html}
#'
#' @param id id
#' @param lho lho
#' @param lhe lhe
#' @param lhf lhf
#' @param cho cho
#' @param che che
#' @param chf chf
#' @param rho rho
#' @param rhe rhe
#' @param rhf rhf
#' @param lfo lfo
#' @param lfe lfe
#' @param lff lff
#' @param cfo cfo
#' @param cfe cfe
#' @param cff cff
#' @param rfo rfo
#' @param rfe rfe
#' @param rff rff
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DrawingHF()
#' }
#'
#' @export
DrawingHF <- function(id = NULL, lho = NULL, lhe = NULL, lhf = NULL, cho = NULL, che = NULL, chf = NULL, rho = NULL, rhe = NULL, rhf = NULL, lfo = NULL, lfe = NULL, lff = NULL, cfo = NULL, cfe = NULL, cff = NULL, rfo = NULL, rfe = NULL, rff = NULL, ...) {

  py_obj <- openpyxl$chartsheet$relation$DrawingHF(
    id = id,
    lho = lho,
    lhe = lhe,
    lhf = lhf,
    cho = cho,
    che = che,
    chf = chf,
    rho = rho,
    rhe = rhe,
    rhf = rhf,
    lfo = lfo,
    lfe = lfe,
    lff = lff,
    cfo = cfo,
    cfe = cfe,
    cff = cff,
    rfo = rfo,
    rfe = rfe,
    rff = rff
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
