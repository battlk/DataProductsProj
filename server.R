
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  
  # use reactive function to generate random vector of observations as determined by the slider
  randoms <- reactive(runif(input$observations, 0, 100))
  
  # create a normal distribution using the form input values and render it in a plotlib
  output$distPlot <- renderPlot({
    plot(randoms(), dnorm(randoms(), mean=input$mean, sd=input$sd), type='p',
         xlab="Observation Value", ylab="", yaxt='n')
  })
})
