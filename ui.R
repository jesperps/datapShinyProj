
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
        
        # Application title
        titlePanel("Smiley Face"),
        
        # Sidebar with a slider input for changeing the mood of smiley face
        sidebarLayout(
                sidebarPanel(
                        width = "3",
                        #height = "",
                        sliderInput("smilerate",
                                    "Moodbar:",
                                    min = -1,
                                    max = 1,
                                    value = 0.5,
                                    step = 0.1),
                        helpText("pull the moodbar to make smiley face happy or sad")
                ), 
                        
                mainPanel(
                        plotOutput(
                                "distPlot"
                                , click = "plot_click"
                                , hover = "plot_hover"
                                , width = "50%"
                                #, height = "200px"
                        ),
                        textOutput("moodinfo"),
                        textOutput("mouthcalc"),
                        textOutput("eyecalc")
                )
        )
))
