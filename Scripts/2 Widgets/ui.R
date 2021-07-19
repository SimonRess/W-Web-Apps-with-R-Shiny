# Creating a fluid page layout
  # Consists of rows which in turn include columns
  # Adjust page automatically to the browser dimentsions
fluidPage( 
  #Application title
    titlePanel("Main Widgets"),
    
  #Numeric input
    numericInput("num", label = h3("Numeric input"), value = 1),
    
  #Text input
    textInput("text", label = h3("Text input"), value = "Enter text..."),
    
  #Select Box
    selectInput("select", label = h3("Select box"), 
                choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3, "Choice 4" = 4, "Choice 5" = 5, "Choice 6" = 6), 
                selected = 1),
  
  #Checkbox-Group
    checkboxGroupInput("checkGroup", label = h3("Checkbox group"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                       selected = 1),
  
  #Radio buttons
    radioButtons("radio", label = h3("Radio buttons"),
                 choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
                 selected = 3),
  
  #Slider Bar
    sliderInput("obs", "Number of observations:", min = 1, max = 50, value = 5)
)



