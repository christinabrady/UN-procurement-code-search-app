library(shiny)


# uncodes <- read.csv("~/Documents/World Bank/codebase//UNSPSC code translation/UNSPSC v171001.csv", header = FALSE, encoding = "UTF-8")
# when working from home computer

uncodes <- read.csv("UNSPSC v171001.csv", header = FALSE, encoding = "UTF-8")
## online


colnames(uncodes) <- c("Key", "Code", "Description")
