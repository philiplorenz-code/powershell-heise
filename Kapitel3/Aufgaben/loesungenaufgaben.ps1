# 1:  Erstelle eine Variable mit dem Namen MeineErsteVariable mit dem Wert „Ich bin ein Text“ 
#     und gib diese im Anschluss aus.
$MeineErsteVariable = "Ich bin ein Text"
$MeineErsteVariable

# 2:  Erstelle eine neue Variable mit dem Namen MeineZweiteVariable mit Inhalt 5 und überschreibe 
#     die Variable MeineErsteVariable mit dem Wert von MeineZweiteVariable. 
#     Prüfe danach den Inhalt von MeineErsteVariable.
$MeineZweiteVariable = 5
$MeineErsteVariable = $MeineZweiteVariable
$MeineErsteVariable

# 3:  Erstelle eine Variable des Datentyps Integer mit dem Wert 4.5 – was beobachtest du?
[Int]$var = 4.9 # In PowerShell wird das Dezimaltrennzeichen mit einem Punkt dargestellt, statt dem Komma!
$var # ACHTUNG: Wir erzwingen den Datentyp Int. Int sind Ganzzahlen und können keine Nachkommastellen darstellen! Deswegen wird der Wert auf 5 gerundet! 

# 4:  Ändere den Datentyp dieser Variable auf String
$var.GetType()
[String]$var = $var

# 5:  Prüfe, ob die Variable den richtigen Datentyp erhalten hat
$var.GetType()

# 6:  Erstelle ein Array mit 10 Werten vom Typ Integer
$array = @()
$array += 13
$array += 1234
$array += 11
$array += 176
$array += 1678
$array += 1456
$array += 1234
$array += 17
$array += 12
$array += 121
$array

# 7:  Erstelle ein Telefonbuch mit dem hierfür am besten geeignetsten Datentypen
$Telefonbuch = @{}
$Telefonbuch.Add("01707019322", "Philip Lorenz")
$Telefonbuch.Add("01707126522", "Pizzaservice")
$Telefonbuch.Add("01707123474", "Wolfgang Windows")
$Telefonbuch.Add("01702359122", "Lina Linux")
$Telefonbuch.Add("01707023532", "Peter PowerShell")

# Hashtable bietet hier eine gute Möglichkeit! Die Reihenfolge der Objekte ist eher uninteressant. Wichtig ist hier, dass es einen eindeutigen
# Schlüssel gibt! In diesem Fall ist das die Telefonnummer. Über diese kann man den Besitzer des Anschlusses ermitteln.

#>