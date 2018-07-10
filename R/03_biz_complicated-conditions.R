bizarro <- function(x) {
  if (class(x)[[1]] == "numeric" || class(x)[[1]] == "integer") {
    -x
  } else if (class(x)[[1]] == "logical") {
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
