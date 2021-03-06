% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pdsi.R
\name{pdsi}
\alias{pdsi}
\alias{pdsi_ac}
\title{Índice de Severidad de Sequía de Palmer}
\usage{
pdsi(precipitacion, etp, cc = 100)

pdsi_ac(precipitacion, etp, cc = 100)
}
\arguments{
\item{precipitacion}{serie de precipitación sin datos faltantes.}

\item{etp}{serie de evapotranspiración potencial sin datos faltantes.}

\item{cc}{capacidad de campo (en mm).}
}
\value{
Un vector de la misma longitud que \code{precipitacion} con el PSDI correspondiente a cada caso.
}
\description{
Usa \link[scPDSI:pdsi]{scPDSI::pdsi} para calcular el Indice de Severidad de Sequia de Palmer.
\code{psdi_ac()} calcula la versión autocalibrada.
}
\examples{
# datos aleatorios
datos <- data.frame(fecha = seq(as.Date("1985-01-01"), as.Date("2015-12-01"), by = "1 month"))
set.seed(42)
datos$pp <- rgamma(nrow(datos), shape = 2, scale = 10)
datos$etp <- rgamma(nrow(datos), shape = 1, scale = 3)

datos$pdsi_ac <- with(datos, pdsi(pp, etp))


}
