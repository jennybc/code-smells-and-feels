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

## https://github.com/r-lib/devtools/blob/bd3bdf15b8f2e5e07d750de4360df28090a9f117/R/install-github.r#L73-L74
github_remote <- function(repo, username = NULL, ...) {
  meta <- parse_git_repo(repo)
  ...
  meta$username <- username %||%
    getOption("github.user") %||%
    stop("Unknown username.")
  ...
}

if (is.null(path)) {
  path <- dirname(pkg$path)
}

`%||%` <- function(x, y) {
  if (is_null(x)) y else x
}

f <- function(x, y = TRUE, z = NULL) {
  ...
  if (is.null(z)) {
    z <- much_logic(other, stuff, ...)
  }
  ...
}

f <- function(x, y = TRUE, z = NULL) {
  ...
  z <- z %||% much_logic(other, stuff, ...)
  ...
}
