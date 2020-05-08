
# Ejercicio 2, sección 2.8, capítulo 2 ------------------------------------



library(shiny)

ui <- fluidPage(
  sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),
  "then x times 5 is",
  textOutput("product")
)

server <- function(input, output, session) {
  output$product <- renderText({ 
    input$x * 5 # La variable "x" está guardada dentro de "input"
  })
}

shinyApp(ui, server)
