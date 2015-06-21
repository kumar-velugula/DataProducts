#install.packages("shiny")
library(shiny)

# manipulate is favored function of Brian
# rCharts is interactive graphics using modern javascript lib

#creating file named ui.R
#server.R

shinyUI(pageWithSidebar(
        #Application Title
        headerPanel("Diabetes prediction!"),
        
        sidebarPanel(h1('Sidebar panel'),
                     h4('Enter numeric input or increment the counter for both the Glucose and Age, and click submit to view Diabetese prediction.'),
                     numericInput('glucose', 'Glucose mg/dl', 90, min=50, max=200, step=5),
                     numericInput('age', 'Age years', 20, min=5, max=100, step=1),
                     submitButton('Submit'),
                     h4('Source: Based on class room example taught by Brian C.'),
                     h4('Prediction is based on glucose and age factor. For those 30+ years their risk is calculated by fraction of glucose/200. If you are younger than 30 years then risk is reduced by fraction of age/100.')
                     ),
        mainPanel(h3('Result of prediction'),
                  
                  h4('You entered glucose value:'),
                  verbatimTextOutput("glucoseValue"),
                  h4('Your age in years:'),
                  verbatimTextOutput("ageValue"),
                  h4('Which resulted in a prediction of '),
                  verbatimTextOutput("prediction")
                  )
        
        ))