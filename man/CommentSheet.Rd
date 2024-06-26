% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CommentSheet.R
\name{CommentSheet}
\alias{CommentSheet}
\title{CommentSheet}
\usage{
CommentSheet(authors = NULL, commentList = list(), extLst = NULL, ...)
}
\arguments{
\item{authors}{authors}

\item{commentList}{commentList}

\item{extLst}{extLst}

\item{...}{Additional arguments, i.e. kwargs.}
}
\value{
An openpyxl Python object.
}
\description{
\url{https://openpyxl.readthedocs.io/en/stable/api/openpyxl.comments.comment_sheet.html}
}
\examples{
\dontrun{
CommentSheet(
  authors = AuthorList(author = c("author1", "author2"))
)
}

}
