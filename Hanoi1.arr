# hver sirkel har fått navn i kronologisk rekkefølge etter størrelse (1-4), fulgt med bokstaven som kjennetegner fargen til sirkelen. Dette gjør det oversiktlig og enkelt å skille, samtidig som det blir lettere for de som skal lese koden.

# c1r = rød sirkel
# c2g = grønn sirkel
# c3b = blå sirkel
# c4o = oransje sirkel
# tower = de 3 ulike pinnene
# background er bakgrunnen til selve spillet. Man kan også evt bruke kommandoen "empty-scene" for å oppnå   samme resultat

# selve modellen til spillet. Et tårn, 4 ulike sirkler og en bakgrunn. Bakgrunnen er en sort firkant hvor vi bare ser kantene, eller "outlinen". I dette tilfellet, kan man også bruke funksjonen "empty-scene" som gir samme resultat. Selv om modellen består av 3 tårn, så defineres det bare et tårn i koden under ettersom man gjenbruker samme definisjon for de andre tårnene. "circle(20, "solid", "red") betyr at det er en sirkel, med 20 i radius, den skal være fylt (solid) med en rødfarge. Disse uttrykkene er senere plasser ved bruk av funksjonen "put-image". 

tower = circle(5, "solid", "black") 
c1r = circle(20, "solid", "red")
c2g = circle(30, "solid", "green")
c3b = circle(45, "solid", "blue")
c4o = circle(55, "solid", "orange")
background = rectangle(600, 200, "outline", "black")


# initial state til modellen som representerer begynnelsen av spillet, med alle ringene på venstre side. put-image funksjonen er brukt her for å lage en visuell presentasjon av spillet. put-image : (bildet som er tidligere definert), sammen med x- og y koordinater. Dette gjentar seg for hvert image som er tidligere definert. Rekkefølgen til de ulike images bestemmer hvilket lag de befinner seg på, da er det hensiktsmessig å ha tårnene på toppen slik at man alltid ser de og det samme er gjort med sirklene. 

initial = put-image(tower, 100, 100,
  put-image(tower, 300, 100,
    put-image(tower, 500, 100,
      put-image(c1r, 100, 100, 
        put-image(c2g, 100, 100,
          put-image(c3b, 100, 100, 
            put-image(c4o, 100, 100, background)))))))

# de ulike fasene, eller stages, i spillet er definert, helt ifra "first-stage" til "seventh-stage". De ulike fasene representerer lovlige trekk i Hanoi spillet. For hvert trekk, så er x koordinatene til de ulike sirklene flyttet på. Alle tårnene står på samme y-akse. Selve bakgrunnen er 600px i bredde, og de ulike tårnene er plassert på x:100, x:300, og x:500. Dette gjør at de ulike tårnene blir sentrert, og for å flytte sirklene så trenger man bare å endre x-koordinatene til enten 100, 300 eller 500 for å få sirkelen på et av tårnene, ettersom tårnene er linjet opp med hverandre. 

# ut ifra praktisk hensikt, så omtales de 3 ulike tårnene som t1, t2 og t3 til tross for at det er bare x-aksen som skiller de i koden. I first-stage, så er c1r -> t2, og c2g -> t3.

first-stage = put-image(tower, 100, 100,
  put-image(tower, 300, 100,
    put-image(tower, 500, 100,
      put-image(c1r, 300, 100, 
        put-image(c2g, 500, 100,
          put-image(c3b, 100, 100, 
            put-image(c4o, 100, 100, background)))))))

# i second-stage er c1r -> t3, og c3b -> t2

second-stage = put-image(tower, 100, 100,
  put-image(tower, 300, 100,
    put-image(tower, 500, 100,
      put-image(c1r, 500, 100, 
        put-image(c2g, 500, 100,
          put-image(c3b, 300, 100, 
            put-image(c4o, 100, 100, background)))))))

# i third-stage er c1r -> t1, og c2g -> t2

third-stage = put-image(tower, 100, 100,
  put-image(tower, 300, 100,
    put-image(tower, 500, 100,
      put-image(c1r, 100, 100, 
        put-image(c2g, 300, 100,
          put-image(c3b, 300, 100, 
            put-image(c4o, 100, 100, background)))))))

# c1r -> t2, og c40 -> t3

fourth-stage = put-image(tower, 100, 100,
  put-image(tower, 300, 100,
    put-image(tower, 500, 100,
      put-image(c1r, 300, 100, 
        put-image(c2g, 300, 100,
          put-image(c3b, 300, 100, 
            put-image(c4o, 500, 100, background)))))))

# c1r -> t3 og c2g -> t1

fifth-stage = put-image(tower, 100, 100,
  put-image(tower, 300, 100,
    put-image(tower, 500, 100,
      put-image(c1r, 500, 100, 
        put-image(c2g, 100, 100,
          put-image(c3b, 300, 100, 
            put-image(c4o, 500, 100, background)))))))

# c1r og c3b bytter plass ifra t2 og t3

sixth-stage = put-image(tower, 100, 100,
  put-image(tower, 300, 100,
    put-image(tower, 500, 100,
      put-image(c1r, 300, 100, 
        put-image(c2g, 100, 100,
          put-image(c3b, 500, 100, 
            put-image(c4o, 500, 100, background)))))))

# da gjenstår det bare å flytte de gjenstående sirklene (c2g og c1r til t3)

seventh-stage = put-image(tower, 100, 100,
  put-image(tower, 300, 100,
    put-image(tower, 500, 100,
      put-image(c1r, 500, 100, 
        put-image(c2g, 500, 100,
          put-image(c3b, 500, 100, 
            put-image(c4o, 500, 100, background)))))))

# hensikten med linje 105-112 er for å kronologisk spille av de ulike trekkene, helt ifra initial-stage til seventh-stage

initial
first-stage
second-stage
third-stage
fourth-stage
fifth-stage
sixth-stage
seventh-stage
