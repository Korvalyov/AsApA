AsApAFred <- function(serieslist, seriesnames, token_fred){
  require(fredr)
  require(tidyverse)
  fredr::fredr_set_key(token_fred)
  df <- purrr::map_dfr(serieslist, fredr)
  df <-df %>% pivot_wider(id_cols = "date",
                          values_from = "value",
                          names_from = "series_id")
  colnames(df) <- c("date" ,seriesnames)
  #output: tibble con columna de fecha
  return(as_tibble(df))
}
