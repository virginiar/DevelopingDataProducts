library(shiny)
shinyUI(
    navbarPage("Calculate Your Body Mass Index",
     tabPanel("App",
              pageWithSidebar(
                  headerPanel("Calculate Your Body Mass Index"),
                  sidebarPanel(
                      sliderInput('height', 'Your height in centimeters',value = 175, min = 147, max = 215, step = 1,),
                      sliderInput('weight', 'Your weight in kilograms',value = 75, min = 40, max = 220, step = 1,)
                  ),
                  mainPanel(
                      h4('Your BMI'),
                      textOutput('bmi'),
                      h4('BMI category'),
                      textOutput('category')
                  ))
              ),
     tabPanel("Plot",
              p("Documentation:",a("Calculate Your Body Mass Index",href="BMI.html")))
    ))