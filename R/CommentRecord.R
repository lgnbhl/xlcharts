#' @title CommentRecord
#'
#' @description \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.comments.comment_sheet.html}
#'
#' @param ref ref
#' @param authorId authorId
#' @param guid guid
#' @param shapeId shapeId
#' @param text text
#' @param commentPr commentPr
#' @param author author
#' @param height height
#' @param width width
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' CommentRecord()
#' }
#'
#' @export
CommentRecord <- function(ref = "", authorId = 0L, guid = NULL, shapeId = 0L, text = NULL, commentPr = NULL, author = NULL, height = 79L, width = 144L, ...) {

  py_obj <- openpyxl$comments$comment_sheet$CommentRecord(
    ref = ref,
    authorId = as.integer(authorId),
    guid = guid,
    shapeId = as.integer(shapeId),
    text = text,
    commentPr = commentPr,
    author = author,
    height = as.integer(height),
    width = as.integer(width)
  )

  # as of openpyxl docs, additional arguments ('**kw')
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
