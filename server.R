library(shiny)
shinyServer(
    function(input, output) {
        x <- reactive({as.numeric(input$weight)/(as.numeric(input$height)^2)*10^4})
        output$bmi <- renderText({x() })
        output$category <- renderText({
            if (x() < 18.5) "Underweight"
            else if (x() < 24.9) "Normal weight"
            else if (x() < 29.9) "Overweight"
            else "Obesity"})
    }
)