## https://github.com/tidyverse/googledrive/blob/94c8c01cbb9fd96fe59920cf58e39263a3135337/R/process_response.R#L8

process_response <- function(res) {
  if (httr::status_code(res) == 204) {
    return(TRUE)
  }
  
  if (httr::status_code(res) >= 200 && httr::status_code(res) < 300) {
    return(res %>%
             stop_for_content_type() %>%
             httr::content(as = "parsed", type = "application/json"))
  }
  
  ## 20+ more lines of error handling ...
}