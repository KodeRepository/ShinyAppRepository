library(shiny)
library(datasets)

# "World Phones" dataset, Preloaded with R  

colors = c("red", "yellow", "green", "violet","orange", "blue", "pink", "cyan")

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$phonePlot <- renderPlot({
    
    # Render a barplot
    barplot(WorldPhones[,input$region], 
            main=input$region,
            ylab="Number of Telephones",col = colors,
            xlab="Year")
  })
})