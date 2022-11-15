AsApARowdates <- function(tibb){
  require(tidyverse)
  df <- tibb%>%
    column_to_rownames(var = "date")%>%
    as.data.frame()
  return(df)

}
