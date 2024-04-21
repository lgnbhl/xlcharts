#' Export to xlsx
#'
#' See \code{writexl::\link[writexl:write_xlsx]{write_xlsx}} for details.
#'
#' @keywords internal
#' @name write_xlsx
#' @export
#' @importFrom writexl write_xlsx
#' @return `write_xlsx()` returns the input invisibly.
#' @param x data frame or named list of data frames that will be sheets in the xlsx
#' @param path A function call using the magrittr semantics.
#' @param col_names write column names at the top of the file?
#' @param format_headers make the col_names in the xlsx centered and bold
#' @param use_zip64 use zip64 to enable support for 4GB+ xlsx files. Not all platforms can read this.
NULL
