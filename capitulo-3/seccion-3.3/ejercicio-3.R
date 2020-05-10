
# Ejercicio 3, sección 3.3, capítulo 3 ------------------------------------

library(shiny)

# Opciones para tablas
# 
options <- list(
  pageLength = 5,
  ordering = FALSE,
  searching = FALSE
)


# Aplicación --------------------------------------------------------------


ui <- fluidPage(
  dataTableOutput("table")
)

server <- function(input, output, session) {
  output$table <- renderDataTable(
      mtcars, 
      options = options,
      
    )
}

shinyApp(ui, server)
