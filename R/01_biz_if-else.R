x <- 1:5
#x <- c(TRUE, FALSE, FALSE, TRUE, FALSE)

cat(
  "The bizarro version of x is",
  if (is.numeric(x)) {
    -x
  } else {
    !x
  },
  "\n"
)
