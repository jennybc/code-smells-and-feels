bizarro <- function(x) {
  if (is.numeric(x)) {
    -x
  } else if (is.logical(x)) {
    !x
  } else {
    stop(
      "Don't know how to make bizzaro <", class(x)[[1]], ">",
      call. = FALSE)
  }
}

bizarro(c(TRUE, FALSE, FALSE, TRUE, FALSE))

bizarro(1:5)

bizarro(c("abc", "def"))
