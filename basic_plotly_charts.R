devtools::install_github("ox-it/oidnChaRts", build_vignettes = TRUE)

library("tidyverse")
library("plotly")
library("oidnChaRts")

## =================== BarChart
data_stacked_bar_chart %>%
  plot_ly(x = ~count,
          y = ~occupation,
          color = ~country_group) %>%
  add_bars() %>%
  layout(barmode = "stack", barnorm = "normal",
         margin = list(l = 240),
         yaxis = list(title = list(text = "")))

data_stacked_bar_chart %>%
  plot_ly(x = ~count,
          y = ~occupation,
          color = ~country_group) %>%
  add_bars() %>%
  layout(barmode = "stack", barnorm = "percent",
         margin = list(l = 240),
         yaxis = list(title = list(text = "")))

## =================== Scatter
data_scatter_plot %>%
  plot_ly(x = ~x,
          y = ~y,
          color = ~type) %>%
  add_markers()

## =================== Line Chart
data_line_chart %>%
  plot_ly(x = ~x,
          y = ~y,
          color = ~trace) %>%
  add_trace(x = ~x,
            y = ~y,
            color = ~trace,
            mode="lines+markers",
            type = "scatter")

## =================== Histogram
diamonds %>%
  plot_ly(x = ~cut, color = ~clarity) %>%
  add_histogram()



