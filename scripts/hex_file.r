library(hexSticker)

library(cropcircles)

library(showtext)
## Loading Google fonts (http://www.google.com/fonts)
font_add_google("Gochi Hand", "gochi")
font_add_google("Jim Nightshade", "jim")
## Automatically use showtext to render text for future devices
showtext_auto()

book_hex <- cropcircles::crop_hex("images//cover//cover_introR.jpg", to = "images/cover/cover_hex.jpg")

sticker("images/cover/cover_hex.jpg",
  package = "R Way to hell",
  angle = 0,
  p_size = 25,
  s_x = 1,
  s_y = 1,
  p_x = 1,
  p_y = 0.8,
  p_color = "white",
  s_width = 0.85,
  s_height = 0.85,
  p_family = "jim",
  h_color = "black",
  url = "biostats-uottawa.github.io/R",
  u_color = "grey80",
  u_size = 5,
  filename = "images/cover/book_hex_en.png"
)
