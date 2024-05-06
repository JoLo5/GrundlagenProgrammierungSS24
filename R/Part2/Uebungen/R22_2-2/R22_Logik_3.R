codeoceanR::rt_score()

# A8 ----
# Erstelle eine Funktion, die einen Vektor mit Zahlen
# sowie einen Vergleichswert als Eingabe akzeptiert.
# Sie soll einen Vektor mit zwei Booleans ausgeben, 
# die folgende Fragen beantworten:
# Sind alle Zahlen > Wert ?  Gibt es irgendwelche Zahlen > Wert ?
alleEinige <- function(vec, wert) {
  c(all(vec > wert), any(vec > wert))
}
# Argumentnamen frei änderbar
alleEinige(1:5, 4) # soll FALSE, TRUE ausgeben


# A9 ----
# Erstelle nun eine ähnliche Funktion für die Fragen:
# Wieviele Zahlen sind > Wert ?  Welcher Anteil ist > Wert ?
anzahlAnteil <- function(vec, wert) {
  count <- sum(vec > wert)
  proportion <- count / length(vec)
  c(count, proportion)
}

# anzahlAnteil(1:5, 4) # soll 1, 0.2 ausgeben


# A10 ----
# Schreibe eine Funktion, die den zweitgrößten Wert des Inputs ausgibt.
# Bei Mehrfachauftreten eines Wertes gilt hier das zweite Vorkommen als zweitgrößter Wert.
# Hint: schließe den größten Wert aus und berechne das Maximum der verbleibenden Elemente.
zweitesMaximum <- function(vec) {
  sorted_vec <- sort(vec, decreasing = TRUE)
  second_max <- sorted_vec[2]
  
  # Finde die zweite Instanz des größten Werts (zweite Vorkommenregel)
  if (sorted_vec[1] == second_max) {
    second_max <- sorted_vec[2]
  } else {
    unique_vals <- unique(sorted_vec)
    if (length(unique_vals) < 2) {
      stop("Vector must have at least two unique values")
    }
    second_max <- unique_vals[2]
  }
  return(second_max)
}


zweitesMaximum(c(5,3,9,1,7,4,8,6)) # soll 8 ausgeben
zweitesMaximum(c(5,3,9,1,7,4,8,9)) # soll 9 ausgeben


# Mache weiter in "R22_Logik_4.R"