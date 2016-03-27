library(shiny)

# "World Phones" dataset, Preloaded with R  

library(datasets)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Telephones By World Regions (1951 - 1961)"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("region", "Region", 
                    choices=colnames(WorldPhones)),
        hr(),
        helpText("Please Select a Region to View the Telephone Count. Count of Telephones is displayed as a Bar Chart ==>")
      ),
      
      # Create a spot for the barplot
      mainPanel( 
        plotOutput("phonePlot")
      )
      
    )
  )
)