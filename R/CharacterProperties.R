#' @title CharacterProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.text.html}
#'
#' @param kumimoji kumimoji
#' @param lang lang
#' @param altLang altLang
#' @param sz sz
#' @param b b
#' @param i i
#' @param u u
#' @param strike strike
#' @param kern kern
#' @param cap cap
#' @param spc spc
#' @param normalizeH normalizeH
#' @param baseline baseline
#' @param noProof noProof
#' @param dirty dirty
#' @param err err
#' @param smtClean smtClean
#' @param smtId smtId
#' @param bmk bmk
#' @param ln ln
#' @param highlight highlight
#' @param latin latin
#' @param ea ea
#' @param cs cs
#' @param sym sym
#' @param hlinkClick hlinkClick
#' @param hlinkMouseOver hlinkMouseOver
#' @param rtl rtl
#' @param extLst extLst
#' @param noFill noFill
#' @param solidFill solidFill
#' @param gradFill gradFill
#' @param blipFill blipFill
#' @param pattFill pattFill
#' @param grpFill grpFill
#' @param effectLst effectLst
#' @param effectDag effectDag
#' @param uLnTx uLnTx
#' @param uLn uLn
#' @param uFillTx uFillTx
#' @param uFill uFill
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CharacterProperties()
#' }
#'
#' @export
CharacterProperties <- function(kumimoji = NULL, lang = NULL, altLang = NULL, sz = NULL, b = NULL, i = NULL, u = NULL, strike = NULL, kern = NULL, cap = NULL, spc = NULL, normalizeH = NULL, baseline = NULL, noProof = NULL, dirty = NULL, err = NULL, smtClean = NULL, smtId = NULL, bmk = NULL, ln = NULL, highlight = NULL, latin = NULL, ea = NULL, cs = NULL, sym = NULL, hlinkClick = NULL, hlinkMouseOver = NULL, rtl = NULL, extLst = NULL, noFill = NULL, solidFill = NULL, gradFill = NULL, blipFill = NULL, pattFill = NULL, grpFill = NULL, effectLst = NULL, effectDag = NULL, uLnTx = NULL, uLn = NULL, uFillTx = NULL, uFill = NULL, ...) {

  py_obj <- openpyxl$drawing$text$CharacterProperties(
    kumimoji = kumimoji,
    lang = lang,
    altLang = altLang,
    sz = sz,
    b = b,
    i = i,
    u = u,
    strike = strike,
    kern = kern,
    cap = cap,
    spc = spc,
    normalizeH = normalizeH,
    baseline = baseline,
    noProof = noProof,
    dirty = dirty,
    err = err,
    smtClean = smtClean,
    smtId = smtId,
    bmk = bmk,
    ln = ln,
    highlight = highlight,
    latin = latin,
    ea = ea,
    cs = cs,
    sym = sym,
    hlinkClick = hlinkClick,
    hlinkMouseOver = hlinkMouseOver,
    rtl = rtl,
    extLst = extLst,
    noFill = noFill,
    solidFill = solidFill,
    gradFill = gradFill,
    blipFill = blipFill,
    pattFill = pattFill,
    grpFill = grpFill,
    effectLst = effectLst,
    effectDag = effectDag,
    uLnTx = uLnTx,
    uLn = uLn,
    uFillTx = uFillTx,
    uFill = uFill
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
