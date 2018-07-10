bizarro <- function(x) {
  if (is.numeric(x)) {
    -x
  } else {
    !x
  }
}

bizarro(1:5)

bizarro(c(TRUE, FALSE, FALSE, TRUE, FALSE))
