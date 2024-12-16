# Read PDF in RStudio
# https://bookdown.org/kochiuyu/Technical-Analysis-with-R/pdf-files.html
# https://library.virginia.edu/data/articles/reading-pdf-files-into-r-for-text-mining

library(pdftools)

# Set working directory to source file location first

txt <- pdf_text('2022_Varshney_TrustworthyML-Book.pdf')

length(txt) # The PDF has 267 pages

test <- txt[16] # Page 16

rows<-scan(textConnection(test), what="character", sep = "\n")  

# ---------------------------------------------------------------

# OCR (Optical Character Recognition)
# https://reintech.io/blog/mastering-optical-character-recognition-r
# https://www.geeksforgeeks.org/optical-character-recognition-ocr-using-r/

library(tesseract)
library(magick)

# The text is "This text is easy to extract."
img <- image_read('easy_text_ocr.png')
print(img)

img_text <- ocr(img)
print(img_text)
# [1] "This text is\neasy to extract.\n"
