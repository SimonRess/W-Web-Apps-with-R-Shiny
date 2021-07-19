#install & load package
  if(!require("shiny")) install.packages("shiny")
  library(shiny)
  
  if(!require("ggplot2")) install.packages("ggplot2")
  library(ggplot2)

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
  
  #ggplot-Creation
    output$ggplot <- renderPlot({
      ggplot(cars, aes(x = speed, y = dist)) +
        geom_point()
    })
    
})
