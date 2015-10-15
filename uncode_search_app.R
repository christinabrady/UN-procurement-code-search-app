library(shiny)

#uncodes <- read.csv("~/Documents/World\ Bank/codebase/UNSPSC code translation/UNSPSC v171001new.csv", header = FALSE, encoding = "UTF-8")
# test <- gsub("\x", "", uncodes$V3)
uncodes <- read.csv("~/Documents/World Bank/codebase//UNSPSC code translation/UNSPSC v171001.csv", header = FALSE, encoding = "UTF-8")
colnames(uncodes) <- c("Key", "Code", "Description")

server <- function(input, output) {
  observe({
    if(input$submitbtn == 0){
      return()
    }else{
        output$search_results <- renderTable({
          isolate({
            uncodes[grep(input$search_word, uncodes$V3, ignore.case = TRUE), 1:3]
        })
      })
    }
  })
}

ui <- fluidPage(
    mainPanel(
      textInput(inputId = "search_word", label = "Search UN codes for...", value = ""),
      actionButton("submitbtn", "Submit"),
      tableOutput("search_results")
      
      )
  )


shinyApp(ui = ui, server = server)

