# Define UI for application that plots random distributions 
fluidPage( 
  # Application title
  titlePanel("My first text-output"),
  
  sidebarLayout(
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    sliderInput("obs", 
                "Number of observations:", 
                min = 1,
                max = 50, 
                value = 5)
  ),
  
  # Show the generated text 
  mainPanel(
    textOutput("text")
  )
))


