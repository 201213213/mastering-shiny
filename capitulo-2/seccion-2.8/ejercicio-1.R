
# Ejercicio 1, sección 2.8, capítulo 2 ------------------------------------


library(shiny)

ui <- fluidPage(
  textInput("name", "¿Cuál es tu nombre?"),
  textOutput("greeting")
)

server <- function(input, output, session) {
  output$greeting <- renderText({
      paste(
      "Hola", input$name, 
      sep = " "
    )
  })
}

shinyApp(ui, server)