Sys.setenv(DEEPL_API_KEY = keyring::key_get("deepl"))
babeldown::deepl_translate_quarto(
  book_path = ".",
  chapter = "index.qmd",
  force = TRUE, # the existing chapter is a placeholder
  render = FALSE,
  source_lang = "EN",
  target_lang = "FR",
  formality = "less"
)

babeldown::deepl_translate_quarto(
  book_path = ".",
  chapter = "01-intro.qmd",
  force = TRUE, # the existing chapter is a placeholder
  render = FALSE,
  source_lang = "EN",
  target_lang = "FR",
  formality = "less"
)
