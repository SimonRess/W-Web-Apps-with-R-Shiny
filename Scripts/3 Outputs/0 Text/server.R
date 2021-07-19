#install & load package
  if(!require("shiny")) install.packages("shiny")
  library(shiny)
  
  if(!require("dplyr")) install.packages("dplyr")
  library(dplyr)
  
  if(!require("DT")) install.packages("DT")
  library(DT)

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
  
  #Text-Creation
    output$text <- renderText({
      paste0("The mean value of the speed in the cars-dataset is ", mean(cars$speed), " Mph.")
    })
})
