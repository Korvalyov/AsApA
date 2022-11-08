AsApAInegi <- function(serieslist, seriesnames, token_inegi){
  require(inegiR)
  require(tidyverse)

  #usamos map_dfr para aplicar la f de inegi a cada serie y generar df horizontal
  df <- purrr::map_dfr(serieslist, inegi_series, token_inegi, .id = "SERIES")
  #pivoteamos el df a vertical sacando valores e identificando cada serie
  df <-df %>% pivot_wider(id_cols = "date",
                          values_from = "values",
                          names_from = "SERIES")
  #renombramos las ids de cada serie a su nombre con el que quedan guardadas
  colnames(df) <- c("date" ,seriesnames)
  #output: tibble con columna de fecha
  return(as_tibble(df))
}
