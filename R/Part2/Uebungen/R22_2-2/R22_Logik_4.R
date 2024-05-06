codeoceanR::rt_score()

# A11 ----
# Korrigiere folgenden Code, der die absteigend sortierten Werte erstellt.
# Hinweis: im versteckten Testscript wird böser Code ausgeführt.
# Interaktiv läuft der Code unten auch jetzt schon, aber im Test nicht.
# Der eigentliche 'Fehler' liegt also im Testscript, aber der
# nachfolgende Code soll sicherer gestaltet werden.
# PS: wer im Browser arbeitet, muss für die genaue Meldung runter scrollen.

werte <- c(5, 9, 1, 4, 3, 8)
if (is.numeric(werte) && length(werte) > 1) {
  sortiert <- sort(werte, decreasing = TRUE)
} else {
  stop("Input is not a numeric vector or contains less than two elements.")
}

sortiert <- sort(werte, decreasing=T) ; sortiert

# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()