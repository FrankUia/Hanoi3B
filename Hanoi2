##### Regler for spillet plassert i en tabell med 1 kolonne
Hanoi-Regler= table: Hanoi-regler :: String
  row: 
    "Flytt alle ringene fra venstre til høyre tårn"
  row: 
    "Du kan bare flytte på sirklene som er på toppen"
  row: 
    "Du kan ikke flytte en storre sirkel oppe pa en mindre en"
  row: 
    "Skriv kommando for oversikt over ulike kommandoer"
end

##############

#### Liste over de ulike kommandoene ####
Kommando = table: Kommandoer :: String
  row:
    "rod disk = sirkel1"
  row: 
    "grønn disk = sirkel2"
  row: 
    "blå disk = sirkel3"
  row: 
    "oransje disk = sirkel5"
  row:
    "venstre pinne = k1"
  row: 
    "midt pinne = k2"
  row: 
    "høyre pinne = k3"
  row: 
    "eks: move(sirkel1, k2)"
  row: 
    "skriv Hanoi-Regler for å få opp reglene igjen"
 
end

Hanoi-Regler
Kommando

# Egendefinert datatype som representerer de ulike sirklene. img representerer et image, name er en string og ref pos er en string som representerer posisjonen av sirkelen

data Sirkel:
  | sir(img :: Image, name :: String, ref pos :: String)
end

# Det er laget flere instanser med data typen for å representere de ulike sirklene i spillet'


sirkel1 = sir(circle(50, "solid", "orange"), "sir1", "k1")
sirkel2 = sir(circle(40, "solid", "blue"), "sir2", "k1")
sirkel3 = sir(circle(30, "solid", "green"), "sir2", "k1")
sirkel4 = sir(circle(20, "solid", "red"), "sir3", "k1")
pinne = sir(circle(5, "solid", "black"), "pinne", "k1")

# k1, k2 og k3 er den horisontale plasseringen av pinenne eller sirklene(kvadrant 1, 2 og 3)

bhoyde = 200
bbredde = 400
k1 = bbredde * 0.2 
k2 = bbredde * 0.5
k3 = bbredde * 0.8
midt = bhoyde / 2


bakgrunn = rectangle(bhoyde, bbredde, "solid", "white")

# variabelen er en liste som lagrer den horisontale posisjonen til sirkelene som er på pinnene. Hvert element i listen korresponderer til en spefisikk pinne på brettet. K1 betyr at det er den initielle tilstanden, at alle sirkelene er på k1. 

var posisjon = [list: k1, k1, k1, k1]


#  draw-world funksjonen bruker "var posisjon" for å bestemme hvor hver sirkel skal bli plassert på brettet. Den bruker "positions.get(indexen)" for å plassere tilsvarende sirkel

fun draw-world():
  
  ###################### - Pinnene til Hanoi spillet -  ##################################
  put-image(pinne.img, k1, midt,
    put-image(pinne.img, k2, midt,
      put-image(pinne.img, k3, midt,
       
        ########################## - De ulike sirklene, ################################
        put-image(sirkel4.img, posisjon.get(0), midt,
          put-image(sirkel3.img, posisjon.get(1), midt,
            put-image(sirkel2.img, posisjon.get(2), midt,
              put-image(sirkel1.img, posisjon.get(3), midt,
                
                #########################################################
                put-image(rectangle(200, 200, "solid", "white"), (bhoyde), (bbredde), empty-scene(400, 200)))))))))
end


# Denne funksjonen er det som er ansvarlig for å bevege på sirklene. Det er 2 ulike parametre. chosenSirkel representerer sirkelen man vil flytte på, mens newPosition representerer den nye posisjonen, eller kjeglen, man vil flytte til. Funksjonen oppdaterer hvor sirkelen befinner seg i listen. Den bruker "positions := positions.set(index, newPosition) syntaxen for å oppdatere listen med den nye posisjonen

# I linje 111-116 begynte vi på å legge inn ulovlige trekk, men fikk dessverre ikke tid til å fullføre det

fun move(chosenSirkel, newPosition):
  if chosenSirkel.name == "sir1" block:
    posisjon := posisjon.set(0, newPosition)
    draw-world()
  else: 
    if chosenSirkel.name == "sir2" block:
      posisjon := posisjon.set(1, newPosition)
      draw-world()
    else: 
      if chosenSirkel.name == "sir3" block:
        posisjon := posisjon.set(2, newPosition)
        draw-world()
      else: 
        if chosenSirkel.name == "sir4" block:
          posisjon := posisjon.set(3, newPosition)
          draw-world() 
        else:
          ""
        end
      end
    end
  end
end


draw-world()
