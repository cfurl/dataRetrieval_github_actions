FROM rocker/shiny:4.2.1
RUN install.packages (c("rsconnect","tibble", "dplyr","stringr","rtweet","htmltools","lubridate","bslib", "reactable","tidyverse"))
WORKDIR /home/dataRetrieval_github_actions
COPY ui.R ui.R 
COPY server.R server.R 
COPY likes.rds likes.rds
COPY deploy.R deploy.R
CMD Rscript deploy.R