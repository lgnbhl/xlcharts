#' @title hash_password
#'
#' @description Create a password hash from a given string for protecting a worksheet
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.utils.protection.html}
#'
#' @details only. This will not work for encrypting a workbook. This method is based on the algorithm provided by
#' Daniel Rentz of OpenOffice and the PEAR package
#' Spreadsheet_Excel_Writer by Xavier Noguer <xnoguer@rezebra.com>.
#' See also http://blogs.msdn.com/b/ericwhite/archive/2008/02/23/the-legacy-hashing-algorithm-in-open-xml.aspx
#'
#' @param plaintext_password plaintext_password
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' hash_password(plaintext_password = "password")
#' }
#'
#' @export
hash_password <- function(plaintext_password = "", ...) {

  py_obj <- openpyxl$utils$protection$hash_password(
    plaintext_password = plaintext_password
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
