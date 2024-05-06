codeoceanR::rt_score()

# Dies ist eine bewertete Aufgabe für ein Zertifikat. 
# Sie muss vor der angegebenen Zeit eingereicht werden (mit rt_submit()).
# Besprich vor der Abgabefrist bitte keine Lösungen im Forum, erst danach.


# A1 ----
head(trees)
trees$verhaeltnis <- c(trees$Height/trees$Girth)
# Füge eine Spalte 'verhaeltnis' von Höhe zu Umfang zum Datensatz 'trees' hinzu.
# Zur Erinnerung: Mit der $-Syntax vervollständigt Rstudio die Spaltennamen automatisch.
# Hinweis: Wenn du von vorne beginnen möchtest, löscht rm(trees) die Kopie im GlobalEnv
# aber die Instanz im Paket 'datasets' bleibt erhalten.


# A2 ----
# Verwende Filterung, um ein Subset aus DFs wie dem eingebauten "iris" zu erstellen.
# Die DFs haben die gleichen Spaltennamen wie 'iris', aber unterschiedliche Zeilen.
# Die Teilmenge sollte nur die Einträge für die Spezies versicolor enthalten.
nur_vers <- function(df) {
  subset_df <- df[df$Species=="versicolor",]
  }

str(  nur_vers(iris)  ) # sollten 50 Zeilen sein
iris[48:52,]
nur_vers(iris[48:52,]) # sollte sein:
#    Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
# 51          7.0         3.2          4.7         1.4 versicolor
# 52          6.4         3.2          4.5         1.5 versicolor


# A3 ----
# Ermittle die Standardabweichung jeder Zeile in der eingebauten Matrix 'WorldPhones'.
phones_zeilen_sd <- apply(WorldPhones, 1, sd)

# Mache weiter in "R39_Tabellen_2.R"