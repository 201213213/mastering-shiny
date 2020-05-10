
# Ejercicio 2, sección 3.3, capítulo 3 ------------------------------------

library(shiny)

ui <- fluidPage(
  fluidRow(
    # Primera gráfica
    column(
      6,
      plotOutput("plot1")
    ),
    
    # Segunda gráfica
    column(
      6,
      plotOutput("plot2")
    )
  )
)

server <- function(input, output, session) {
  
  
  output$plot1 <- renderPlot(plot(1:3))
  
  output$plot2 <- renderPlot(plot(4:6))
}

shinyApp(ui, server)
