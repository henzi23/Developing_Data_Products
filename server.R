library(Rcpp)

mulch <- function(length,width,thick) round((length*width*(as.numeric(thick)/12))/27,1)

shinyServer(
      function(input,output){
            output$oid1 <- renderPrint({input$length})
            output$oid2 <- renderPrint({input$width})
            output$oid3 <- renderPrint({input$thick})
            output$yards <- renderPrint({mulch(input$length,input$width,input$thick)})
      }
)