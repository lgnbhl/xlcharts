#' @title RichTextProperties
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.drawing.text.html}
#'
#' @param rot rot
#' @param spcFirstLastPara spcFirstLastPara
#' @param vertOverflow vertOverflow
#' @param horzOverflow horzOverflow
#' @param vert vert
#' @param wrap wrap
#' @param lIns lIns
#' @param tIns tIns
#' @param rIns rIns
#' @param bIns bIns
#' @param numCol numCol
#' @param spcCol spcCol
#' @param rtlCol rtlCol
#' @param fromWordArt fromWordArt
#' @param anchor anchor
#' @param anchorCtr anchorCtr
#' @param forceAA forceAA
#' @param upright upright
#' @param compatLnSpc compatLnSpc
#' @param prstTxWarp prstTxWarp
#' @param scene3d scene3d
#' @param extLst extLst
#' @param noAutofit noAutofit
#' @param normAutofit normAutofit
#' @param spAutoFit spAutoFit
#' @param flatTx flatTx
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' RichTextProperties()
#' }
#'
#' @export
RichTextProperties <- function(rot = NULL, spcFirstLastPara = NULL, vertOverflow = NULL, horzOverflow = NULL, vert = NULL, wrap = NULL, lIns = NULL, tIns = NULL, rIns = NULL, bIns = NULL, numCol = NULL, spcCol = NULL, rtlCol = NULL, fromWordArt = NULL, anchor = NULL, anchorCtr = NULL, forceAA = NULL, upright = NULL, compatLnSpc = NULL, prstTxWarp = NULL, scene3d = NULL, extLst = NULL, noAutofit = NULL, normAutofit = NULL, spAutoFit = NULL, flatTx = NULL, ...) {

  py_obj <- openpyxl$drawing$text$RichTextProperties(
    rot = rot,
    spcFirstLastPara = spcFirstLastPara,
    vertOverflow = vertOverflow,
    horzOverflow = horzOverflow,
    vert = vert,
    wrap = wrap,
    lIns = lIns,
    tIns = tIns,
    rIns = rIns,
    bIns = bIns,
    numCol = numCol,
    spcCol = spcCol,
    rtlCol = rtlCol,
    fromWordArt = fromWordArt,
    anchor = anchor,
    anchorCtr = anchorCtr,
    forceAA = forceAA,
    upright = upright,
    compatLnSpc = compatLnSpc,
    prstTxWarp = prstTxWarp,
    scene3d = scene3d,
    extLst = extLst,
    noAutofit = noAutofit,
    normAutofit = normAutofit,
    spAutoFit = spAutoFit,
    flatTx = flatTx
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
