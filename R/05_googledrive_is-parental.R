## https://github.com/tidyverse/googledrive/blob/b6e97999d0781c31c69ef6fa93d1091a04b44d20/R/drive_cp.R#L67

drive_cp <- function(file, ...) {
  file <- as_dribble(file)
  file <- confirm_single_file(file)
  if (is_parental(file)) {
    stop_glue("The Drive API does not copy folders or Team Drives.")
  }
  ...
}

## https://github.com/tidyverse/googledrive/blob/b6e97999d0781c31c69ef6fa93d1091a04b44d20/R/dribble.R#L253

is_parental <- function(d) {
  stopifnot(inherits(d, "dribble"))
  kind <- purrr::map_chr(d$drive_resource, "kind")
  mime_type <- purrr::map_chr(d$drive_resource, "mimeType", .default = NA)
  kind == "drive#teamDrive" | mime_type == "application/vnd.google-apps.folder"
}
