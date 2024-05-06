codeoceanR::rt_score()

# A6 ----
# startsWith sagt, ob ein Charstring mit etwas vorgegebenem anfängt:
zeichen <- c("Hallo", "und", "hi", "Helden")
startsWith(zeichen, "H") # TRUE  FALSE  FALSE  TRUE

# Schreibe eine Funktion, die einen Vektor mit Zeichenketten als Eingabe nimmt 
# und mittels Filtern alle Einträge entfernt, die mit "fake_" beginnen, sowie
# alle Vorkommnisse von "dummy" mit "--" ersetzt.
textVerarbeiten <- function(z) {
  elementsWithoutFake_ <- !startsWith(z, "fake_")
  vectorWithoutFake_ <- z[elementsWithoutFake_]
  vectorEdited <- gsub(pattern = "dummy", replacement = "--", x=vectorWithoutFake_)
  return(vectorEdited)
  }

textVerarbeiten(c("Sachen","mit","fake_zeug","und dummy Code")) 
# Soll sein: "Sachen"  "mit"  "und -- Code"
textVerarbeiten(c("fake A", "fake_ B", "2 dummy mal dummy", "mittig fake_")) 
# Soll sein "fake A"  "2 -- mal --"  "mittig fake_"
textVerarbeiten(c("Vektor","wo alles", "bleibt")) # "Vektor" "wo alles" "bleibt"
textVerarbeiten(c("fake_ alles","fake_ weg, dummy egal")) # character(0)
# Und wird wie üblich noch mit weiteren Inputs geprüft.


# A7 ----
# Schreibe eine Funktion, die den Median für jede Gruppe berechnet.
gruppenMedian <- function(values, groups) {
  tapply(values, groups, median)
  }
gruppenMedian(1:14, c("A","B","A","C","U","S","B","A","R","A","C","C","U","S")) 
 #   A    B    C    R    S    U 
 # 5.5  4.5 11.0  9.0 10.0  9.0 


# A8 ----
# Mit welchem Befehl kannst du alle installierten CRAN Pakete aktualisieren?
aktualisierBefehl <- "update.packages()"
# Pro Tipp: führe diesen Befehl regelmäßig aus, zB jetzt :).


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
# Beschreibe bitte vor der Abgabefrist noch keine Lösungen im Forum.
