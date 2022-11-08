\name{AsApAInegi}
\alias{AsApAInegi}
\title{AsApAInegi}
\description{
Esta función es un wrapper para la función inegi_series de InegiR.

Requiere la librería de tidyverse

El output de esta función es un tibble con una columna de fechas, y columnas con valores de las series de tiempo, nombradas con la serie de nombres que se proporcionen

}
\usage{
AsApAInegi(serieslist, seriesnames, token_inegi)
}
\arguments{
\item{serieslist}{Un vector con las claves de la API del generador de consultas de
Inegi}
\item{seriesnames}{Un vector con los nombres que uno desea que tengan las series en el dataframe}
\item{token_inegi}{string de token para la consulta de la API del Inegi}

}

\examples{
AsApAInegi(serieslist, seriesnames, token_inegi)
}
