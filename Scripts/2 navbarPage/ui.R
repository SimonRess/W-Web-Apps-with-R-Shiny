# Creating a fluid page layout
  # Consists of rows which in turn include columns
  # Adjust page automatically to the browser dimentsions
fluidPage( 
  navbarPage("Content",
             tabPanel("First", h3("This is the second panel")),
             navbarMenu("More",
                        tabPanel("Second", h3("This is the second panel")),
                        tabPanel("Third", h3("This is the third panel"))
             )
  )
)



