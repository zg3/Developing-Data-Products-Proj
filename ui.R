
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
## This application takes user input and performs temperature conversion.
## (degree Celsius to Fahrenheit.)
## 

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Celsius to Fahrenheit Conversion"),

  # Sidebar with a slider input for degree Celsius
  sidebarLayout(
    sidebarPanel(
      sliderInput("celsius",
                  "Select Temprature in Degrees Celsius:",
                  min = -40,
                  max = 100,
                  value = 0),
      submitButton("Convert")
    ),

# Create About tab app documentation
# Show the computed result in the Result tab, and display some temperature facts in a separate tab.
  mainPanel(
    (tabsetPanel(
      tabPanel("About", br(),
        p("TempConverter is a small application created as part of the JHU Developing Data Products course project."),
        p("This shiny app allows the user to enter a temperature reading in degrees Celsius and obtain the 
        equivalent reading in Fahrenheit."),
        p("The application was developed using Shiny on R version 3.2.3. and deployed to shinyapps.io"),
        p("To run it, all you need is a web browser."),
        h4("Instructions:"),

        p("The app features a slider input widget.  
        Select your input temperature value (degree Celsius) using the slider, and click on the Convert button. 
        The result (temperature value in degrees Fahrenheit) will be displayed in the Result tab."),
        p("For some general temperature related facts, select the Common Temprature Facts tab."),
        p("To exit the application, simply close your browser session")),
    tabPanel("Result", br(), h4("Degrees Fahrenheit:"),textOutput("fahrenheit")),
    tabPanel("Common Temperature Facts", br(),
         h4("- Boiling point of water (at sea level) is 100 C (212 F)"),
         h4("- Freezing point of water is 0 C (32 F)"),
         h4("- Normal body temperature is 37 C (98.6 F)"),
         h4("- Celsius and Fahrenheit are equal at -40 degrees"),
         h4("- Standard room temperature is about 21 C (70 F)")
        )
             
      ))
    )
  )
))
