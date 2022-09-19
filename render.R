library(rmarkdown)
library(trackdown)

# render using defaults
render("80-good-enough.Rmd")

# render as a pdf locally
render("80-good-enough.Rmd", output_format = "pdf_document")

# upload pdf and markdown as google doc for edits
update_file(
  file = "80-good-enough.Rmd",
  gpath = "trackdown/eighty-good-enough",
  path_output = "80-good-enough.pdf"
)