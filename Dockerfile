FROM rocker/shiny:4.3.2
RUN install2.r rsconnect tibble dplyr stringr rtweet htmltools lubridate bslib reactable
WORKDIR /home/dataRetrieval_github_actions
COPY ui.R ui.R 
COPY server.R server.R 
COPY likes.rds likes.rds
COPY deploy.R deploy.R
CMD Rscript deploy.R