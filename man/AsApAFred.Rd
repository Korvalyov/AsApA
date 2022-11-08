\name{AsApAFred}
\alias{AsApAFred}
\title{AsApAFred}
\description{
Esta función es un wrapper para la función fredr de fredR.

Requiere la librería de tidyverse

El output de esta función es un tibble con una columna de fechas, y columnas con valores de las series de tiempo, nombradas con la serie de nombres que se proporcionen

}
\usage{
AsApAFred(serieslist, seriesnames, token_fred)
}
\arguments{
\item{serieslist}{Un vector con las claves que aparecen en el sitio de FRED}
\item{seriesnames}{Un vector con los nombres que uno desea que tengan las series en el dataframe}
\item{token_fred}{string de token para la consulta de la API}

}

\examples{
AsApAFred(serieslist, seriesnames, token_inegi)
}
