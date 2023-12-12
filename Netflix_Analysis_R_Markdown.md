Netflix Analysis RMarkdown
================
Todd Frazer
2023-12-12

## Data Header of 20,000 data points from Netflix open source data from Kaggle and Yahoo Finance.

    ##         Date     Open     High      Low    Close Adj.Close    Volume
    ## 1 2002-05-23 1.156429 1.242857 1.145714 1.196429  1.196429 104790000
    ## 2 2002-05-24 1.214286 1.225000 1.197143 1.210000  1.210000  11104800
    ## 3 2002-05-28 1.213571 1.232143 1.157143 1.157143  1.157143   6609400
    ## 4 2002-05-29 1.164286 1.164286 1.085714 1.103571  1.103571   6757800
    ## 5 2002-05-30 1.107857 1.107857 1.071429 1.071429  1.071429  10154200
    ## 6 2002-05-31 1.078571 1.078571 1.071429 1.076429  1.076429   8464400

## Below we have compared the Volume of traded shares with the Median High Share Price.

``` r
ggplot(data = Netflix_raw_data)+
  geom_smooth(mapping = aes(x = High, y = Volume),color = 'blue')+
  labs(title = "Volume of Netflix Shares Traded Per Median High", caption = "Data collected through Yahoo Finance and Kaggle open source data. Visualized by Todd Frazer")+
  xlab("Median High Share Price")+
  ylab("Amount of Shares traded")+
  annotate("text", x = 400, y = 20000000, label = "Amount of shares traded decreased significantly as price increased.", color = 'red', fontface = 'bold')
```

    ## `geom_smooth()` using method = 'gam' and formula = 'y ~ s(x, bs = "cs")'

![](Netflix_Analysis_R_Markdown_files/figure-gfm/Volume%20vs%20Shares-1.png)<!-- -->
