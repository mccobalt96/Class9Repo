#
# This is the server logic of a Shiny web application. THis R file takes the input and output
# and performs the conversions from US measures to metric measures.
#
# Author:  John McConnell
# Class:  Data Science Specialization Class 9
# Date:  06/21/2017
# Final project
#

library(shiny)

shinyServer(function(input, output) {
   
    output$km <- renderText(input$miles/0.62137)
    output$cm <- renderText(input$inches*2.54)
    output$kg <- renderText(input$pounds/0.45359237)
    output$li <- renderText(input$gallons*3.785411784)
  
})
