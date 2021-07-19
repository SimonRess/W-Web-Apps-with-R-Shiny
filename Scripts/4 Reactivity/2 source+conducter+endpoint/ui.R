# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Hello Shiny!"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    #Input of the number of obs
      sliderInput("obs", 
                  "Number of observations:", 
                  min = 1,
                  max = 50, 
                  value = 5),
    
    #Which varaible to display
      selectInput("var", label = h3("Select Variable:"),  
                  choices = list("speed", "dist"), 
                  selected = "speed")
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("histPlot"),
    textOutput("title"),
    tableOutput("summary")
  )
))


