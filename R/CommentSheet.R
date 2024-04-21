#' @title CommentSheet
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.comments.comment_sheet.html}
#'
#' @param authors authors
#' @param commentList commentList
#' @param extLst extLst
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CommentSheet(
#'   authors = AuthorList(author = c("author1", "author2"))
#' )
#' }
#'
#' @export
CommentSheet <- function(authors = NULL, commentList = list(), extLst = NULL, ...) {

  py_obj <- openpyxl$comments$comment_sheet$CommentSheet(
    authors = authors,
    commentList = commentList,
    extLst = extLst
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
