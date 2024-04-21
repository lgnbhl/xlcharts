#' @title ParagraphProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.text.html}
#'
#' @param marL marL
#' @param marR marR
#' @param lvl lvl
#' @param indent indent
#' @param algn algn
#' @param defTabSz defTabSz
#' @param rtl rtl
#' @param eaLnBrk eaLnBrk
#' @param fontAlgn fontAlgn
#' @param latinLnBrk latinLnBrk
#' @param hangingPunct hangingPunct
#' @param lnSpc lnSpc
#' @param spcBef spcBef
#' @param spcAft spcAft
#' @param tabLst tabLst
#' @param defRPr defRPr
#' @param extLst extLst
#' @param buClrTx buClrTx
#' @param buClr buClr
#' @param buSzTx buSzTx
#' @param buSzPct buSzPct
#' @param buSzPts buSzPts
#' @param buFontTx buFontTx
#' @param buFont buFont
#' @param buNone buNone
#' @param buAutoNum buAutoNum
#' @param buChar buChar
#' @param buBlip buBlip
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' ParagraphProperties()
#' }
#'
#' @export
ParagraphProperties <- function(marL = NULL, marR = NULL, lvl = NULL, indent = NULL, algn = NULL, defTabSz = NULL, rtl = NULL, eaLnBrk = NULL, fontAlgn = NULL, latinLnBrk = NULL, hangingPunct = NULL, lnSpc = NULL, spcBef = NULL, spcAft = NULL, tabLst = NULL, defRPr = NULL, extLst = NULL, buClrTx = NULL, buClr = NULL, buSzTx = NULL, buSzPct = NULL, buSzPts = NULL, buFontTx = NULL, buFont = NULL, buNone = NULL, buAutoNum = NULL, buChar = NULL, buBlip = NULL, ...) {

  py_obj <- openpyxl$drawing$text$ParagraphProperties(
    marL = marL,
    marR = marR,
    lvl = lvl,
    indent = indent,
    algn = algn,
    defTabSz = defTabSz,
    rtl = rtl,
    eaLnBrk = eaLnBrk,
    fontAlgn = fontAlgn,
    latinLnBrk = latinLnBrk,
    hangingPunct = hangingPunct,
    lnSpc = lnSpc,
    spcBef = spcBef,
    spcAft = spcAft,
    tabLst = tabLst,
    defRPr = defRPr,
    extLst = extLst,
    buClrTx = buClrTx,
    buClr = buClr,
    buSzTx = buSzTx,
    buSzPct = buSzPct,
    buSzPts = buSzPts,
    buFontTx = buFontTx,
    buFont = buFont,
    buNone = buNone,
    buAutoNum = buAutoNum,
    buChar = buChar,
    buBlip = buBlip
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
