codeoceanR::rt_score()
codeoceanR::rt_plot1()

# Lösungen dieser Bonusaufgaben dürfen auch jetzt schon im Forum besprochen werden.

# B1 ----
# Plotte erneut aus 'airquality' die Ozonwerte (y) über die Temperatur (x).
# tb1_start
plot(x=airquality$Temp, y=airquality$Ozone)

# tb1_ende


# B2 ----
# Füge Linien-segmente für eine "piecewise regression" hinzu.
# Folgende sind die Koordinaten in zwei Formaten:
# von (57,9) nach (80,36) und von dort nach (97,108) # für lines, hier nicht verlangt
# c(57,80), c(9,36), c(80,97), c(36,108)             # für die hier verlangte Funktion
# tb2_start
segments(x=c(57,80), y=c(9,36), x1=c(80,97), y1=c(36,108))

# tb2_ende


codeoceanR::rt_plot2()
codeoceanR::rt_plot1() # in CodeOcean für B11 auskommentieren


# B3 ----
# Richte ein Diagramm mit zwei Panels untereinander ein.
# Die Ränder sollen schmal (< 3.1) sein und die Achsennummern aufrecht stehen.
# lay <- layout(matrix(c(1,1,2,2), ncol=2, byrow=TRUE),
#                widths=c(6,6,4,4))
# layout.show(lay)
# Setze die Grafik-Parameter für zwei Panels und schmale Ränder
par(mfrow=c(2,1), mar=c(3,3,3,3), las=1)

# Erster Plot
plot(1:10, runif(10), main = "Erstes Panel")

# Zweiter Plot
plot(1:10, rnorm(10), main = "Zweites Panel")

# Setze die Grafik-Parameter zurück auf die Standardwerte
defaultSettings <- par(mfrow = c(1,1), mar = c(5.1, 4.1, 4.1, 2.1)) 
par(defaultSettings)

# B4-10 ----
# Erstelle ein Balkendiagramm der Spaltenmittelwerte des Datensatzes 'mtcars'.
# tb4_start
barplot(colMeans(mtcars))

# tb4_ende
# Füge eine Box um die Plotregion hinzu.
# tb5_start
box("plot", col="red")

# tb5_ende
# Plotte je ein Histogramm der mtcars-Spalten mpg, cyl und disp (eines pro Abschnitt).
# tb6_start
hist(mtcars$mpg)

# tb6_ende
# tb7_start
hist(mtcars$cyl)

# tb7_ende
# tb8_start
hist(mtcars$disp)

# tb8_ende
parImTest <- par() # diese Zeile nicht ändern oder verschieben. Sie ist zum Scoren da.

# Die folgenden Befehle sind bereits vorhanden und dürfen bei Wunsch verschönert werden.
# tb9_start
stripchart(mtcars$disp) 

# tb9_ende
# tb10_start
stripchart(mtcars$mpg)

# tb10_ende


# B11 ----
# Exportiere alle Grafiken ab B3 in eine Datei mit dem Namen "grafik.pdf".
# Die Seitenhöhe soll 10 Zoll betragen.
# Bedenke, wo der par-Aufruf relativ zum pdf-Aufruf stehen muss,
# um in der exportierten Grafik wirksam zu werden.
pdf("grafik.pdf", height = 10) 
  par(mfrow=c(3,1), mar = c(3,3,3,3), las = 1)
  plot(1:10, runif(10), main = "Erstes Panel")
  plot(1:10, rnorm(10), main = "Zweites Panel")
  barplot(colMeans(mtcars))
  box("plot", col="red")
  hist(mtcars$mpg)
  hist(mtcars$cyl)
  hist(mtcars$disp)
  stripchart(mtcars$disp)
  stripchart(mtcars$mpg)
dev.off() 

codeoceanR::rt_plot2() # in CodeOcean für B11 auskommentieren

# B12 ----
# Kombiniere die richtigen Aussagen.
# Nicht alle Buchstaben werden mit einer Zahl verbunden!
# Wenn zum Beispiel A und 1 zusammengehören und auch D und 3, 
# würdest du das wie folgt signalisieren:
statements <- c(A=5, C=3, D=1) # ändere dies zur richtigen Kombination
# A: Boxplot
# B: Barplot
# C: Histogramm
# D: Pairs Plot
# 1: Multipanel Plot, z.B. für mehrere Spalten in einem data.frame
# 2: Diagramm zur Darstellung mehrerer Zeitreihen
# 3: Diagramm mit Anzahl der Beobachtungen pro Klasse, zur Visualisierung einer Verteilungsform
# 4: Grafik mit mehreren Baumdiagrammmen
# 5: Diagramm zur Darstellung des Medians, der Quartile und der Extrema einer Variable
# 6: Diagramm mit dem Index der ganzen Zahlen 1:length(vec) auf der x-Achse
