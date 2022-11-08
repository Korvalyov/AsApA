\name{AsApABanxico}
\alias{AsApABanxico}
\title{AsApABanxico}
\description{
Esta función es un wrapper para la función getSeriesData de siebanxicor.

Requiere la librería de tidyverse

El output de esta función es un tibble con una columna de fechas, y columnas con valores de las series de tiempo, nombradas con la serie de nombres que se proporcionen

}
\usage{
AsApABanxico(serieslist, seriesnames, token_banxico)
}
\arguments{
\item{serieslist}{Un vector con las claves que aparecen en el sitio del SIE de Banxico}
\item{seriesnames}{Un vector con los nombres que uno desea que tengan las series en el dataframe}
\item{token_banxico}{string de token para la consulta de la API}

}

\examples{
AsApAFred(serieslist, seriesnames, token_inegi)
}
