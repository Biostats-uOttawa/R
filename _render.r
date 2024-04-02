##!/usr/bin/Rscript
#lang <- Sys.getenv("QUARTO_PROFILE")

#args <- commandArgs(trailingOnly = TRUE)

render_mlg <- function(lg = "en") {
  lang <- lg
  path_lg <- paste0("lang/", lang)
  files <- list.files(
    path_lg,
    pattern = "*.[Rq]md"
  )
  file.copy(paste(path_lg, files, sep="/"), ".", overwrite = TRUE)
  quarto::quarto_render(".", profile = lang, as_job = FALSE)
  file.remove(files)
}

render_mlg(args[1])