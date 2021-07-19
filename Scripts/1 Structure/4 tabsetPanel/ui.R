# Creating a fluid page layout
  # Consists of rows which in turn include columns
  # Adjust page automatically to the browser dimentsions
fluidPage( 
  tabsetPanel(type = "tabs",
              tabPanel("First", h3("This is the first tab")),
              tabPanel("Second", h3("This is the second tab")),
              tabPanel("Third", h3("This is the third tab"))
  )
)



