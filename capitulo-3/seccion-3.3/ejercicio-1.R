
# Ejercicio 1, sección 3.3, capítulo 3 ------------------------------------


library(shiny)

ui <- fluidPage(
  plotOutput("plot",width = "300px", height = "700px")
)

server <- function(input, output, session) {
  output$plot <- renderPlot({
    plot(1:5)
  })
}

shinyApp(ui, server)