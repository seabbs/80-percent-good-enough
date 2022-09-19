library(rmarkdown)
library(trackdown)

# render using defaults
render("letter.Rmd")

# render as a pdf locally
render("letter.Rmd", output_format = "pdf_document")

# upload pdf and markdown as google doc for edits
update_file(
  file = "letter.Rmd",
  gpath = "trackdown/eighty-good-enough",
  path_output = "letter.pdf"
)