Netflix Analysis RMarkdown
================
Todd Frazer
`r Sys.Date()`

`{r setup, include=FALSE} knitr::opts_chunk$set(echo = FALSE)`

## Data Header of 20,000 data points from Netflix open source data from Kaggle and Yahoo Finance.

\`\`\`{r Netflix, echo=FALSE} library(ggplot2) Netflix_raw_data \<-
read.csv(“C:/Users/toddf/Desktop/Google Data
Analytics/Netflix_Data_Analysis/Netflix_raw_data.csv”)
head(Netflix_raw_data)


    ## Below we have compared the Volume of traded shares with the Median High Share Price.

    ```{r Volume vs Shares, echo=TRUE}

![](Netflix_Analysis_R_Markdown_files/figure-gfm/Volume vs Shares-1.png)<!-- -->
