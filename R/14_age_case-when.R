library(tidyverse)

tibble(
  age_yrs = c(0, 4, 10, 15, 24, 55),
  age_cat = case_when(
    age_yrs < 2  ~ "baby",
    age_yrs < 13 ~ "kid",
    age_yrs < 20 ~ "teen",
    TRUE         ~ "adult"
  )
)

age_yrs <- c(0, 8, 15, 24, 55)

cat(
ifelse(age_yrs < 2, "baby",
       ifelse(age_yrs < 13, "kid",
              ifelse(age_yrs < 20, "teen",
                     "adult"
              )
       )
)
,sep="\n")


