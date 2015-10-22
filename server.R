
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
        
        output$distPlot <- renderPlot({
                
                n <- input$smilerate
                mouth <- function(x){n*x^2}
                eyepos <- 0.8
                eye <- function(x){n^2*x^3+eyepos}
                curve(
                        mouth(x)
                        , from = -0.5
                        , to = 0.5
                        , xlim=c(-1,1)
                        , ylim=c(-1,1)
                        , bty="n"
                        , ylab=""
                        , xlab=""
                        , yaxt="n"
                        , xaxt="n"
                        , lwd= 5
                )
                curve(eye(x), add = TRUE,from = -0.3, to = -0.1, lwd=5)
                curve(eye(x), add = TRUE,from = 0.1, to = 0.3,lwd=5)
                #plot(c(0,1),add = TRUE)
                
                if (n > 0.2) {
                        moodtext <- "I am happy"
                } else if (n <= 0.2 & n >= -0.2) {
                        moodtext <- "I am neutral"
                } else if (n < -0.2){
                        moodtext <- "I am sad"
                }
                
                output$info <- renderText({
                        print(moodtext)        
                })
                
                output$calculations <- renderText({
                        paste(
                                c("mouth function: ", paste(n,"* x^2")
                                  ,"eye function: ",paste(n^2," * x^3 +",eyepos))
                                , sep = "\t"
                        )  
                })
        })
        
})
