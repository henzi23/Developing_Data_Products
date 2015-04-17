library(shiny)

shinyUI(pageWithSidebar(
      headerPanel("Mulch Calculator"),
      sidebarPanel(
            h4('This handy apps helps you predict the amount of bark mulch (in cubic yards)
               required to cover a specified area.  To use this app simply enter the 
               length and width of area to be covered and choose the desired thickness.  Then 
               press the calculate button. The results will be shown on the right side.'),
            numericInput('length','Length  of area to cover in feet',0,min=0,max=100,step=1),
            numericInput('width','Width of area to cover in feet',0,min=0,max=100,step=1),
            radioButtons('thick','Thickness of Mulch layer in inches',c(2,3,4)),
            submitButton('Calculate')
      ),
      mainPanel(
            h4('Length Entered (ft)'),
            verbatimTextOutput("oid1"),
            h4('Width Entered (ft)'),
            verbatimTextOutput("oid2"),
            h4('Thickness Entered (in)'),
            verbatimTextOutput("oid3"),
            h4('Cubic yards of mulch required'),
            verbatimTextOutput("yards")
      )
    )
)