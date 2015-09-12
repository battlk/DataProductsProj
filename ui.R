
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Normal Distribution Simulation"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("observations",
                  "Number of observations:",
                  min = 1,
                  max = 300,
                  value = 150),
      numericInput(inputId="mean", label = "Mean", 50, min=0, max=100, step=1),
      numericInput(inputId="sd", label = "Standard Dev", 10, min=0, max=50, step=1)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
