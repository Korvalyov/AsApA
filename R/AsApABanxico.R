AsApABanxico <- function(serieslist, seriesnames, token_banxico){
  require(siebanxicor)
  require(tidyverse)
  siebanxicor:: setToken(token_banxico)
  df <-map_dfc(serieslist, getSeriesData)
  values <- df%>%
    select(contains("value"))
  colnames(values) <- seriesnames
  dates <- df%>%
    select(contains("date"))%>%
    select(1)
  data <- bind_cols(dates, values)
  return(data)
}
