#+ include = FALSE
str_reverse <- function(x) {
  vapply(
    strsplit(x, ""),
    FUN = function(z) paste(rev(z), collapse = ""),
    FUN.VALUE = "")
}

#+ include = TRUE
bizarro <- function(x) {
  cls <- class(x)[[1]] ## not a great idea, in general
  switch(
    cls,
    logical = !x,
    integer = ,
    numeric = -x,
    character = str_reverse(x),
    stop("Don't know how to make bizzaro <", cls, ">", call. = FALSE)
  )
}

bizarro(1:5)

bizarro(c(TRUE, FALSE, FALSE, TRUE, FALSE))

bizarro(c("abc", "def"))

bizarro(iris)
