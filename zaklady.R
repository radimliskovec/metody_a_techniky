# ------ Úkol č. 1 -----

# Přiřazení hodnoty do proměnné
x <- 10

# Vypsání hodnoty proměnné
print(x)

# ------ Úkol č. 2 ------

# Vytvoření vektoru
vec <- c(1, 2, 3, 4, 5)

# Sčítání vektorů
result <- vec + 10

# Vypsání výsledku
print(result)

# ------ Úkol č. 3 ------

# Vytvoření matice
matice <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)

# Vypsání matice
print(matice)

# ------ Úkol č. 4 ------

# Definice jednoduché funkce
soucet <- function(a, b) {
  return(a + b)
}

# Volání funkce
vysledek <- soucet(5, 3)
print(vysledek)

# ------ Úkol č. 5 ------
x <- 10

# Podmínka if-else
if (x > 5) {
  print("x je větší než 5")
} else {
  print("x není větší než 5")
}

# ------ Úkol č. 6 ------

# Cyklus for
for (i in 1:5) {
  print(i)
}

# ------ Úkol č. 7 ------

# Vytvoření jednoduchého grafu
graf <- plot(vec, type = "l", col = "blue", lwd = 2)

# Přidání popisků
title(main = "Můj první graf", xlab = "Osa X", ylab = "Osa Y")

# ------ Úkol č. 8 ------

# Vytvoření jednoduchého grafu
graf <- plot(vec, type = "l", col = "blue", lwd = 2)

# Přidání popisků
title(main = "Můj první graf", xlab = "Osa X", ylab = "Osa Y")

# ------ Úkol č. 9 ------

# Instalace a načtení balíčku dplyr a leaflet
#install.packages("dplyr")
#install.packages("leaflet")
library(dplyr)
library(leaflet)

# Seznam souřadnic bodů (někde) v Brně
body <- data.frame(
  lat = c(49.1951, 49.2024, 49.1913),
  lon = c(16.6068, 16.6070, 16.6114),
  popis = c("Bod 1", "Bod 2", "Bod 3")
)

# Vytvoření mapy Leaflet
m <- leaflet() %>%
  addTiles() %>%  # Přidání dlaždicové mapy
  addMarkers(data = body, ~lon, ~lat, popup = ~popis)  # Přidání markerů

# Zobrazení mapy
m
