# global reference to openpyxl (will be initialized in .onLoad)
openpyxl <- NULL

.onLoad <- function(libname, pkgname) {
  # import modules
  # delay load module (will only be loaded when accessed via $)
  openpyxl <<- reticulate::import("openpyxl", delay_load = TRUE)

  invisible(TRUE)
}
