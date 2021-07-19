# Creating a fluid page layout
  # Consists of rows which in turn include columns
  # Adjust page automatically to the browser dimentsions
fluidPage( 
  sidebarLayout(
    sidebarPanel(
      h3("This is the sidebar")
    ),
    mainPanel(
      h3("This is the main panel")
    )
  )
)



