\name{AsApARowdates}
\alias{AsApARowdates}
\title{AsApARowdates}
\description{
Esta función convierte tibbles con columna de fechas en dataframes,
donde la columna de fechas son los rownames del dataframe.
Se utiliza para copiar las tablas de las funciones de descarga automática
a la base de datos de AsApA
}
\usage{
AsApARowdates(tibb)
}
\arguments{
\item{tibb}{Un tibble del tipo generado por las funciones de descarga automática de datos}

}

\examples{
token_inegi <- "e6198ee1-4481-4c00-835c-920d299e0204"
inegisource <- read.csv(file = "INDEX/CAT_BDD_INEGIR.csv")
balanza_source <- inegisource %>%
  filter(indicator == "Balanza Comercial")

balanza_data <- AsApAInegi(balanza_source$api.id, balanza_source$sname, token_inegi)




balanza_data <- AsApARowdates(balanza_data)

asapadb_remote = dbConnect(MySQL(),  #remote is to be used for dbms
                           user='asapacom_Felix',
                           password='zPySwGE4GUHQ7v9',
                           dbname='asapacom_SisAna',
                           host='www.asapa.com')

dbWriteTable(asapadb_remote, "balanza_com_data", balanza_data, row.names = TRUE, overwrite = FALSE, append = TRUE )
}
