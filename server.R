
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
# This logic takes the input celsius value, and returns the fahrenheit equivalent.

library(shiny)

shinyServer(function(input, output) {
  
  # calculate fahrenheit
  f <- reactive({input$celsius * 1.8 + 32 })

  # render the result  
  output$fahrenheit <- renderText({
   f()
  }) 
  
})
