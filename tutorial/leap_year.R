library(shiny)
library(lubridate)
ui <-fluidPage(pageWithSidebar(
  headerPanel("This Shiny apps calculate it is a leap year or not"),
  sidebarPanel(
    dateInput("birthday", "Please enter your birthday (YYYY-MM-DD) :"),
    checkboxGroupInput("display", "Do you want to:",
                       c("Display Asnwer" = "1"))

  ),
  mainPanel(
    h5('Your Birthday is:'),
    verbatimTextOutput("age"),
    verbatimTextOutput("zod")
  )
))


server <- function(input, output) {
  output$age <- renderPrint({format(input$birthday,"%A %d %B %Y")})
  output$zod <- renderPrint(ProcessOptions({input$display}))
  ProcessOptions <- function(x){
    input <- "Please choose to calculate your age or display your zodiac sign:"
    if (length(x)==0){
      return(cat(paste(input,"You have chosen nothing!",sep="\n")))
    }
    else if (length(x)>0){
      for (i in 1:length(x)){
        input <- paste(input,showOption(x[i]),sep="\n")
      }
      return(cat(input))
    }   
  }
  showOption <- function(i){
    if (i==1){
      x1 <- "\n-Show the answer now -->"
      year<-year
      year<-as.numeric(substr(input$birthday, 1, 4))
      if((year %% 4) == 0) {
        if((year %% 100) == 0) {
          if((year %% 400) == 0) {
            print(paste(year,"is a leap year"))
          } else {
            print(paste(year,"is not a leap year"))
          }
        } else {
          print(paste(year,"is a leap year"))
        }
      } else {
        print(paste(year,"is not a leap year"))
      }
      #return(paste(x1,finalAge,sep="\n"))
    }
    
  }
}


shinyApp(ui = ui, server = server)
