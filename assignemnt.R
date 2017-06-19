# Monthly gold prices since 1950 in USD (London market).
# Data is sourced from the Bundesbank.
# The maintainers have licensed under the Public Domain Dedication and License.
# Data from https://github.com/datasets/house-prices-us

options(warn=-1)
suppressMessages(library(plotly))
housePriceData <- read.csv("C:\\Users\\Administrator\\Documents\\Coursera\\DDP\\Week3\\UsHousePrices.csv", header = TRUE, sep="\t", stringsAsFactors = FALSE)


f <- list(
  family = "Courier New, monospace",
  size = 18,
  color = "#7f7f7f"
)

x <- list(
  title = "Months",
  titlefont = f
)
y <- list(
  title = "House price (USD)",
  titlefont = f
)

plot_ly(housePriceData, x = ~as.Date(Date), y = ~NationalUS, type = 'scatter', 
        mode = 'lines') %>% layout(xaxis = x, yaxis = y)


