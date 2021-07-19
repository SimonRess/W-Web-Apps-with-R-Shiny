#install & load package
  if(!require("shiny")) install.packages("shiny")
  library(shiny)
  
  if(!require("dplyr")) install.packages("dplyr")
  library(dplyr)

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
  
  #Table-Creation
    output$alldata <- renderTable(cars[1:20,])
    
    output$summary <- renderTable(cars %>%
                                    summarise(mean.speed = mean(speed),
                                              median.speed = median(speed),
                                              mean.dist = mean(dist),
                                              median.dist = median(dist)
                                    )
                      )
})
