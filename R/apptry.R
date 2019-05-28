#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL

install.packages("shiny")
library(shiny)
#source("./packageTry.R")

# apptry.R
#' A simple shiny app which use the function addme to add two numbers thanks to a UI
#'
#' @param ui ('ui') The modeler of the user interface
#' @param server ('server') The output part
#' @return A simple app thanks to which the user can add two numbers manualy
#' @export

ui <- fluidPage(
  h1("1st Shiny app"),
  flowLayout(
    numericInput(inputId = "num1",
                 "Number 1", value = 0),
    # uiOutput("n1"),

    numericInput(inputId = "num2",
                 "Number 2", value = 0),
    # uiOutput("n2"),

    actionButton(inputId = "add",
                 label = "Add"),


    textOutput("res")
  )
)

server <- function(input, output){

  result <- eventReactive(input$add, {
    addme(input$num1, input$num2)
  })
  output$res <- renderText({
    result()
  })

}

shinyApp(ui = ui, server = server)
