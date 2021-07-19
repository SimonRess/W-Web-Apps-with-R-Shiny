#install & load package
  if(!require("shiny")) install.packages("shiny")
  library(shiny)
  
  if(!require("dplyr")) install.packages("dplyr")
  library(dplyr)  

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
  
  data <- reactive({
    cars[1:input$obs,input$var]
  })
  
  
  #Histogram-Creation
    output$histPlot <- renderPlot({
      hist(data())
    })
    
  
  #Title-Creation
    output$title <- renderText({
      paste0("Summary of variable: ", input$var)
    })
    
    
  #Summary-Creation
    output$summary <- renderTable(
      data.frame(data = data()) %>% summarise(mean = mean(data),
                                               median = median(data),
                                               max = max(data),
                                               min = min(data)
                  )
    )
    
})
