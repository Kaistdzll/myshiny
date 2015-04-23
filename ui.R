library(shiny)

shinyUI(fluidPage(
  titlePanel('My Page'),
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset", "Choose a dataset:", 
                  choices = c("rock", "pressure", "cars", "iris")),
      downloadButton('downloadData', 'Download')
    ),
    mainPanel(
      tableOutput('table')
    )
  )
))
