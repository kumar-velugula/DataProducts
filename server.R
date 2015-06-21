library(shiny)

diabetesRisk <- function(glucose, age) { 
        if(age < 30) 
                glucose*age/(200*100)
        else
                glucose/200
}
shinyServer(
        function(input, output){
                output$glucoseValue <- renderPrint({input$glucose})
                output$ageValue <- renderPrint({input$age})
                output$prediction <- renderPrint({diabetesRisk(input$glucose,input$age)})
        }
)

#to run call runApp() from the directory
