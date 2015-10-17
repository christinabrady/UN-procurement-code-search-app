
server <- function(input, output) {
  observe({
    if(input$submitbtn == 0){
      return()
    }else{
        output$search_results <- renderTable({
          isolate({
            uncodes[grep(input$search_word, uncodes$Description, ignore.case = TRUE), 1:3]
        })
      })
    }
  })
}



