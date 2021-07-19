# Define UI for application that plots random distributions 
fluidPage( 
  # Application title
  titlePanel("My first table-output"),
  
  sidebarLayout(
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    sliderInput("obs", 
                "Number of observations:", 
                min = 1,
                max = 50, 
                value = 5)
  ),
  
  # Show th tables
  mainPanel(
    "Summary:",
    tableOutput("summary"),
    "First 20 rows:",
    tableOutput("alldata")
  )
))


