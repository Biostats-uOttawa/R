## !/usr/bin/Rscript
# lang <- Sys.getenv("QUARTO_PROFILE")

args <- commandArgs(trailingOnly = TRUE)

#lang <- c("en", "fr")

library(tidyverse)

lang <- args

files <- list.files("_book",
  pattern = ".html", recursive = TRUE
)

files <- files[-length(files)]

dat0 <- tibble(f_files = files, v1 = files) %>%
  separate(v1, into = c("lang", "file"), sep = "/") %>%
  separate(file, into = c("nb", "name"), sep = "-") %>%
  drop_na()


for (i in lang) {
  dat_l <- filter(dat0, lang == i)
  o_lang <- setdiff(lang, i)
  print(o_lang)

  for (j in o_lang) {
    dat_o <- filter(dat0, lang == j)
    dat_f <- inner_join(dat_l, dat_o, by = "nb")

    for (k in seq_len(nrow(dat_f))) {
      readLines(paste0("_book/", dat_f$f_files.x[k])) |>
        stringr::str_replace(
          pattern = paste0("./../", j, '"'),
          replace = paste0("./../", dat_f$f_files.y[k], '"')
        ) |>
        writeLines(con = paste0("_book/", dat_f$f_files.x[k]))
    }
  }
}
