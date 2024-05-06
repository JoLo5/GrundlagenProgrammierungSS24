codeoceanR::rt_score()

# A4 ----
# Schreibe eine Funktion, die den Mittelwert der positiven Zahlen ausgibt.
# Für diese Aufgabe zählt 0 als positiv.
posMittel <- function(zahlen) {
  return(mean(zahlen[which(zahlen>=0)]))
  }
posMittel(-3:5) # soll 2.5 sein


# A5 ----
# Schreibe eine Funktion, die das n-letzte Maximum ermittelt.
# Per default soll das normale Maximum berechnet werden.
# Hint: gib dem zweiten Argument einen Standardwert (erste Folie in 2.1 Funktionen).
# Hinweis: Falls du in 2.2 Logik A10 x[-which.max(x)] verwendest: hier hilft der Ansatz nicht.
# Aber wir haben ja schonmal Daten sortiert...
nthMax <- function(x,n=1) {
  sortedX <- sort(x)
  positionVector <- length(sortedX)-n+1
  return(sortedX[positionVector])
  }
nthMax(1:9)    # 9
nthMax(1:9, 2) # 8
nthMax(1:9, 3) # 7


# Mache weiter in "R29_Datentypen_3.R"
