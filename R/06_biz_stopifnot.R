bizarro <- function(x) {
  stopifnot(is.numeric(x) || is.logical(x))
  
  if (is.numeric(x)) {
    -x
  } else {
    !x
  }
}

bizarro(c(TRUE, FALSE, FALSE, TRUE, FALSE))

bizarro(1:5)

bizarro(c("abc", "def"))
