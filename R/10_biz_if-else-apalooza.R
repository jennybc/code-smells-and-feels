str_reverse <- function(x) {
  vapply(
    strsplit(x, ""),
    FUN = function(z) paste(rev(z), collapse = ""),
    FUN.VALUE = "")
}
str_reverse(c("abc", "def"))

bizarro <- function(x) {
  if (is.numeric(x)) {
    -x
  } else if (is.logical(x)) {
    !x
  } else if (is.character(x)) {
    str_reverse(x)
  } else if (is.factor(x)) {
    levels(x) <- rev(levels(x))
    x
  } else { 
    stop(
      "Don't know how to make bizzaro <", class(x)[[1]], ">",
      call. = FALSE)
  }
}

bizarro(1:5)

bizarro(c(TRUE, FALSE, FALSE, TRUE, FALSE))

bizarro(c("abc", "def"))

(m <- factor(month.abb, levels = month.abb))
bizarro(factor(m))

bizarro(iris)
