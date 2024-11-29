# Borrar la librería si ya está instalada
if ("RMoon" %in% installed.packages()) {
  remove.packages("RMoon")
}

# Instalar devtools si no está instalado
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}

# Instalar RMoon desde GitHub
devtools::install_github("FJROAR/RMoon")

# Cargar la librería para verificar que se instaló correctamente
library(RMoon)

JulianDayMeeus(1492, 10, 12, 12, 0, 0)[[1]]

JulianDayMeeus(-4712, 1, 1, 12, 0, 0)[[1]]

difftime(as.Date("1582-10-01"), as.Date("1582-10-31"), units = "days")
JulianDayMeeus(1582, 10, 31, 0, 0, 0)[[1]] - JulianDayMeeus(1582, 10, 1, 0, 0, 0)[[1]]