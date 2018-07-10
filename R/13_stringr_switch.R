## https://github.com/tidyverse/stringr/blob/e775974d2822ae0de90ab33cf9f02273c22a3801/R/pad.r#L30

str_pad <- function(string,
                    width,
                    side = c("left", "right", "both"),
                    pad = " ") {
  side <- match.arg(side)
  
  switch(side,
         left = stri_pad_left(string, width, pad = pad),
         right = stri_pad_right(string, width, pad = pad),
         both = stri_pad_both(string, width, pad = pad)
  )
}
