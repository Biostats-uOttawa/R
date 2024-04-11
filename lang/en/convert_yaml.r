for (file in list.files("lang/fr", pattern = ".qmd", full.names = TRUE)) {
  knitr::convert_chunk_header(file, output = identity)
}
