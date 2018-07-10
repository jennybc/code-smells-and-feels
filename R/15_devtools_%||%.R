## https://github.com/r-lib/devtools/blob/b01edfbfa1fd0e3965a24188805c5e55f0d7376f/R/build-manual.R

#' Create package pdf manual
#'
#' @param pkg package path or name
#' @param path path in which to produce package manual
build_manual <- function(pkg = ".", path = NULL) {
  pkg <- as.package(pkg)
  path <- path %||% dirname(pkg$path)
  ...
}

if (is.null(path)) {
  path <- dirname(pkg$path)
}

`%||%` <- function(x, y) {
  if (is_null(x)) y else x
}