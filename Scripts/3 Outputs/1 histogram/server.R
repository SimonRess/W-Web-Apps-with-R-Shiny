#install & load package
  if(!require("shiny")) install.packages("shiny")
  library(shiny)

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
  
  #Histogram-Creation
    output$histPlot <- renderPlot({
      hist(cars$speed)
    })
    
})
