#install & load package
  if(!require("shiny")) install.packages("shiny")
  library(shiny)
  
  if(!require("dplyr")) install.packages("dplyr")
  library(dplyr)
  
  if(!require("DT")) install.packages("DT")
  library(DT)

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
  
  #DataTable-Creation
    output$alldata <- DT::renderDataTable({cars})
})
