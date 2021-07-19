# Creating a fluid page layout
  # Consists of rows which in turn include columns
  # Adjust page automatically to the browser dimentsions
fluidPage( 
  fluidRow(column(4, h3("row:1 / column: 1")),
           column(4, h3("row:1 / column: 2")),
           column(4, h3("row:1 / column: 3"))
  ),
  fluidRow(column(1, h3("row:2 / column: 1")),
           column(1, h3("row:2 / column: 2")),
           column(1, h3("row:2 / column: 3"))
  )
)



