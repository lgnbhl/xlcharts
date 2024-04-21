#' @title DocumentProperties
#'
#' @description High-level properties of the document.
#'
#' \url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.packaging.core.html}
#'
#' @details Defined in ECMA-376 Par2 Annex D
#'
#' @param category category
#' @param contentStatus contentStatus
#' @param keywords keywords
#' @param lastModifiedBy lastModifiedBy
#' @param lastPrinted lastPrinted
#' @param revision revision
#' @param version version
#' @param created created
#' @param creator creator
#' @param description description
#' @param identifier identifier
#' @param language language
#' @param modified modified
#' @param subject subject
#' @param title title
#' @param ... Additional arguments, i.e. kwargs.
#'
#' @return An openpyxl Python object.
#'
#' @examples
#' \dontrun{
#' DocumentProperties()
#' }
#'
#' @export
DocumentProperties <- function(category = NULL, contentStatus = NULL, keywords = NULL, lastModifiedBy = NULL, lastPrinted = NULL, revision = NULL, version = NULL, created = NULL, creator = "openpyxl", description = NULL, identifier = NULL, language = NULL, modified = NULL, subject = NULL, title = NULL, ...) {

  py_obj <- openpyxl$packaging$core$DocumentProperties(
    category = category,
    contentStatus = contentStatus,
    keywords = keywords,
    lastModifiedBy = lastModifiedBy,
    lastPrinted = lastPrinted,
    revision = revision,
    version = version,
    created = created,
    creator = creator,
    description = description,
    identifier = identifier,
    language = language,
    modified = modified,
    subject = subject,
    title = title
  )

  # as of openpyxl docs, additional arguments ("**kw")
  kwargs <- list(...)
  for(i in seq_along(kwargs)) {
    name <- names(kwargs)[i]
    py_obj[[name]] <- kwargs[[i]]
  }

  return(py_obj)
}
