library("shiny")
#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL
#(`fluidPage`)
#  apptry.R
#' A simple shiny app that adds 2 two number thnaks to a user interface.
#' @aliases apptry
#' @name apptry
#' @import shiny
#'
#'
#'
#' @return (`shinyApp`) The web page on which the app is run.
#'
#source("./packageTry.R")

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
