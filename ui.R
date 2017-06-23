#
# This is the user-interface definition of a Shiny web application. This tool is designed
# to help in the conversion from US measures (miles, inches, pounds, and gallons) to 
# metric units (kilometers, centimeters, kilograms, and liters).  
# Author:  John McConnell
# Class:  Data Science Specialization Class 9
# Date:  06/21/2017
# Final project
#

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Metric conversion tool"),
  
  # Sidebar with a slider input for number of input number of miles, inches, pounds, and gallons
  
  sidebarLayout(
    sidebarPanel(
       sliderInput("miles",
                   "Number of miles:",
                   min = 1,
                   max = 1000,
                   value = 500),
       numericInput("inches",
                   "Number of inches:",
                   min = 1,
                   max = 100,
                   step = 0.5,
                   value = 10),
       sliderInput("pounds",
                   "Number of pounds:",
                   min = 1,
                   max = 500,
                   value = 250),
       sliderInput("gallons",
                   "Number of gallons:",
                   min = 1,
                   max = 50,
                   value = 25)
    ),
    
    # Show text string with the result
    
    mainPanel(
            h2("Instructions"),
            h4("Use the sliders or input field on the left sidebar to enter numbers that will be converted from miles, inches, pounds, and gallons into their metric equivalents."),
            h4("Once you move the slider or enter a numeric value the conversion program will compute the metric result and display them below."),
            h3("Number of kilometers:"),
            textOutput("km"),
            h3("Number of centimeters:"),
            textOutput("cm"),
            h3("Number of kilograms:"),
            textOutput("kg"),
            h3("Number of liters:"),
            textOutput("li")
    )
  )
))
