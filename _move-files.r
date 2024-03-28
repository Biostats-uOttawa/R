lang <- Sys.getenv("QUARTO_PROFILE")
path_lg <- paste0("lang/", lang)
 files <- list.files(
    path_lg,
  pattern = "*.[Rq]md",
  full.names = TRUE
  )
file.copy(files, ".", overwrite = TRUE)
