ui <- fluidPage(
    mainPanel(
      textInput(inputId = "search_word", label = "Search UN codes for...", value = ""),
      actionButton("submitbtn", "Submit"),
      tableOutput("search_results")
      
      )
  )

