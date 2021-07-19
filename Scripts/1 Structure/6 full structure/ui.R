# Creating a fluid page layout
# Consists of rows which in turn include columns
# Adjust page automatically to the browser dimentsions
fluidPage( 
  navbarPage("Content",
             tabPanel("First", 
                      sidebarLayout(
                        sidebarPanel(
                          h3("This is the sidebar")
                        ),
                        mainPanel(
                          tabsetPanel(type = "tabs",
                                      tabPanel("First",
                                               fluidRow(
                                                 column(4, h3("row:1 / column: 1")),
                                                 column(4, h3("row:1 / column: 2")),
                                                 column(4, h3("row:1 / column: 3"))
                                               )
                                      ),
                                      tabPanel("Second", h3("This is the second tab")),
                                      tabPanel("Third", h3("This is the third tab"))
                          )
                        )
                      )         
             ),
             navbarMenu("More",
                        tabPanel("Second", h3("This is the second panel")),
                        tabPanel("Third", h3("This is the third panel"))
             )
  )
)


