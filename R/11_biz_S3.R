## snippets on slides created with lots of selective reprex()ing and toggling of
## the chunk options

#+ include = FALSE
str_reverse <- function(x) {
  vapply(
    strsplit(x, ""),
    FUN = function(z) paste(rev(z), collapse = ""),
    FUN.VALUE = "")
}

#+ include = FALSE
bizarro <- function(x) {
  UseMethod("bizarro")
}

bizarro.default <- function(x) {
  stop(
    "Don't know how to make bizzaro <",
    class(x)[[1]], ">",
    call. = FALSE
  )
}

#+ include = FALSE, eval = FALSE
bizarro(1:5)

bizarro(TRUE)

bizarro("abc")

#+ include = FALSE
bizarro.numeric <- function(x) -x

bizarro.logical <- function(x) !x

bizarro.character <- function(x) str_reverse(x)

bizarro.factor <- function(x) {
  levels(x) <- rev(levels(x))
  x
}

bizarro.data.frame <- function(x) {
  names(x) <- bizarro(names(x))
  x[] <- lapply(x, bizarro)
  x
}

#+ include = TRUE
bizarro(1:5)

bizarro(c(TRUE, FALSE, FALSE, TRUE, FALSE))

bizarro(c("abc", "def"))

(m <- factor(month.abb[1:3], levels = month.abb[1:3]))
bizarro(m)

bizarro(head(iris, 3))
