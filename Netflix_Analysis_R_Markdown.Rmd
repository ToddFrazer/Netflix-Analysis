---
title: "Netflix Analysis RMarkdown"
author: "Todd Frazer"
date: "`r Sys.Date()`"
output: github_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
```

## Data Header of 20,000 data points from Netflix open source data from Kaggle and Yahoo Finance. 

```{r Netflix, echo=FALSE}
library(ggplot2)
Netflix_raw_data <- read.csv("C:/Users/toddf/Desktop/Google Data Analytics/Netflix_Data_Analysis/Netflix_raw_data.csv")
head(Netflix_raw_data)

```

## Below we have compared the Volume of traded shares with the Median High Share Price.

```{r Volume vs Shares, echo=TRUE}
ggplot(data = Netflix_raw_data)+
  geom_smooth(mapping = aes(x = High, y = Volume),color = 'blue')+
  labs(title = "Volume of Netflix Shares Traded Per Median High", caption = "Data collected through Yahoo Finance and Kaggle open source data. Visualized by Todd Frazer")+
  xlab("Median High Share Price")+
  ylab("Amount of Shares traded")+
  annotate("text", x = 400, y = 20000000, label = "Amount of shares traded decreased significantly as price increased.", color = 'red', fontface = 'bold')
```

