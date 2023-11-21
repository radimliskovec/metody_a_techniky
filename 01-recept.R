# Nastavení dat receptu
ingredience <- c("Vejce", "Sůl", "Pepř", "Mléko", "Maslo")
mnozstvi <- c(2, 0.5, 0.25, 1, 1)  # Počet jednotek každé ingredience

# Vytvoření datového rámce
recept_data <- data.frame(Ingredience = ingredience, Množství = mnozstvi)

# Vytvoření sloupcového grafu
barplot(recept_data$Množství, names.arg = recept_data$Ingredience, col = "skyblue",
        main = "Recept na míchaná vajíčka", xlab = "Ingredience", ylab = "Množství",
        border = "black", ylim = c(0, max(mnozstvi) + 1))

# Přidání popisků na osy
text(cex = 0.8, x = 1:length(ingredience), y = mnozstvi + 0.1, labels = mnozstvi)

# Přidání legendy
legend("topright", legend = "Množství", fill = "skyblue", border = "black")
