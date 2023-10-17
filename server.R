# read in data
likes <- readRDS('likes.rds')

# Define server logic  ----
server <- function(input, output) {
  
  output$table_output = reactable::renderReactable({
    
    # create table
    reactable::reactable(likes)
  })
}
