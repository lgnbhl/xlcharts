#' @title PrintPageSetup
#'
#' @description Worksheet print page setup
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.worksheet.page.html}
#'
#' @param worksheet worksheet
#' @param orientation orientation
#' @param paperSize paperSize
#' @param scale scale
#' @param fitToHeight fitToHeight
#' @param fitToWidth fitToWidth
#' @param firstPageNumber firstPageNumber
#' @param useFirstPageNumber useFirstPageNumber
#' @param paperHeight paperHeight
#' @param paperWidth paperWidth
#' @param pageOrder pageOrder
#' @param usePrinterDefaults usePrinterDefaults
#' @param blackAndWhite blackAndWhite
#' @param draft draft
#' @param cellComments cellComments
#' @param errors errors
#' @param horizontalDpi horizontalDpi
#' @param verticalDpi verticalDpi
#' @param copies copies
#' @param id id
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' PrintPageSetup()
#' }
#'
#' @export
PrintPageSetup <- function(worksheet = NULL, orientation = NULL, paperSize = NULL, scale = NULL, fitToHeight = NULL, fitToWidth = NULL, firstPageNumber = NULL, useFirstPageNumber = NULL, paperHeight = NULL, paperWidth = NULL, pageOrder = NULL, usePrinterDefaults = NULL, blackAndWhite = NULL, draft = NULL, cellComments = NULL, errors = NULL, horizontalDpi = NULL, verticalDpi = NULL, copies = NULL, id = NULL, ...) {

  py_obj <- openpyxl$worksheet$page$PrintPageSetup(
    worksheet = worksheet,
    orientation = orientation,
    paperSize = paperSize,
    scale = scale,
    fitToHeight = fitToHeight,
    fitToWidth = fitToWidth,
    firstPageNumber = firstPageNumber,
    useFirstPageNumber = useFirstPageNumber,
    paperHeight = paperHeight,
    paperWidth = paperWidth,
    pageOrder = pageOrder,
    usePrinterDefaults = usePrinterDefaults,
    blackAndWhite = blackAndWhite,
    draft = draft,
    cellComments = cellComments,
    errors = errors,
    horizontalDpi = horizontalDpi,
    verticalDpi = verticalDpi,
    copies = copies,
    id = id
  )

# as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
